<?php

namespace BeaconAPI;

class Creature extends \BeaconBlueprint {
	const TAMING_METHOD_NONE = 'None';
	const TAMING_METHOD_KNOCKOUT = 'Knockout';
	const TAMING_METHOD_PASSIVE = 'Passive';
	const TAMING_METHOD_TRAP = 'Trap';
	
	protected $tamable;
	protected $taming_diet_id;
	protected $taming_method;
	protected $tamed_diet_id;
	protected $rideable;
	protected $carryable;
	protected $breedable;
	protected $incubation_time;
	protected $mature_time;
	protected $stats;
	protected $used_stats;
	protected $mating_interval_min;
	protected $mating_interval_max;
	
	protected static function SQLColumns() {
		$columns = parent::SQLColumns();
		$columns[] = 'tamable';
		$columns[] = 'taming_diet';
		$columns[] = 'taming_method';
		$columns[] = 'tamed_diet';
		$columns[] = 'rideable';
		$columns[] = 'carryable';
		$columns[] = 'breedable';
		$columns[] = 'EXTRACT(epoch FROM incubation_time) AS incubation_time';
		$columns[] = 'EXTRACT(epoch FROM mature_time) AS mature_time';
		$columns[] = '(SELECT array_to_json(array_agg(row_to_json(template))) FROM (SELECT stat_index, base_value, per_level_wild_multiplier, per_level_tamed_multiplier, add_multiplier, affinity_multiplier FROM creature_stats WHERE creature_stats.creature_id = creatures.object_id ORDER BY stat_index) AS template) AS stats';
		$columns[] = 'EXTRACT(epoch FROM mating_interval_min) AS mating_interval_min';
		$columns[] = 'EXTRACT(epoch FROM mating_interval_max) AS mating_interval_max';
		$columns[] = 'used_stats';
		return $columns;
	}
	
	protected static function TableName() {
		return 'creatures';
	}
	
	protected function GetColumnValue(string $column) {
		switch ($column) {
		case 'tamable':
			return $this->tamable;
		case 'taming_diet':
			return $this->taming_diet_id;
		case 'taming_method':
			return $this->taming_method;
		case 'tamed_diet':
			return $this->tamed_diet_id;
		case 'rideable':
			return $this->rideable;
		case 'carryable':
			return $this->carryable;
		case 'breedable':
			return $this->breedable;
		case 'incubation_time':
			return $this->incubation_time;
		case 'mature_time':
			return $this->mature_time;
		case 'stats':
			return $this->stats;
		case 'mating_interval_min':
			return $this->mating_interval_min;
		case 'mating_interval_max':
			return $this->mating_interval_max;
		case 'used_stats':
			return $this->used_stats;
		default:
			return parent::GetColumnValue($column);
		}
	}
	
