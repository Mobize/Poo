<?php
class Utils {

	public static function debug($array) {
		return '<pre>'.print_r($array, true).'</pre>';
	}

	/*
		Transforme une chaîne du type "setCreation_date" en "setCreationDate"
	*/
	public static function getCamelCase($str) {
		return lcfirst(str_replace(' ', '', ucwords(str_replace('_', ' ', $str))));
	}

}