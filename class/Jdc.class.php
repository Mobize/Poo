<?php
class Jdc extends Model {

	private $id;
	private $name;
	private $content;
	private $picture;
	private $creation_date;

	/* Getters */
    public function getId() {
        return $this->id;
    }
    public function getName() {
        return ucfirst($this->name);
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
    public function setName($name) {
        $this->name = $name;
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
    }
}