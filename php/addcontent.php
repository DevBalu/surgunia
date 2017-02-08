<?php
	if(!empty($_SESSION['auth'])){
		header("Location: /surgunia/index.php");
	}
	require_once("connection.php");
	// add image in folder
	if (!empty($_POST['folders']) && !empty($_POST['imgname'])) {
		$folders = $_POST['folders'];
		$name = $_POST['imgname'];

		$image_name = '../images/' . $_FILES['img']['name'];
		if (file_exists($image_name)) {
			unlink($image_name);
		}

		if(!empty($_FILES['img']['name'])){
			move_uploaded_file($_FILES['img']['name'], $image_name);
			$image_url = $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/surgunia/images/' . $_FILES['img']['name'];
		}else{
			$image_url = "";
		}
		if(!empty($con)){
			$con->query("INSERT INTO images (folder_id, name, img_href) VALUES ('$folders', '$name', '$image_url')");
		}
	}
	//add folders
	if (!empty($_POST['namefolder']) && !empty($_FILES['flbg'])) {
		$namefolder = $_POST['namefolder'];

		$image_name = '../images/' . $_FILES['flbg']['name'];
		if (file_exists($image_name)) {
			unlink($image_name);
		}

		if(!empty($_FILES['flbg']['name'])){
			move_uploaded_file($_FILES['flbg']['name'], $image_name);
			$image_url = $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/surgunia/images/' . $_FILES['flbg']['name'];
		}else{
			$image_url = "";
		}
		if(!empty($con)){
			mysqli_query($con, "INSERT INTO folders (name, bg_href) VALUES ('$namefolder', '$image_url')");
		}
	}

	header("Location: /surgunia/index.php");

	// print'<pre>';
	// print_r($namefolder . '<br>' . $image_url);
	// print_r($_FILES);
	// print_r($_SERVER);
	// print'</pre>';
?>