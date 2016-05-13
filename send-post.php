<?php
require_once 'config/config.conf.php';

try {

	Utils::debug($_POST);

	$post = new Post();

	$errors = array();

	if (!empty($_POST)) {

		foreach($_POST as $key => $value) {

			try {
				if (property_exists($post, $key)) {
					$post->$key = $value;
				}
			} catch (Exception $e) {
				$errors[$key] = $e->getMessage();
			}
		}

		Utils::debug($errors);

		if (empty($errors)) {

			Utils::debug($post);

			$insert_id = $post->save();
		}
	}
	//$last_post = Db::selectOne('SELECT * FROM post LIMIT 1');



} catch(Exception $e) {
	echo $e->getMessage();
}
?>
<form method="POST">
<?php
foreach($post->getProperties() as $field) {
	echo '<label>'.ucfirst($field).'</label><input name="'.$field.'" type="text"><br>';
}
?>
	<input type="submit" value="OK">
</form>