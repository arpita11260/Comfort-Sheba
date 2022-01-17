<?php
session_start();
error_reporting(0);
include("../../include/if-session-set.php");
include("../../include/config.php");



if(isset($_POST['submitlog']))
{
	$email = mysqli_query($con,"SELECT * FROM pharmacist WHERE email='".$_POST['email']."'");
	$count=mysqli_fetch_array($email);
	if($count>0){
		$sts = mysqli_query($con,"SELECT * FROM pharmacist WHERE email='".$_POST['email']."'and status='inactive'");
		$count2=mysqli_fetch_array($sts);
		if($count2>0){
			$_SESSION['errmsg']="Your account is not activated";
		}
	else{
$ret=mysqli_query($con,"SELECT * FROM pharmacist WHERE email='".$_POST['email']."' and password='".$_POST['password']."'");
$num=mysqli_fetch_array($ret);
if($num>0)
{
$extra="dashboard.php";
$_SESSION['plogin']=$_POST['email'];
$_SESSION['phid']=$num['id'];
$_SESSION['id']=$num['id'];
$_SESSION['role']='pharmacist';
$host=$_SERVER['HTTP_HOST'];
$uip=$_SERVER['REMOTE_ADDR'];
$status=1;

$log=mysqli_query($con,"insert into plog(uid,username,userip,status) values('".$_SESSION['id']."','".$_SESSION['plogin']."','$uip','$status')");
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
header("location:http://$host$uri/$extra");
exit();
}

else
{
$_SESSION['plogin']=$_POST['email'];
$uip=$_SERVER['REMOTE_ADDR'];
$status=0;
mysqli_query($con,"insert into plog(username,userip,status) values('".$_SESSION['plogin']."','$uip','$status')");
$_SESSION['errmsg']="Invalid password";
$extra="sign-in-up.php";
$host  = $_SERVER['HTTP_HOST'];
$uri  = rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
header("location:http://$host$uri/$extra");
exit();
}
}
}else {
	$_SESSION['errmsg']="Invalid Email.";
}
}

