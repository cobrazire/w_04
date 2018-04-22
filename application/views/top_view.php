<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Pacif Trails Index</title>
	<link rel="stylesheet" href="<?php echo base_url(); ?>css/pacific.css">
</head>
<body id="wrapper">
	<h1>Pacific Trails Resort</h1>
	<div class="col">
		<div class="left">
			<nav>
				<span class="boldtext"><a href="<?php echo base_url(); ?>">Home</a></span><br>
				<span class="boldtext"><a href="<?php echo site_url('home/yurts'); ?>">Yurts</a></span><br>
				<span class="boldtext"><a href="<?php echo site_url('home/activities'); ?>">Activities</a></span><br>
				<span class="boldtext"><a href="<?php echo site_url('home/reservations'); ?>">Reservations</a></span><br>
				<span class="boldtext"><a href="<?php echo site_url('home/myreservations'); ?>">My Reservations</a></span><br>
				<span class="boldtext"><a href="<?php echo site_url('home/shop'); ?>">Shop</a></span><br>
			</nav>
		</div>