<?php
// authorization logic
	include ("connection.php");
	if(!empty($_POST['username']) && !empty($_POST['password'])){
		$username = $_POST['username'];
		$password = $_POST['password'];

		if(!empty($con)){
			$userreq = mysqli_query($con, "SELECT * FROM admin") ;
			$response = $userreq->fetch_assoc();
			if($response['username'] ==  $username && $response['password'] == $password){
				session_start();
				$_SESSION['auth'] = true;
				header('Location: /surgunia');
			}
		}
	}
// END authorization logic

// add folder logic 
	if (!empty($_POST['addfolder']) && !empty($_POST['flbg'])){
		$addfolder = $_POST['addfolder'];
		$flbg = $_POST['flbg'];
		print '<pre>';
		print_r($_FILES['image']['name']);
		print '</pre>';
		// mysqli_query($con, "INSERT INTO folders (name, bg_href) VALUES ('$name', '$flbg')");

	}
//END  add folder logic 

	$con->close();
?>