if(isset($_POST['submit']))
{
$fname=$_POST['full_name'];
$licence=$_POST['licence_number'];
$email=$_POST['email'];
$address=$_POST['address'];
$contact=$_POST['contact'];
$gender=$_POST['gender'];
$shop_address=$_POST['shop_address'];
$password=$_POST['password'];
$cpassword=$_POST['cpassword'];

$token = bin2hex(random_bytes(15));

$l_check = mysqli_query($con,"SELECT * FROM phlicence WHERE email='".$_POST['email']."'and licence='$licence'");
$coun=mysqli_fetch_array($l_check);
if($coun>0){

if($password === $cpassword){
$query=mysqli_query($con,"insert into pharmacist(name,licence_number,email,address,shop_address,contact,gender,password,token) values('$fname','$licence','$email','$address','$shop_address','$contact','$gender','$password','$token')");
if($query){
	$subject = "Email Activation";
	$body = "Hi, $fname. Click here to activate your account
	http://localhost/puash/PUASH/pharmacist/forMail/activate.php?token=$token";
	$sender_email = "From: puash.bd@gmail.com";

	if (mail($email, $subject, $body, $sender_email)) {
		echo "<script>alert('Successfull..! Check your mail $email to active your account.');window.location='sign-in-up.php'</script>";
	} else {
	    echo "Email sending failed...";
	}
		//header('location:user-login.php');
}
}else {
	echo "<script>alert('Password are not matching');</script>";}
} else {
	echo "<script>alert('Your licence is wrong');</script>";
}
}
// 
if(isset($_POST['get-password']))
{
	$email=mysqli_real_escape_string($con, $_POST['email']);
	$emailquery = mysqli_query($con,"SELECT * FROM pharmacist WHERE email='$email'");
	$count=mysqli_num_rows($emailquery);
	if($count){
		$sts = mysqli_query($con,"SELECT * FROM pharmacist WHERE email='".$_POST['email']."'and status='inactive'");
		$count2=mysqli_num_rows($sts);
		if($count2>0){
			$_SESSION['errmsg']="Your account is not activated.";
		}
			else{
				$userdata=mysqli_fetch_array($emailquery);
				$fname= $userdata['name'];
				$token= $userdata['token'];

				$subject = "Reset Password..";
				$body = "Hi, $fname. Click here to reset your password
				http://localhost/puash/PUASH/pharmacist/include/resetpass.php?token=$token";
				$sender_email = "From: puash.bd@gmail.com";

				if (mail($email, $subject, $body, $sender_email)) {
          // $_SESSION['errmsg']="Check your email to reset your password.";
          echo "<script> alert('Check your email to reset your password.').window.location.reload();</script>";
					} else {
						echo "Email sending failed...";
				}
			}

}else {
	$_SESSION['errmsg']="Invalid Email.";
}
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"> </script>
    <title>Pharmacist | SignIn-SignUp</title>
    <link rel="stylesheet" href="sign/sign-inup.css">

    <style>
      .container.active{
        filter: blur(20px);
      }
            .view{
            background-color:#d3d7de;
            text-align: center;
            width: 40%;
            height: 100px;
          }

        #popUpMain{
          display: block;
          visibility: hidden;
          opacity: 0;
          position: fixed;
          width: 100%;
          height: 100%;
          /* background: rgba(0, 0, 0, 0.6); */
          z-index: 1001;
          transition: all 1s;
        }
        #popup{
          position: absolute;
          top: 40%;
          left: 50%;
          transform: translate(-50%, -50%);
          width: 600px;
          padding: 120px 0;
          box-shadow: 0 5px 30px rgba(0, 0, 0, .30);
          background:#2c2c2c;
          visibility: hidden;
          opacity: 0;
          transition: all 1s;
        }
        #popUpMain.active{
          visibility: visible;
            opacity: 1;

        }
        #popup.active{
            top: 50%;
            visibility: visible;
            opacity: 1;
        }

        /* Forget Pass Start */
        
        .form {
        position:absolute;
        top:50%;
        left:50%;
        transform:translate(-50%,-50%);
        width:300px;
        height:250px;
        padding:10px;
        }
        .form .form-header {
        height:30px;
        display:flex;
        align-items:center;
        text-align:center;
        }
        .form .form-header > div {
        width:calc(100% / 3);
        color:#ddd;
        font-size:18px;
        font-weight:600;
        cursor:pointer;
        }
        
        .form.reset .form-header div.show-reset {
        color:#f1575b;
        }
        .form .form-elements {
        margin-top:15px;
        }
        .form .form-elements .form-element {
        height:50px;
        opacity:1;
        overflow:hidden;
        transition:all 500ms ease-in-out;
        }
        .form .form-elements button:hover{
          background: limegreen;
          transition: 1.2s;
        }
        .form .form-elements input {
        width:100%;
        padding:10px;
        font-size:16px;
        margin:5px 0px;
        border-radius:10px;
        box-sizing:border-box;
        border:1px solid #222;
        background:#f5f5f5;
        }
        .form .form-elements button {
        width:100%;
        padding:10px;
        font-size:16px;
        font-weight:600;
        margin-top:5px;
        border-radius:10px;
        background:#f1575b;
        color:#f5f5f5;
        cursor:pointer;
        border:none;
        outline:none;
        }
        .form .arrow {
        position:absolute;
        top:51px;
        width:0;
        height:0;
        border-left:10px solid transparent;
        border-right:10px solid transparent;
        border-bottom:10px solid #f5f5f5;
        }
        .form.signup .arrow {
        left:calc(calc(100% / 3) / 2);
        }
        .form.signin .arrow {
        left:calc(calc(100% / 3) + calc(calc(100% / 3) / 2.2)) ;
        }
        .form.reset .arrow {
        left:calc(calc(calc(100% / 3) * 2) + calc(calc(100% / 3) / 3)) ;
        }

        .form.signin .form-elements > div:nth-child(3) {
        height:0px;
        opacity:0;
        }
        .form.reset .form-elements > div:nth-child(2),
        .form.reset .form-elements > div:nth-child(3) {
        height:0px;
        opacity:0;
        }
        /* Forget Pass End */
        
    </style>
