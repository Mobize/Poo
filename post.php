<?php
require_once 'config/config.conf.php';

try {

	$last_posts = Post::getList('SELECT * FROM post ORDER BY creation_date DESC LIMIT 3');

	Utils::debug($last_posts);

	$id = 1;
	$post = Post::get('SELECT * FROM post WHERE id = :id', array(':id' => $id));

	Utils::debug($post);

	// Afficher les différentes informations en utilisant les getters
	echo '<h1>'.$post->getTitle().'</h1>';
	echo '<h3><em>By '.$post->getAuthor().'</em></h3>';
	echo '<blockquote>'.$post->getContent().'</blockquote>';

} catch(Exception $e) {
	echo $e->getMessage();
}