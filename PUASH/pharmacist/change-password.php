<?php
session_start();
//error_reporting(0);
include('../../include/config.php');
include('include/checklogin.php');
check_login();
date_default_timezone_set('Asia/Dhaka');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );
if(isset($_POST['submit']))
{
  $cpass= $_POST['cpass'];
  $npass= $_POST['npass'];
  $cfpass= $_POST['cfpass'];
$sql=mysqli_query($con,"SELECT password FROM  pharmacist where password='$cpass' && id='".$_SESSION['id']."'");
$num=mysqli_fetch_array($sql);
if($num>0)
{
  if($npass != $cfpass){
     $_SESSION['errmsg']="New Password and Confirm Password Field do not match !!";
  }
  else if ($cpass == $npass) {
   $_SESSION['errmsg']="You already have this password!!";
 }
  else {
    $con=mysqli_query($con,"UPDATE pharmacist SET password='$npass', updationDate='$currentTime' WHERE id='".$_SESSION['id']."'");
    $_SESSION['msg1']="Password Changed Successfully !!";
    header("location:setting.php");
  }
}
else
{
$_SESSION['errmsg']="Old Password not match !!";
}
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Pharmacist | Change Password</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="../../vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../../vendor/fontawesome/css/font-awesome.min.css">
		<link href="../../vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="../../vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="../../vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="../../vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="../../vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="../../vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="../../vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="../../assets/css/styles.css">
		<link rel="stylesheet" href="../../assets/css/plugins.css">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="include/sidebar-menu.css">

		<style>
			body{
				padding: 0;
				margin: 0;
				background: #607d8b;
				}
				.panel-title{
					font-size: 25px;
					color: #00BCD4;
				}

				#sub-button{
					color: black;
					border: 2px solid black;
				}
				#sub-button:hover{
					background: #00BCD4 !important;
					color: white;
				}
		</style>
	</head>
	<body>
		<div id="app">
<?php include('include/sidebar-menu.php');?>
			<div class="app-content">


				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title" style="border-bottom:2px solid black; background-color:#673AB7;">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle" style="color: floralwhite"><b>Change Password</b></h1>
								</div>
								
							</div>
						</section>

							<div class="row">
								<div class="col-md-12">

									<div class="row margin-top-30 margin-left-30">
										<div class="col-lg-8 col-md-12">
											<div class="panel panel-white">
												<div class="panel-heading">
													<h5 class="panel-title">Change Password</h5>
												</div>
												<div class="panel-body">
                          <p style="color:red;"><?php echo htmlentities($_SESSION['errmsg']);?><?php echo htmlentities($_SESSION['errmsg']="");?></p>
													<form role="form" name="chngpwd" method="post" onSubmit="return valid();" >
														<div class="form-group">
															<label for="exampleInputEmail1" style="color: black; font-size: 15px">
																Current Password
															</label>
							<input type="password" name="cpass" class="form-control"  placeholder="Enter Current Password" required>
														</div>
														<div class="form-group">
															<label for="exampleInputPassword1" style="color: black; font-size: 15px">
																New Password
															</label>
					<input type="password" name="npass" class="form-control"  placeholder="New Password" minlength="6" title="Must contain at least 6 or more characters" required>
														</div>

<div class="form-group">
															<label for="exampleInputPassword1" style="color: black; font-size: 15px">
																Confirm Password
															</label>
									<input type="password" name="cfpass" class="form-control"  placeholder="Confirm Password" minlength="6" title="Must contain at least 6 or more characters" required>
														</div>



														<button type="submit" name="submit" class="btn btn-o btn-primary" id="sub-button">
															Submit
														</button>
													</form>
												</div>
											</div>
										</div>

											</div>
										</div>

								</div>
							</div>

				</div>
			</div>
			<br><br><br><br><br>
			<!-- start: FOOTER -->
	<?php include('../../include/footer.php');?>
			<!-- end: FOOTER -->


		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="../../vendor/jquery/jquery.min.js"></script>
		<script src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="../../vendor/modernizr/modernizr.js"></script>
		<script src="../../vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="../../vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="../../vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="../../vendor/maskedinput/jquery.maskedinput.min.js"></script>
		<script src="../../vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
		<script src="../../vendor/autosize/autosize.min.js"></script>
		<script src="../../vendor/selectFx/classie.js"></script>
		<script src="../../vendor/selectFx/selectFx.js"></script>
		<script src="../../vendor/select2/select2.min.js"></script>
		<script src="../../vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="../../vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<script src="../../assets/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="../../assets/js/form-elements.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
    <script type="text/javascript">
    if ( window.history.replaceState ) {
           window.history.replaceState( null, null, window.location.href );
       }
    </script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