	public function ConsumeJSON(array $json) {
		parent::ConsumeJSON($json);
		
		if (array_key_exists('tamable', $json)) {
			if (is_bool($json['tamable'])) {
				$this->tamable = $json['tamable'];
			} else {
				throw new \Exception('Tamable must be a boolean');
			}
		} elseif (array_key_exists('tameable', $json)) {
			if (is_bool($json['tameable'])) {
				$this->tamable = $json['tameable'];
			} else {
				throw new \Exception('Tameable must be a boolean');
			}
		}
		if (array_key_exists('taming_diet', $json)) {
			$diet_id = $json['taming_diet'];
			if (is_null($diet_id) || \BeaconCommon::IsUUID($diet_id)) {
				$this->taming_diet_id = $diet_id;
			} else {
				throw new \Exception('Taming diet must be null or v4 UUID');
			}
		}
		if (array_key_exists('taming_method', $json)) {
			$method = $json['taming_method'];
			if ($method === self::TAMING_METHOD_NONE || $method === self::TAMING_METHOD_KNOCKOUT || $method === self::TAMING_METHOD_PASSIVE || $method === self::TAMING_METHOD_TRAP) {
				$this->taming_method = $method;
			} else {
				throw new \Exception('Taming method must be one of ' . \BeaconCommon::ArrayToEnglish(array(self::TAMING_METHOD_NONE, self::TAMING_METHOD_KNOCKOUT, self::TAMING_METHOD_PASSIVE, self::TAMING_METHOD_TRAP), 'or'));
			}
		}
		if (array_key_exists('rideable', $json)) {
			if (is_bool($json['rideable'])) {
				$this->rideable = $json['rideable'];
			} else {
				throw new \Exception('Rideable must be a boolean');
			}
		}
		if (array_key_exists('carryable', $json)) {
			if (is_bool($json['carryable'])) {
				$this->carryable = $json['carryable'];
			} else {
				throw new \Exception('Carryable must be a boolean');
			}
		}
		if (array_key_exists('breedable', $json)) {
			if (is_bool($json['breedable'])) {
				$this->breedable = $json['breedable'];
			} else {
				throw new \Exception('Breedable must be a boolean');
			}
		}
		if (array_key_exists('incubation_time', $json)) {
			if (is_int($json['incubation_time'])) {
				$this->incubation_time = $json['incubation_time'];
			} else {
				throw new \Exception('Incubation time must be a number of seconds.');
			}
		}
		if (array_key_exists('mature_time', $json)) {
			if (is_int($json['mature_time'])) {
				$this->mature_time = $json['mature_time'];
			} else {
				throw new \Exception('Mature time must be a number of seconds.');
			}
		}
		if (array_key_exists('stats', $json)) {
			if (BeaconCommon::IsAssoc($json['stats'])) {
				$this->stats = $json['stats'];
			} else {
				throw new \Exception('Stats must be a structure.');
			}
		}
		if (array_key_exists('mating_interval_min', $json)) {
			if (is_int($json['mating_interval_min'])) {
				$this->mature_time = $json['mating_interval_min'];
			} else {
				throw new \Exception('Min mating interval time must be a number of seconds.');
			}
		}
		if (array_key_exists('mating_interval_max', $json)) {
			if (is_int($json['mating_interval_max'])) {
				$this->mature_time = $json['mating_interval_max'];
			} else {
				throw new \Exception('Max mating interval time must be a number of seconds.');
			}
		}
		if (array_key_exists('used_stats', $json)) {
			if (is_int($json['used_stats'])) {
				$this->used_stats = $json['used_stats'];
			} else {
				throw new \Exception('Used stats should be an bit mask.');
			}
		}
	}
	
	protected static function FromRow(\BeaconRecordSet $row) {
		$obj = parent::FromRow($row);
		if ($obj === null) {
			return null;
		}
		$obj->tamable = $row->Field('tamable');
		$obj->taming_diet_id = $row->Field('taming_diet');
		$obj->taming_method = $row->Field('taming_method');
		$obj->tamed_diet_id = $row->Field('tamed_diet');
		$obj->rideable = $row->Field('rideable');
		$obj->carryable = $row->Field('carryable');
		$obj->breedable = $row->Field('breedable');
		$obj->incubation_time = is_null($row->Field('incubation_time')) ? null : intval($row->Field('incubation_time'));
		$obj->mature_time = is_null($row->Field('mature_time')) ? null : intval($row->Field('mature_time'));
		$obj->stats = is_null($row->Field('stats')) ? null : json_decode($row->Field('stats'), true);
		$obj->mating_interval_min = is_null($row->Field('mating_interval_min')) ? null : intval($row->Field('mating_interval_min'));
		$obj->mating_interval_max = is_null($row->Field('mating_interval_max')) ? null : intval($row->Field('mating_interval_max'));
		$obj->used_stats = is_null($row->Field('used_stats')) ? null : intval($row->Field('used_stats'));
		return $obj;
	}
	
