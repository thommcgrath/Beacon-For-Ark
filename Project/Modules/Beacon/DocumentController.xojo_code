#tag Class
Protected Class DocumentController
	#tag Method, Flags = &h0
		Function Busy() As Boolean
		  Return Self.mActiveThread <> Nil And Self.mActiveThread.State <> Thread.NotRunning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanWrite() As Boolean
		  If Self.mDocumentURL.Scheme = Beacon.DocumentURL.TypeWeb Then
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Document As Beacon.Document, WithIdentity As Beacon.Identity)
		  Self.mDocumentURL = Beacon.DocumentURL.TypeTransient + "://" + Document.DocumentID + "?name=" + Beacon.URLEncode(Document.Title)
		  Self.mLoaded = True
		  Self.mDocument = Document
		  Self.mIdentity = WithIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(URL As Beacon.DocumentURL, WithIdentity As Beacon.Identity)
		  Self.mDocumentURL = URL
		  Self.mIdentity = WithIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(WithIdentity As Beacon.Identity)
		  Self.Constructor(Beacon.DocumentURL.TypeTransient + "://" + Beacon.CreateUUID, WithIdentity)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete()
		  If Self.Busy Then
		    Return
		  End If
		  
		  Self.mActiveThread = New Thread
		  Self.mActiveThread.Priority = Thread.HighPriority
		  AddHandler Self.mActiveThread.Run, WeakAddressOf Thread_Delete
		  Self.mActiveThread.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CallLater.Cancel(Self.mLoadStartedCallbackKey)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Document() As Beacon.Document
		  Return Self.mDocument
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Document(Assigns Replacement As Beacon.Document)
		  Self.mDocument = Replacement
		  Self.mLoaded = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ErrorMessageFromSocket(Socket As SimpleHTTP.SynchronousHTTPSocket) As String
		  Dim Message As String = "The error reason is unknown"
		  If Socket.LastContent <> Nil Then
		    Try
		      Message = Socket.LastContent
		      Dim Dict As Dictionary = Beacon.ParseJSON(Message)
		      If Dict.HasKey("message") Then
		        Message = Dict.Value("message")
		      ElseIf Dict.HasKey("description") Then
		        Message = Dict.Value("description")
		      End If
		    Catch Err As RuntimeException
		      
		    End Try
		  ElseIf Socket.LastException <> Nil Then
		    Message = Socket.LastException.Explanation
		  End If
		  Return Message
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load()
		  If Self.Loaded Then
		    RaiseEvent Loaded(Self.mDocument)
		    Return
		  End If
		  
		  If Self.Busy Then
		    Return
		  End If
		  
		  Self.mActiveThread = New Thread
		  AddHandler Self.mActiveThread.Run, WeakAddressOf Thread_Load
		  Self.mActiveThread.Run
		  
		  Self.mLoadStartedCallbackKey = CallLater.Schedule(1500, WeakAddressOf TriggerLoadStarted)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Loaded() As Boolean
		  Return Self.mLoaded
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  If Self.mDocument <> Nil Then
		    Return Self.mDocument.Title
		  Else
		    Return Self.mDocumentURL.Name
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  If Self.Busy Or Self.Loaded = False Then
		    Return
		  End If
		  
		  If Self.mDocument.Title <> "" Then
		    Self.mDocumentURL.Name = Self.mDocument.Title
		  End If
		  Self.WriteTo(Self.mDocumentURL, True)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SaveACopy(Destination As Beacon.DocumentURL) As Beacon.DocumentController
		  // Like Save As, but the destination is not saved
		  If Self.Loaded = False Then
		    Return Nil
		  End If
		  
		  Dim Controller As New Beacon.DocumentController(Self.mDocument, Self.mIdentity)
		  Controller.mDocumentURL = Destination
		  If Self.mDocument.Title <> "" Then
		    Destination.Name = Self.mDocument.Title
		  End If
		  Controller.WriteTo(Destination, False)
		  Return Controller
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveAs(Destination As Beacon.DocumentURL)
		  If Self.Busy Or Self.Loaded = False Then
		    Return
		  End If
		  
		  Self.mDocumentURL = Destination
		  Self.Save()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Thread_Delete(Sender As Thread)
		  #Pragma Unused Sender
		  
		  If Not Self.CanWrite Then
		    Call CallLater.Schedule(0, AddressOf TriggerDeleteError, "Document is not writable")
		    Return
		  End If
		  
		  Select Case Self.mDocumentURL.Scheme
		  Case Beacon.DocumentURL.TypeCloud
		    Dim Socket As New SimpleHTTP.SynchronousHTTPSocket
		    Socket.RequestHeader("Authorization") = "Session " + Preferences.OnlineToken
		    Socket.Send("DELETE", Self.mDocumentURL.WithScheme("https").URL)
		    If Socket.LastHTTPStatus = 200 Then
		      Call CallLater.Schedule(0, AddressOf TriggerDeleteSuccess)
		    Else
		      Dim Message As String = Self.ErrorMessageFromSocket(Socket)
		      Call CallLater.Schedule(0, AddressOf TriggerDeleteError, Message)
		    End If
		  Case Beacon.DocumentURL.TypeLocal
		    Try
		      Dim File As New FolderItem(Self.mDocumentURL.Path)
		      If File.Exists Then
		        File.Delete  
		      End If
		      Call CallLater.Schedule(0, AddressOf TriggerDeleteSuccess)
		    Catch Err As RuntimeException
		      Call CallLater.Schedule(0, AddressOf TriggerDeleteError, Err.Explanation)
		    End Try
		  Case Beacon.DocumentURL.TypeTransient
		    Dim Path As String = Self.mDocumentURL.URL.SubString(Beacon.DocumentURL.TypeTransient.Length + 3)
		    Try
		      Dim File As FolderItem = SpecialFolder.Temporary.Child(Path + BeaconFileTypes.BeaconDocument.PrimaryExtension)
		      If File.Exists Then
		        File.Delete
		      End If
		      Call CallLater.Schedule(0, AddressOf TriggerDeleteSuccess)
		    Catch Err As RuntimeException
		      Call CallLater.Schedule(0, AddressOf TriggerDeleteError, Err.Explanation)
		    End Try
		  Else
		    Call CallLater.Schedule(0, AddressOf TriggerDeleteError, "Unknown storage scheme " + Self.mDocumentURL.Scheme)
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Thread_Load(Sender As Thread)
		  #Pragma Unused Sender
		  
		  Dim FileContent As MemoryBlock
		  Dim ClearPublishStatus As Boolean
		  
		  Select Case Self.mDocumentURL.Scheme
		  Case Beacon.DocumentURL.TypeCloud
		    // authenticated api request
		    Dim Socket As New SimpleHTTP.SynchronousHTTPSocket
		    Socket.RequestHeader("Accept-Encoding") = "gzip"
		    Socket.RequestHeader("Authorization") = "Session " + Preferences.OnlineToken
		    Socket.Send("GET", Self.mDocumentURL.WithScheme("https").URL)
		    If Socket.LastHTTPStatus >= 200 Then
		      FileContent = Socket.LastContent
		    Else
		      Dim Message As String = Self.ErrorMessageFromSocket(Socket)
		      Call CallLater.Schedule(0, AddressOf TriggerLoadError, Message)
		    End If
		  Case Beacon.DocumentURL.TypeWeb
		    // basic https request
		    Dim Socket As New SimpleHTTP.SynchronousHTTPSocket
		    Socket.RequestHeader("Accept-Encoding") = "gzip"
		    Socket.Send("GET", Self.mDocumentURL.URL)
		    If Socket.LastHTTPStatus >= 200 Then
		      FileContent = Socket.LastContent
		      ClearPublishStatus = True
		    Else
		      Dim Message As String = Self.ErrorMessageFromSocket(Socket)
		      Call CallLater.Schedule(0, AddressOf TriggerLoadError, Message)
		    End If
		  Case Beacon.DocumentURL.TypeLocal
		    // just a local file
		    Dim Success As Boolean
		    Dim Message As String = "Could not load data from file"
		    Try
		      Dim File As FolderItem
		      If Self.mDocumentURL.HasParam("saveinfo") Then
		        File = GetFolderItemFromSaveInfo(Self.mDocumentURL.Param("saveinfo"))
		      Else
		        File = New FolderItem(Self.mDocumentURL.Path)
		      End If
		      If File <> Nil And File.Exists Then
		        FileContent = File.Read()
		        Self.mFileRef = File // Just to keep the security scoped bookmark open
		        Success = True
		      End If
		    Catch Err As RuntimeException
		      Message = Err.Explanation
		    End Try
		    
		    If Not Success Then
		      Call CallLater.Schedule(0, AddressOf TriggerLoadError, Message)
		      Return
		    End If
		  Case Beacon.DocumentURL.TypeTransient
		    // just a local file stored in the the temp directory
		    Dim File As FolderItem = SpecialFolder.Temporary.Child(Self.mDocumentURL.Path + BeaconFileTypes.BeaconDocument.PrimaryExtension)
		    If File.Exists Then
		      FileContent = File.Read()
		    Else
		      Dim Temp As New Beacon.Document
		      FileContent = Beacon.GenerateJSON(Temp.ToDictionary(Self.mIdentity))
		    End If
		  Else
		    Return
		  End Select
		  
		  If FileContent = Nil Then
		    Call CallLater.Schedule(0, AddressOf TriggerLoadError, "File is empty")
		    Return
		  End If
		  
		  Dim StringContent As String
		  If FileContent.Size > 2 And FileContent.UInt8Value(0) = &h1F And FileContent.UInt8Value(1) = &h8B Then
		    #if Not TargetiOS
		      Dim Compressor As New _GZipString
		      Dim Decompressed As String = Compressor.Decompress(FileContent)
		      If Decompressed <> "" Then
		        StringContent = Decompressed.DefineEncoding(Encodings.UTF8)
		      Else
		        Call CallLater.Schedule(0, AddressOf TriggerLoadError, "Unable to decompress file")
		        Return
		      End If
		    #else
		      Call CallLater.Schedule(0, AddressOf TriggerLoadError, "Compressed files are not supported in this version")
		      Return
		    #endif
		  Else
		    StringContent = FileContent
		  End If
		  
		  Dim Document As Beacon.Document = Beacon.Document.FromText(StringContent, Self.mIdentity)
		  If Document = Nil Then
		    Call CallLater.Schedule(0, AddressOf TriggerLoadError, "Unable to parse document")
		    Return
		  End If
		  
		  If Document.Title.Trim = "" Then
		    Document.Title = Self.Name
		  End If
		  If ClearPublishStatus Then
		    Document.IsPublic = False
		  End If
		  
		  Self.mDocument = Document
		  Self.mLoaded = True
		  Call CallLater.Schedule(0, AddressOf TriggerLoadSuccess)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Thread_Upload(Sender As Thread)
		  #Pragma Unused Sender
		  
		  Dim JSON As String = Beacon.GenerateJSON(Self.mDocument.ToDictionary(Self.mIdentity))
		  Dim Body As MemoryBlock
		  Dim Headers As New Dictionary
		  Headers.Value("Authorization") = "Session " + Preferences.OnlineToken
		  
		  Dim Compressor As New _GZipString
		  Compressor.UseHeaders = True
		  
		  Dim Bytes As MemoryBlock = Compressor.Compress(JSON, _GZipString.DefaultCompression)
		  Headers.Value("Content-Encoding") = "gzip"
		  Body = Bytes
		  
		  Dim Socket As New SimpleHTTP.SynchronousHTTPSocket
		  For Each Entry As DictionaryMember In Headers.Members
		    Socket.RequestHeader(Entry.Key) = Entry.Value
		  Next
		  Socket.SetRequestContent(Body, "application/json")
		  Socket.Send("POST", Self.mDestination.WithScheme("https").URL)
		  If Socket.LastHTTPStatus = 200 Or Socket.LastHTTPStatus = 201 Then
		    If Self.mClearModifiedOnWrite Then
		      Self.mDocument.Modified = False
		      Self.mDocumentURL = Self.mDestination
		    End If
		    Call CallLater.Schedule(0, AddressOf TriggerWriteSuccess)
		  Else
		    Dim Message As String = Self.ErrorMessageFromSocket(Socket)
		    Call CallLater.Schedule(0, AddressOf TriggerWriteError, Message)
		  End If
		  Self.mDestination = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Thread_Write(Sender As Thread)
		  #Pragma Unused Sender
		  
		  Dim File As New FolderItem(Self.mDestination.Path, FolderItem.PathTypeURL)
		  Try
		    Dim Dict As Dictionary = Self.mDocument.ToDictionary(App.IdentityManager.CurrentIdentity)
		    Dim Compress As Boolean = Self.mDocument.UseCompression
		    Dim Content As String = Beacon.GenerateJSON(Dict, Not Compress)
		    If Compress Then
		      Dim Compressor As New _GZipString
		      Compressor.UseHeaders = True
		      Content = Compressor.Compress(Content)
		    End If
		    File.Write(Content)
		    
		    If Self.mClearModifiedOnWrite Then
		      If Self.mDocument <> Nil Then
		        Self.mDocument.Modified = False
		      End If
		      
		      // Update the document url to regenerate saveinfo/bookmarks
		      Self.mDocumentURL = Beacon.DocumentURL.URLForFile(File)
		    End If
		    
		    Call CallLater.Schedule(0, AddressOf TriggerWriteSuccess)
		  Catch Err As RuntimeException
		    Dim Reason As String = Err.Explanation
		    If Reason = "" Then
		      Dim Info As Introspection.TypeInfo = Introspection.GetType(Err)
		      If Info <> Nil Then
		        Reason = Info.Name + " in DocumentController.WriteTo"
		      End If
		    End If
		    If Reason = "" Then
		      Reason = "Unknown DocumentController.WriteTo error"
		    End If
		    
		    Call CallLater.Schedule(0, AddressOf TriggerWriteError, Reason)
		  End Try
		  Self.mDestination = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TriggerDeleteError(Reason As Auto)
		  RaiseEvent DeleteError(Reason)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TriggerDeleteSuccess()
		  RaiseEvent DeleteSuccess
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TriggerLoadError(Reason As Auto)
		  CallLater.Cancel(Self.mLoadStartedCallbackKey)
		  
		  RaiseEvent LoadError(Reason)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TriggerLoadStarted()
		  RaiseEvent LoadStarted()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TriggerLoadSuccess()
		  CallLater.Cancel(Self.mLoadStartedCallbackKey)
		  
		  RaiseEvent Loaded(Self.mDocument)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TriggerWriteError(Reason As Auto)
		  RaiseEvent WriteError(Reason)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TriggerWriteSuccess()
		  RaiseEvent WriteSuccess
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URL() As DocumentURL
		  Return Self.mDocumentURL
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub WriteTo(Destination As Beacon.DocumentURL, ClearModified As Boolean)
		  If Self.Busy Or Self.Loaded = False Or Destination.Scheme = Beacon.DocumentURL.TypeWeb Then
		    Return
		  End If
		  
		  Self.mClearModifiedOnWrite = ClearModified
		  Self.mDestination = Destination
		  
		  Select Case Destination.Scheme
		  Case Beacon.DocumentURL.TypeCloud
		    Self.mActiveThread = New Thread
		    Self.mActiveThread.Priority = Thread.LowestPriority
		    AddHandler Self.mActiveThread.Run, WeakAddressOf Thread_Upload
		    Self.mActiveThread.Run
		  Case Beacon.DocumentURL.TypeLocal
		    Self.mActiveThread = New Thread
		    Self.mActiveThread.Priority = Thread.LowestPriority
		    AddHandler Self.mActiveThread.Run, WeakAddressOf Thread_Write
		    Self.mActiveThread.Run
		  End Select
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DeleteError(Reason As String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DeleteSuccess()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Loaded(Document As Beacon.Document)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LoadError(Reason As String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LoadProgress(BytesReceived As Int64, BytesTotal As Int64)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LoadStarted()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WriteError(Reason As String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WriteSuccess()
	#tag EndHook


	#tag Property, Flags = &h21
		Private mActiveThread As Thread
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mClearModifiedOnWrite As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDestination As Beacon.DocumentURL
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDocument As Beacon.Document
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDocumentURL As Beacon.DocumentURL
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mFileRef As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIdentity As Beacon.Identity
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLoaded As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLoadStartedCallbackKey As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUploadThread As Thread
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
