<?php error_reporting(0);?>
<header class="navbar navbar-default navbar-static-top" style="outline:#4CAF50 solid 2px; position:fixed;">
					<!-- start: NAVBAR HEADER -->
					<div class="navbar-header" >
						<a href="#" class="sidebar-mobile-toggler pull-left hidden-md hidden-lg" class="btn btn-navbar sidebar-toggle" data-toggle-class="app-slide-off" data-toggle-target="#app" data-toggle-click-outside="#sidebar">
							<i class="ti-align-justify"></i>
						</a>
						<a class="navbar-brand" href="../../index.html">
							<h2 style="padding-top:15% ">PUASH</h2>
						</a>
						<a href="#" class="sidebar-toggler pull-right visible-md visible-lg" data-toggle-class="app-sidebar-closed" data-toggle-target="#app">
							<i class="ti-align-justify"></i>
						</a>
						<a class="pull-right menu-toggler visible-xs-block " id="menu-toggler" data-toggle="collapse" href=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<i class="ti-view-grid"></i>
						</a>
					</div>
					<!-- end: NAVBAR HEADER -->
					<!-- start: NAVBAR COLLAPSE -->
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-right">
							<!-- start: MESSAGES DROPDOWN -->
								<li  style="padding-top:2%;">
								<h2></h2>
							</li>
							<li class="dropdown current-user">
								<a href class="dropdown-toggle" data-toggle="dropdown">
									 <span class="username">


									<?php  //$query=mysqli_query($con,"select fullname from users where id='".$_SESSION['id']."'");
   //while($row=mysqli_fetch_array($query))
//{ echo $row['fullname'];} ?>

<?php
 $con = mysqli_connect("localhost", "root", "", "hms");
					 $query = "select * from users where id='".$_SESSION['id']."'";
					 if($result = mysqli_query($con, $query)){
							 while($row = mysqli_fetch_assoc($result)){
									 $mark = explode(" ", $row["fullname"]);
                        echo $mark[0]." ";
												echo $mark[1];
									/* $m=0;
									 foreach($mark as $out){
										 for($c=0;$c<100;$c++){
											 echo $out[$c]."";
											 if($out[$c] == " "){ $m = $m+1;
												 if($m == 2){ break; } }
											 }}*/
                     }
							 }
			 ?>



									 <i class="ti-angle-down"></i></i></span>
								</a>
								<ul class="dropdown-menu dropdown-dark">
									<li>
										<a href="my-profile.php">
											My Profile
										</a>
									</li>

									<li>
										<a href="change-password.php">
											Change Password
										</a>
									</li>
									<li>
										<a href="logout.php">
											Log Out
										</a>
									</li>
								</ul>
							</li>
							<!-- end: USER OPTIONS DROPDOWN -->
						</ul>
						<!-- start: MENU TOGGLER FOR MOBILE DEVICES -->
						<div class="close-handle visible-xs-block menu-toggler" data-toggle="collapse" href=".navbar-collapse">
							<div class="arrow-left"></div>
							<div class="arrow-right"></div>
						</div>
						<!-- end: MENU TOGGLER FOR MOBILE DEVICES -->
					</div>


					<!-- end: NAVBAR COLLAPSE -->
				</header>

				<script>
				<?php  $query=mysqli_query($con,"select fullname from users where id='".$_SESSION['id']."'");
while($row=mysqli_fetch_array($query))
{ //echo $row['fullname'];
} ?>
				function myFunction() {
				  var str = <?php  $row['fullname'] ?> ;
				  var res = str.split("  ");
				 document.getElementById("sp").innerHTML = res;
				}
				</script>
