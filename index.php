<?php 
	require_once("php/connection.php");
// show all folders
	if(!empty($con)){
		$result_folders = mysqli_query($con, "SELECT f.* FROM folders f");
	}

	$folders = "";
	while($resmaps = $result_folders->fetch_Object()){
		$folders .= '
			<div class="grid-item item animate-box" data-animate-effect="fadeIn">
				<a href="single.php?id=' . $resmaps->id . '">
					<div class="img-wrap">
						<img src="' . $resmaps->bg_href . '" alt="" class="img-responsive">
					</div>
					<div class="text-wrap">
						<div class="text-inner">
							<div>
								<h2>' . $resmaps->name . '</h2>
								<span>72 photos</span>
							</div>
						</div>
					</div>
				</a>
			</div>
		';
	}
	$con->close();
//END  show all folders
// show authorization form 
	$auth = $_GET['auth'];
	$vasea = '';
	if(isset($auth)){
		$vasea .= "neam neam";
	}
// END show authorization form 
?>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Sergio Ghenov PH</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by gettemplates.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="gettemplates.co" />

	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<!-- <link href="https://fonts.googleapis.com/css?family=Bungee+Shade" rel="stylesheet"> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		<!-- fh5co-page -->
		<div id="fh5co-page">

			<div class="aside-toggle btn-circle">
				<a href="#"><span></span><em>About</em></a>
			</div>

			<!-- about me content -->
			<div id="fh5co-aside">
				<div class="image-bg"></div>
				<div class="overlay"></div> 
				<div class="row">
					<div class="col-md-12">
						<div id="fh5co-aside-inner">
							<div class="row" id="fh5co-bio">
								<div class="col-md-12">
									<h2>About Me <?php print $vasea; ?></h2>
								</div>
								<div class="col-md-6">
									<p>Sint, <a href="#">consectetur</a>, fugit. Sed, blanditiis. Autem quae perferendis totam provident, consequuntur inventore reiciendis vitae suscipit rerum repellendus facere voluptatem tenetur iure praesentium corrupti asperiores eos laborum debitis eaque maiores magnam nisi exercitationem sunt maxime! At eligendi deserunt, iusto natus molestias!</p>
								</div>
								<div class="col-md-6">
									<p>Quas praesentium dolore unde delectus, nemo accusantium, qui ab illum debitis assumenda tempore molestias ipsam, eveniet repellendus officiis in vel, explicabo quos necessitatibus atque doloremque. Quae maiores delectus, magnam nam.</p>
								</div>
								<div class="col-md-12 fh5co-social">
									<a href="#"><i class="icon-envelope"></i></a>
									<a href="#"><i class="icon-twitter"></i></a>
									<a href="#"><i class="icon-linkedin"></i></a>
									<a href="#"><i class="icon-instagram"></i></a>
									<a href="facebook.com"><i class="icon-google-plus"></i></a>
									
								</div>
								<div class="col-md-12 fh5co-social" style="margin-top: 40px;">
									<p>Portfolio site Photographer Sergio Ghenov<a href="index.php?auth=1"><i class="icon-unlock-alt"></i></a></p>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END about me content-->

			<div class="container-fluid" id="fh5co-image-grid">
				<div class="grid">
					<div class="grid-sizer"></div>
						<?php print $folders; ?>
				</div>
			</div>
		</div>

		<!-- jQuery -->
		<script src="js/jquery.min.js"></script>
		<!-- jQuery Easing -->
		<script src="js/jquery.easing.1.3.js"></script>
		<!-- Bootstrap -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Waypoints -->
		<script src="js/jquery.waypoints.min.js"></script>

		<!-- Magnific -->
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/magnific-popup-options.js"></script>
		<!-- Isotope & imagesLoaded -->
		<script src="js/isotope.pkgd.min.js"></script>
		<script src="js/imagesloaded.pkgd.min.js"></script>
		<!-- GSAP  -->
		<script src="js/TweenLite.min.js"></script>
		<script src="js/CSSPlugin.min.js"></script>
		<script src="js/EasePack.min.js"></script>

		<!-- MAIN JS -->
		<script src="js/main.js"></script>

	</body>
</html>

