<?php

class Vehicule {

	public $marque;
	public $modele;
	public $annee;
	public $couleur;

	public function __construct($marque = null, $modele = null, $annee = null, $couleur = null) {
		$this->marque = $marque;
		$this->modele = $modele;
		$this->annee = $annee;
		$this->couleur = $couleur;
	}

	/* GETTERS */
	public function getMarque() {
		return strtoupper($this->marque);
	}
	public function getModele() {
		return ucfirst($this->modele);
	}
	public function getAnnee() {
		return $this->annee;
	}
	public function getCouleur() {
		return $this->couleur;
	}

	public function displayDescription() {

		echo $this->getMarque().'<br>';
		echo $this->getModele().'<br>';
		echo $this->getAnnee().'<br>';
		echo $this->getCouleur().'<br>';
	}
}