	public function jsonSerialize() {
		$json = parent::jsonSerialize(); 
		$json['tamable'] = $this->tamable;
		$json['taming_diet_id'] = $this->taming_diet_id;
		$json['taming_method'] = $this->taming_method;
		$json['tamed_diet'] = $this->tamed_diet_id;
		$json['rideable'] = $this->rideable;
		$json['carryable'] = $this->carryable;
		$json['breedable'] = $this->breedable;
		$json['related_object_ids'] = $this->RelatedObjectIDs();
		$json['incubation_time'] = $this->incubation_time;
		$json['mature_time'] = $this->mature_time;
		$json['resource_url'] = \BeaconAPI::URL('/creature/' . urlencode($this->ObjectID()));
		$json['stats'] = $this->stats;
		$json['used_stats'] = $this->used_stats;
		$json['mating_interval_min'] = $this->mating_interval_min;
		$json['mating_interval_max'] = $this->mating_interval_max;
		return $json;
	}
	
	public function SpawnCode() {
		return 'cheat spawndino "Blueprint\'' . $this->Path() . '\'" 1 1 1 30';
	}
	
	public function Tamable() {
		return $this->tamable;
	}
	
	public function SetTamable(bool $tamable) {
		$this->tamable = $tamable;
	}
	
	public function TamingDietID() {
		return $this->taming_diet_id;
	}
	
	public function SetTamingDietID(string $taming_diet_id) {
		$this->taming_diet_id = $taming_diet_id;
	}
	
	public function TamingDiet() {
		return \BeaconDiet::GetByObjectID($this->taming_diet_id);
	}
	
	public function SetTamingDiet(\BeaconDiet $taming_diet) {
		$this->taming_diet_id = $taming_diet->ObjectID();
	}
	
	public function TamedDietID() {
		return $this->tamed_diet_id;
	}
	
	public function SetTamedDietID(string $tamed_diet_id) {
		$this->tamed_diet_id = $tamed_diet_id;
	}
	
	public function TamedDiet() {
		return \BeaconDiet::GetByObjectID($this->tamed_diet_id);
	}
	
	public function SetTamedDiet(\BeaconDiet $tamed_diet) {
		$this->tamed_diet_id = $tamed_diet->ObjectID();
	}
	
	public function TamingMethod() {
		return $this->taming_method;
	}
	
	public function SetTamingMethod(string $taming_method) {
		switch ($taming_method) {
		case self::TAMING_METHOD_NONE:
		case self::TAMING_METHOD_KNOCKOUT:
		case self::TAMING_METHOD_PASSIVE:
		case self::TAMING_METHOD_TRAP:
			$this->taming_method = $taming_method;
		}
	}
	
	public function Rideable() {
		return $this->rideable;
	}
	
	public function SetRideable(bool $rideable) {
		$this->rideable = $rideable;
	}
	
	public function Carryable() {
		return $this->carryable;
	}
	
	public function SetCarryable(bool $carryable) {
		$this->carryable = $carryable;
	}
	
	public function Breedable() {
		return $this->breedable;
	}
	
	public function SetBreedable(bool $breedable) {
		$this->breedable = $breedable;
	}
	
	public function RelatedObjectIDs() {
		$database = \BeaconCommon::Database();
		$arr = array();
		$results = $database->Query('SELECT engram_id FROM creature_engrams WHERE creature_id = $1;', $this->ObjectID());
		while (!$results->EOF()) {
			$arr[] = $results->Field('engram_id');
			$results->MoveNext();
		}
		return $arr;
	}
	
	public function IncubationTimeSeconds() {
		return $this->incubation_time;
	}
	
	public function MatureTimeSeconds() {
		return $this->mature_time;
	}
	
	public function MinMatingIntervalSeconds() {
		return $this->mating_interval_min;
	}
	
	public function MaxMatingIntervalSeconds() {
		return $this->mating_interval_max;
	}
	
	public function UsedStats() {
		return $this->used_stats;
	}
}

?>
