
<?php
	session_start();
include "../../db.php";

if(isset($_POST['sub'])){

$name = $_POST['name'];
$vno = $_POST['vno'];
$email = $_POST['email'];
$phonenumber =$_POST['phonenumber'];
$address =  $_POST['address'];
$landmark = $_POST['landmark'];
$price = $_POST['price'];

$query = "INSERT INTO orders(name,contact,email,address,landmark,vno,price) VALUES ('$name','$phonenumber'
,'$email','$address','$landmark','$vno','$price')";
$res=mysqli_query($connect,$query);

if ($res) {
     ?>
    <script type="text/javascript">
      alert('Order Requested');
    </script>
    <?php
   }else{
    echo("Error description: " . mysqli_error($connect));
   }
}

?>









<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Order Now</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
				<a class="navbar-brand" href="#">C</a>
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
						<em class="fa fa-envelope"></em><span class="label label-danger">15</span>
					</a>
						<ul class="dropdown-menu dropdown-messages">
							<li>
								<div class="dropdown-messages-box"><a href="profile.html" class="pull-left">
									<img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Username</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			
			<li><a href="index.html"><em class="fa fa-dashboard">&nbsp;</em> Account Dashboard</a></li>
			<li><a href="widgets.html"><em class="fa fa-calendar">&nbsp;</em> Orders</a></li>
			<li><a href="elements.html"><em class="fa fa-bar-chart">&nbsp;</em> Account Information</a></li>
<!--			<li><a href=><em class="fa fa-toggle-off">&nbsp;</em> UI Elements</a></li>-->
			<li><a href="panels.html"><em class="fa fa-clone">&nbsp;</em> Address Book &amp; Previous Orders</a></li>
				
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="#">
						<span class="fa fa-arrow-right">&nbsp;</span> Sub Item 1
					</a></li>
					<li><a class="" href="#">
						<span class="fa fa-arrow-right">&nbsp;</span> Sub Item 2
					</a></li>
					<li><a class="" href="#">
						<span class="fa fa-arrow-right">&nbsp;</span> Sub Item 3
					</a></li>
				</ul>
			</li>
			<li><a href="login.html"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Order Now</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Order Now</h1>
			</div>
		</div><!--/.row-->

		
			
				<div class="col-lg-6">
						
					<div class="panel-body">
						<form class="form-horizontal" action="widgets.php" method="post">
							<fieldset>
                                
                                <div class="form-group">
									<label class="col-md-3 control-label" for="name">Today's Price</label>
									<div class="col-md-9">
										<input id="price" name="price" type="text" placeholder="Price " value="76" readonly=True class="form-control">
									</div>
								</div>
								<!-- Name input-->
								<div class="form-group">
									<label class="col-md-3 control-label" for="name">Name</label>
									<div class="col-md-9">
										<input id="name" name="name" type="text" placeholder="Your name" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label" for="name">Email</label>
									<div class="col-md-9">
										<input id="name" name="email" type="email" placeholder="Email" class="form-control">
									</div>
								</div>
                                <div class="form-group">
									<label class="col-md-3 control-label" for="name">Vehicle Number</label>
									<div class="col-md-9">
										<input id="veh" name="vno" type="text" placeholder="Your vehicle number" class="form-control">
									</div>
								</div>
							     <div class="form-group">
									<label class="col-md-3 control-label" for="email">Address</label>
									<div class="col-md-9">
										<input id="email" name="address" type="text" placeholder="Your Location" class="form-control">
									</div>
								</div>
                                <div class="form-group">
									<label class="col-md-3 control-label" for="email">Landmark</label>
									<div class="col-md-9">
										<input id="email" name="landmark" type="text" placeholder="Any Landmark" class="form-control">
									</div>
								</div>
								<!-- Email input-->
								
								
								<!-- Message body -->
								<div class="form-group">
									<label class="col-md-3 control-label" for="message">Contact Number</label>
									<div class="col-md-9">
										<input class="form-control" type="text" id="message" name="phonenumber" placeholder="Please enter your Contact No" ></input>
									</div>
								</div>
                            
								
								<!-- Form actions -->
								
									<div class="form-group form-button">
                                <input type="submit" name="sub" id="signup" class="form-submit" />
                            </div>
								
							</fieldset>
						</form>
					</div>
				</div>
			</div><!--/.col-->
			<div class="col-sm-12">
				<p class="back-link">Lumino Theme by <a href="https://www.medialoot.com">Medialoot</a></p>
			</div>
		</div><!--/.row-->
	</div>	<!--/.main-->
	  

<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	
</body>
</html>
