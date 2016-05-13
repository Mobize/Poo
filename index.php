<?php
require_once 'config/config.conf.php';

try {

	$articles = Db::selectAll('SELECT * FROM posts LIMIT 5');

	echo Utils::debug($articles);

	echo '<hr>';

	$article = Db::selectOne('SELECT * FROM posts WHERE id = :id', array(
		':id' => 23
	));

	echo Utils::debug($article);


} catch(Exception $e) {
	echo $e->getMessage();
}