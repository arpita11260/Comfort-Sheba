<?php
session_start();
//error_reporting(0);
include('../../include/config.php');
include('include/checklogin.php');
check_login();
$que=mysqli_query($con,"select * from users where id='".$_SESSION['id']."'");

// 1st personal info page er
if(isset($_POST['per_i'])){
$fname=$_POST['fullname'];
$birthdate=$_POST['birthdate'];
$gender=$_POST['gender'];
$blood_group=$_POST['blood_group'];
$occupation=$_POST['occupation'];
$sql=mysqli_query($con,"Update users set fullname='$fname',birthdate='$birthdate',gender='$gender',blood_group='$blood_group',occupation='$occupation' where id='".$_SESSION['id']."'");
if($sql)
{
$_SESSION['upmsg']="Your Profile updated Successfully";
header("location:my-profile.php");
}}

// 2nd contact info page er
if(isset($_POST['con_i'])){
$address=$_POST['address'];
$city=$_POST['city'];
$phone=$_POST['phone'];
$sql=mysqli_query($con,"Update users set address='$address',city='$city',phone='$phone' where id='".$_SESSION['id']."'");
if($sql)
{
$_SESSION['upmsg']="Your Profile updated Successfully";
header("location:my-profile.php");
}}



// $que=mysqli_query($con,"select fullname,address,city,gender,email,blood_group,phone from users where id='".$_SESSION['id']."'");

?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Patient | Profile</title>
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
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="include/profile.css">
		<link rel="stylesheet" href="include/sidebar-menu.css">

		<style>

		body{
			padding: 0;
			margin: 0;
			background: #607d8b;
		}

			.mypro{
				color:black; width:50px; font-size: 30px; float:right;margin-right:25px; border-radius: 50%;
			}
			.mypro1{
				color:black; font-size: 14px; float:right; margin-right:12px;
			}
			.profile-part{
				border-bottom:1px solid #4d79ff; 
				background-color: #673AB7;
				margin-top:-8px;
			}
			.privacy-policy{
				width:80%; 
				text-align: justify; 
				font-size: 15px;
			}
			@media (max-width: 500px) { 
				.privacy-policy{
				font-size: 10px;
				}	
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
						<section id="page-title" class="profile-part" style="border-bottom: 2px solid black">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle" style="color: white"><b>My Profile</b></h1>
								</div>
							</div>
						</section>

							<div class="row">
								<div class="col-md-12">
<h5 style="color: green; font-size:18px; ">
<?php if($msg) { echo htmlentities($msg);}?> </h5>
									<div class="row margin-top-30">
										<span><?php echo $_SESSION['upmsg']; ?><?php echo $_SESSION['upmsg']="";?></span>
										<div class="col-lg-8 col-md-12">
											<div class="panel panel-white">




									<?php
$sql=mysqli_query($con,"select * from users where id='".$_SESSION['id']."'");
while($data=mysqli_fetch_array($sql))
{
?>

		<?php while($row = mysqli_fetch_object($que))
			?>

<div class="container1">
        <div class="leftbox">
            <div class="iconn">
                <span onclick="tabs(0)" class="tab active">
                    <i class="fa fa-user-o"></i>
                </span>

                <span onclick="tabs(1)" class="tab">
                    <i class="fa fa-address-book"></i>
                </span>

                <span onclick="tabs(2)" class="tab">
                    <i class="fa fa-cog"></i>
                </span>

                <span onclick="tabs(3)" class="tab">
                    <i class="fa fa-tasks"></i>
                </span>
			</div>
		</div>

        <div class="rightbox">
            <div class="profile tabShow">
                <h1 class="Lully">Personal Information</h1>

	 					<form  method="post">
                <h2 class="fully">Full Name</h2>
                <input type="text" class="inpu" name="fullname" value="<?php echo htmlentities($data['fullname']);?>" readonly>

                <h2 class="fully">Birthday</h2>
                <input type="text" class="inpu" name="birthdate" value="<?php echo htmlentities($data['birthdate']);?>" readonly>

                <h2 class="fully">Gender</h2>
								<div class="clip-radio radio-primary" >
								<input type="radio" id="rg-female" name="gender" value="female" <?php if($data['gender'] == "female") echo "checked";?>>
								<label for="rg-female">
										Female
									</label>
								<input type="radio" id="rg-male" name="gender" value="male" <?php if($data['gender'] == "male") echo "checked";?>>
								<label for="rg-male">
										Male
									</label>
								<input type="radio" id="rg-other" name="gender" value="other" <?php if($data['gender'] =="other") echo "checked";?>>
									<label for="rg-other">
									Other
								</label>
								</div>

                <h2 class="fully">Blood Group</h2>
                <input type="text" class="inpu" name="blood_group" value="<?php echo htmlentities($data['blood_group']);?>">

                <h2 class="fully">Occupation</h2>
                <input type="text" class="inpu" name="occupation" value="<?php echo htmlentities($data['occupation']);?>">

                <br><br>
                <button type="submit" name="per_i" class="btn-new">Update</button>
								</form>
            </div>

            <div class="payment tabShow">
                <h1 class="Lully">Contact Information</h1>

								<h2 class="fully">Unique ID</h2>
								<input type="text" class="inpu" value="<?php echo htmlentities($data['uniqueid']);?>" readonly>

								<form  method="post">
								<h2 class="fully">Email</h2>
                <input type="email" class="inpu" value="<?php echo htmlentities($data['email']);?>" readonly>

                <h2 class="fully">Phone Number</h2>
                <input type="number" class="inpu" name="phone" value="<?php echo htmlentities($data['phone']);?>" required>

                <h2 class="fully">Address</h2>
                <input type="text" class="inpu" name="address" value="<?php echo htmlentities($data['address']);?>" required>

                <h2 class="fully">City</h2>
                <input type="text" class="inpu" name="city" value="<?php echo htmlentities($data['city']);?>">

				<br><br>
                <button type="submit" name="con_i" class="btn-new">Update</button>

							</form>
            </div>

            <div class="cp tabShow">
                <h1 class="Lully">Settings</h1>
								<span class="cpy">Do you want to change your Password?</span> <br><br>
								<a href="change-password.php" class="btn-new">Click here !!</a>
            </div>

            <div class="privacy tabShow">
                <h1 class="Lully">Privacy</h1>
				<p class="privacy-policy">
				On our website <b>Discuss Your Problems & Safe Health</b>, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that are collected and recorded by the <b>Comfort Sheba</b> how we use it.
If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.
This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collected in <b>Comfort Sheba Discuss Your Problems & Safe Health</b>. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Privacy Policy Generator and the Free Privacy Policy Generator.

				</p>
            </div>
        </div>
</div>

													<?php } ?>

												</div>
											</div>
										</div>

											</div>
										</div>
									</div>
								

					</div>
</div>
<br><br><br>

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
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->

	<!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->

    <script>
        const tabBtn = document.querySelectorAll(".tab");
        const tab = document.querySelectorAll(".tabShow");

        function tabs(panelIndex){
            tab.forEach(function(node){
                node.style.display = "none";
            });
            tab[panelIndex].style.display = "block";
        }
        tabs(0);
    </script>

    <script>
        $(".tab").click(function(){
            $(this).addClass("active").siblings().removeClass("active");
        })
    </script>

		<script>
		if ( window.history.replaceState ) {
				window.history.replaceState( null, null, window.location.href );
		}
		</script>
	</body>
</html>
