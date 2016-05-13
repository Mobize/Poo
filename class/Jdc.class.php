<?php
class Jdc extends Model {

	private $id;
	private $author;
    private $title;
	private $content;
	private $picture;
	private $creation_date;

	/* Getters */
    public function getId() {
        return $this->id;
    }
    public function getAuthor() {
        return ucfirst($this->author);
    }
    public function getTitle() {
        return ucfirst($this->title);
    }
    public function getContent() {
        return nl2br($this->content);
    }
    public function getPicture() {
        return $this->picture;
    }
    public function getCreationDate() {
        return $this->creation_date;
    }

    /* Setters */
	public function setId($id) {
        $this->id = $id;
    }
    public function setAuthor($author) {
        return ucfirst($this->author);
    }
    public function setTitle($title) {
        return ucfirst($this->title);
    }
    public function setContent($content) {
        $this->content = $content;
    }
    public function setPicture($picture) {
        $this->picture = $picture;
    }
    public function setCreationDate($creation_date) {
        $this->creation_date = $creation_date;
    }

    public function displayJdc() {
        $properties = get_object_vars($this);
        //echo Utils::debug($properties);
        foreach($properties as $key => $value) {
            echo ucfirst($key).' : '.$value.'<br>';
        }
        echo '<hr>';
    }
}