<?php

class Post extends Model {

	private $id;
	private $author;
	private $title;
	private $content;
	private $picture;
	private $rating;
	private $status;
	private $creation_date;

	public function displayPost() {
        $properties = get_object_vars($this);
        //echo Utils::debug($properties);
        foreach($properties as $key => $value) {
            echo ucfirst($key).' : '.$value.'<br>';
        }
    }

	/* Getters */
	public function getId() {
		return $this->id;
	}
	public function getAuthor() {
		return ucwords($this->author);
	}
	public function getTitle() {
		return ucfirst($this->title);
	}
	public function getContent() {
		return nl2br($this->content);
	}
	public function getPicture() {
		$picture = 'img/default-post.png';
		if (!empty($this->picture)) {
			$picture_path = 'img/'.$this->picture;
			if (file_exists($picture_path)) {
				return $picture_path;
			}
		}
		return $picture;
	}
	public function getRating() {
		return $this->rating;
	}
	public function getStatus() {
		return $this->status;
	}
	public function getCreationDate($format = 'd-m-Y') {
		return date('d-m-Y', strtotime($this->creation_date));
	}

	/* Setters */
	public function setId($id) {
		$this->id = $id;
	}
	public function setAuthor($author) {
		if (empty($author) || strlen($author) > 100) {
			throw new Exception('Post author must not be empty and 100 chars max');
		}
		$this->author = $author;
	}
	public function setTitle($title) {
		if (empty($title) || strlen($title) > 255) {
			throw new Exception('Post title must not be empty and 255 chars max');
		}
		$this->title = $title;
	}
	public function setContent($content) {
		if (empty($content)) {
			throw new Exception('Post content must not be empty');
		}
		$this->content = $content;
	}
	public function setPicture($picture) {
		$this->picture = $picture;
	}
	public function setRating($rating) {
		$this->rating = $rating;
	}
	public function setStatus($status) {
		$this->status = $status;
	}
	public function setCreationDate($creation_date) {
		if (strtotime($creation_date) === false) {
			throw new Exception('Post date must be valid');
		}
		$this->creation_date = $creation_date;
	}

	public function save() {

		$vars = array(
			'id' => $this->id,
			'author' => $this->author,
			'title' => $this->title,
			'content' => $this->content,
			'picture' => $this->picture,
			'rating' => $this->rating,
			'status' => $this->status
		);

		return Db::insert('INSERT INTO post SET id = :id, author = :author, title = :title, content = :content, picture = :picture, rating = :rating, status = :status, creation_date = NOW()', $vars);
	}
}