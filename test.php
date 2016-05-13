<?php
require_once 'config/config.conf.php';

#### VEHICULE ####

$voiture1 = new Vehicule();
$voiture1->marque = 'bmw';
$voiture1->modele = '320i';
$voiture1->annee = '2002';
$voiture1->couleur = 'noir';
$voiture1->displayDescription();

echo '<hr>';

$voiture2 = new Vehicule('peugeot', '106', '2011', 'rouge');
$voiture2->displayDescription();

echo '<hr>';

#### AIRPLANE ####

$airplane1 = new Airplane('boeing', '747', '1985', 'blanc');
$airplane1->count_helix = 2;
$airplane1->count_wing = 2;
$airplane1->displayDescription();
$airplane1->decoller();

echo '<hr>';

#### JDC ####

// On simule un resultat de requete BDD
$result = array(
	'id' => '123',
	'name' => 'bob',
	'content' => 'Lorem ipsum...',
	'picture' => 'toto.png',
	'creation_date' => '2015-11-10 13:10:00'
);

$jdc = new Jdc($result);

echo $jdc->displayJdc();



