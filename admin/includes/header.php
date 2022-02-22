<?php
session_start();
if (!isset($_SESSION['idhotel'])) {
	header("location:../login.html");
}
?>

<!DOCTYPE html>
<html>

<head>
	<title>Online Exam System</title>
	<meta charset="utf-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible" />
	<meta content="VirtualX is fully automated system which can significantly help your organization to improve the efficiency when it comes to conducting online examinations." name="description" />
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="telephone=no" name="format-detection" />
	<meta content="date=no" name="format-detection" />
	<meta content="address=no" name="format-detection" />
	<meta content="email=no" name="format-detection" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/fav.ico" id="favicon" />
	<link rel="stylesheet" media="all" href="assets/css/style.css" />
	<script src="assets/js/demo.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<meta name="action-cable-url" content="/cable" />
	<style>
		/* width */
		::-webkit-scrollbar {
			width: 10px;
		}

		/* Track */
		::-webkit-scrollbar-track {
			box-shadow: inset 0 0 5px grey;
			border-radius: 10px;
		}

		/* Handle */
		::-webkit-scrollbar-thumb {
			background: #37474f;
			;
			border-radius: 10px;
		}

		/* Handle on hover */
		::-webkit-scrollbar-thumb:hover {
			background: green;
		}
		.client-logo {
			width: 100%;
			height: auto;
			margin-top: -10px;
		}
	</style>
</head>

<body>
	<div class="viewport">
		<header class="header">
			<div class="page-header navbar navbar-fixed-top page-header-fixed">
				<div class="page-header-inner">
					<div class="client-logo">
						<a href="dashboard.php">
							<h1>Online Examination System</h1>
						</a>
					</div>
					<button class="navbar-toggle offcanvas-toggle" data-target="#js-bootstrap-offcanvas" data-toggle="offcanvas" type="button">
						<span class="sr-only">Toggle Button</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="top-menu">
						<ul class="nav navbar-nav pull-right">
							<li class="dropdown notifications-menu"><a aria-expanded="true" class="dropdown-toggle notif-count-zero" data-toggle="dropdown" href="#">
									<i class="fa fa-bell-o"></i></a></li>
							<li class="dropdown dropdown-user">
								<a class="dropdown-toggle" href="../logout.php">
									<img class="img-circle" src="assets/images/admin.png" alt="Default profile" />
									<span class="username username-hide-on-mobile">Logout</span></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</header>
		<div class="page-container">