<?php
	
require(dirname(__FILE__, 3) . '/framework/loader.php');

$session = BeaconSession::GetFromCookie();
if (is_null($session)) {
	BeaconCommon::Redirect('/account/login?return=' . urlencode('/account/#omni'));
} else {
	BeaconCommon::Redirect('/account/#omni');
}

?>