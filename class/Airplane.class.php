<?php

class Airplane extends Vehicule {

	public $count_helix;
	public $count_wing;

	public function decoller() {
		echo 'Décollage !';
	}

	public function displayDescription() {

		parent::displayDescription();

		echo $this->count_helix.' helices <br>';
		echo $this->count_wing.' ailes<br>';
	}
}