</head>
<body>

  <div class="delete" id="popUpMain">
		<div class="" id="popup">
        <form class="form-login" autocomplete="off" method="post">
            <fieldset>
                <div class="form-group">
                    <!-- <span class="input-icon">
                        <input type="email" class="form-control" name="email" placeholder="Enter Your Email" required>
                        <i class="fa fa-envelope"></i> 
                    </span> -->
                    <div class="form signup">
                        <div class="form-header">
                          <div class="show-reset">Forget&nbsp;Password</div>
                        </div>
                        <div class="arrow"></div>
                        <div class="form-elements">
                          <div class="form-element">
                            <span class="input-icon">
                              <input type="email" class="form-control" name="email" placeholder="✉ Enter Your Email" required> 
                              <!-- <i class="fa fa-envelope-0"></i> -->
                            </span>
                          </div>
                          <div class="form-element">
                            <button id="submit-btn" name="get-password">Get Password</button>
                          </div>
                          <div class="form-element" id="cross">
                            <button id="submit-btn">Close</button>
                          </div>
                        </div>
                      </div>
                    </div>
                </div>
            </fieldset>
        </form>
		</div>
	</div>

    <div class="container" id="container">
          <div class="forms-container">
              <div class="signin-signup">
                  <!-- Sign In -->
                  <form class="sign-in-form" method="post">
                      <h2 class="title">Sign In</h2>
                      <p style="color:white; background-color:green; text-align:center; width:60%;"> <span><?php echo $_SESSION['cmsg']; ?><?php echo $_SESSION['cmsg']="";?></span></p>
                      <p>
                        Please enter your Email and password to log in.<br />
                        <span style="color:red;"><?php echo $_SESSION['errmsg']; ?><?php echo $_SESSION['errmsg']="";?></span>
                      </p>
                      <div class="input-field">
                          <i class="fas fa-envelope"></i>
                          <input type="email" name="email" placeholder="Email">
                      </div>
                      <div class="input-field">
                          <i class="fas fa-lock"></i>
                          <input type="password" name="password" placeholder="Password">
                      </div>
                          <div class="form-actions">
                            <!-- <a href="forget-pass.php">Forget password?</a> &nbsp; -->
                            <a href="#" id="view">
                                Forget Password
                            </a> &nbsp;
                            <button type="submit" class="btn btn-primary pull-right" name="submitlog">
                            Login <i class="fa fa-arrow-circle-right"></i>
                            </button>
                          </div>              
                  </form>
                  

                  <!-- Sign Up -->
                  <form class="sign-up-form" name="registration" id="registration" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post">
                      <h2 class="title">Sign Up</h2>
                      <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" name="full_name" placeholder="Fullname" required>
                      </div>
                      <div class="input-field">
                        <i class="fa fa-id-card-o"></i>
                        <input type="text" name="licence_number" placeholder="License Number" required>
                      </div>
                      <div class="input-field">
                        <i class="fa fa-map-marker"></i>
                          <input type="text" name="address" placeholder="Address">
                      </div>
                      <div class="input-field">
                        <i class="fa fa-location-arrow"></i>
                          <input type="text" name="shop_address" placeholder="Shop Address" required>
                      </div>
                      <div class="input-field">
                        <i class="fa fa-mobile"></i>
                          <input type="number" name="contact" placeholder="Mobile Number" required>
                      </div>
  
                      <div class="gender">
                        <div class="block" style="padding: 2px; margin-bottom: 2px;">
                          Gender
                        </div>
                        <div class="clip-radio radio-primary">
                          <input type="radio" id="rg-female" name="gender" value="female" checked>
                          <label for="rg-female">
                            Female
                          </label>
                          <input type="radio" id="rg-male" name="gender" value="male">
                          <label for="rg-male">
                            Male
                          </label>
                          <input type="radio" id="rg-other" name="gender" value="Other">
                          <label for="rg-other">
                            Other
                          </label>
                        </div>
                      </div>

                      <span class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="email" class="form-control" name="email" id="email"  placeholder="Enter Your Email" onBlur="userAvailability()" required>
                      </span>
                      <span id="user-availability-status1" style="font-size:12px;"></span>
  
                      <!-- <div class="input-field">
                          <i class="fas fa-envelope"></i>
                          <input type="email" class="form-control" name="email" id="email"  placeholder="Enter Your Email" onBlur="userAvailability()" required>
                      </div> -->

                      <span style="color:red;"><?php echo $_SESSION['errpmsg']; ?><?php echo $_SESSION['errpmsg']="";?></span>
                      <span class="input-field">
                        <i class="fa fa-lock"></i>
                        <input type="password" class="form-control password" id="password" value="" name="password" placeholder="Set Password" minlength="6" title="Must contain at least 6 or more characters" required>
                        </span>
                        <span class="input-field">
                          <i class="fa fa-key"></i>
                          <input type="password" class="form-control password" id="cpassword" value="" name="cpassword" placeholder="Confirm Password" minlength="6" title="Must contain at least 6 or more characters" required>
                        </span>
                        <span style="margin-left: -30%;">
                        <input type="checkbox" onclick="passShow()"> &nbsp;Show Password
                        </span>

                        <button type="submit" id="submit" class="btn btn-primary pull-right" name="submit">
                          Sign up <i class="fa fa-arrow-circle-right"></i>
                        </button>
                  </form>
              </div>
        </div>

        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>New here !!</h3>
                    <p>Please register yourself with your required documents and enjoy our services.</p>
                    <button class="btn transparent" id="sign-up-btn">Sign Up</button> <br> <br>
                    <a href="../../index.html">
										<button class="go-to btn transparent">Go to home</button>
                    </a>
                </div>

                <img src="sign/pharmacy1.svg" class="image" alt="">
            </div>

            <div class="panel right-panel">
                <div class="content">
                    <h3>One of Us?</h3>
                    <p>Please login with your respected email id and password to use our service.</p>
                    <button class="btn transparent" id="sign-in-btn">Sign In</button> <br><br>
                    <a href="../../index.html">
										<button class="go-to btn transparent">Go to home</button>
                    </a>
                </div>

                <img src="sign/pharmacy2.svg" class="image" alt="">
            </div>
        </div>
    </div>

                    
                    
          


		<script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="sign/app.js"></script>
    <script src="../../assets/js/main.js"></script>

		<script src="../../assets/js/login.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
			});
		</script>

    <script>
    function userAvailability() {
    $("#loaderIcon").show();
    jQuery.ajax({
    url: "check_availability.php",
    data:'email='+$("#email").val(),
    type: "POST",
    success:function(data){
    $("#user-availability-status1").html(data);
    $("#loaderIcon").hide();
    },
    error:function (){}
    });
    }
    </script>

    <script>
      function passShow() {
      var x = document.getElementById("password");
      if (x.type === "password") {
      x.type = "text";
      } else {
      x.type = "password";
      }

      var y = document.getElementById("cpassword");
      if (y.type === "password") {
      y.type = "text";
      } else {
      y.type = "password";
      }
      }
    </script>


		<!-- <script type="text/javascript">
            function refreshPage () {
                var page_y = document.getElementsByTagName("body")[0].scrollTop;
                window.location.href = window.location.href.split('?')[0] + '?page_y=' + page_y;
            }
            window.onload = function () {
                setTimeout(refreshPage, 35000);
                if ( window.location.href.indexOf('page_y') != -1 ) {
                    var match = window.location.href.split('?')[1].split("&")[0].split("=");
                    document.getElementsByTagName("body")[0].scrollTop = match[1];
                }
            }
        </script> -->

    <script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
    </script>





<!--  -->


    <script type="text/javascript">
				document.getElementById('cross').addEventListener("click",function(){
            var container = document.getElementById('container');
            container.classList.toggle('active');
            var popupmain = document.getElementById('popUpMain');
            popupmain.classList.toggle('active');
            var box1= document.getElementById('popup');
          box1.classList.toggle('active')
		      // box1.style.display="none";
		    });
        
		    document.getElementById('view').addEventListener("click",function(){
		      var container = document.getElementById('container');
            container.classList.toggle('active')

            var popup = document.getElementById('popup');
            popup.classList.toggle('active');
            var popupmain = document.getElementById('popUpMain');
            popupmain.classList.toggle('active');
		    });
	  </script>

</body>
</html>
