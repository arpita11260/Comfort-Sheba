<?php

session_start();
					include('include/config.php');
					include('PUASH/doctor/Post.php');
					include('PUASH/doctor/User.php');

					$data_query = mysqli_query($con, "SELECT * FROM posts WHERE deleted='no' ORDER BY id DESC");

					if(mysqli_num_rows($data_query) > 0) {

						$str = "";
						$num_iterations = 0; //Number of results checked (not necasserily posted)
						$count = 1;

						while($row = mysqli_fetch_array($data_query)) {
					$id = $row['id'];
					$title=$row['title'];
					$body = $row['description'];
					$added_by = $row['author'];
					$date_time = $row['upload_date'];
					$imagePath = $row['image'];

				
					
						$user_to_obj = new User($con, $row['author']);
						// $user_to_name = $user_to_obj->getFirstAndLastName();
						$user_to = "to <a href='" . $row['author'] ."'>  </a>";
					


						


						$user_details_query = mysqli_query($con, "SELECT doctorname, docEmail, specilization FROM doctors WHERE doctorname='$added_by'");
						$user_row = mysqli_fetch_array($user_details_query);
						$first_name = $user_row['doctorname'];
						$last_name = $user_row['specilization'];
						$profile_pic = $user_row['docEmail'];


						?>
					
						<?php



						//Timeframe
						$date_time_now = date("Y-m-d H:i:s");
						$start_date = new DateTime($date_time); //Time of post
						$end_date = new DateTime($date_time_now); //Current time
						$interval = $start_date->diff($end_date); //Difference between dates 
						if($interval->y >= 1) {
							if($interval->y == 1)
								$time_message = $interval->y . " year ago"; //1 year ago
							else 
								$time_message = $interval->y . " years ago"; //1+ year ago
						}
						else if ($interval->m >= 1) {
							if($interval->d == 0) {
								$days = " ago";
							}
							else if($interval->d == 1) {
								$days = $interval->d . " day ago";
							}
							else {
								$days = $interval->d . " days ago";
							}


							if($interval->m == 1) {
								$time_message = $interval->m . " month ". $days;
							}
							else {
								$time_message = $interval->m . " months ". $days;
							}

						}
						else if($interval->d >= 1) {
							if($interval->d == 1) {
								$time_message = "Yesterday";
							}
							else {
								$time_message = $interval->d . " days ago";
							}
						}
						else if($interval->h >= 1) {
							if($interval->h == 1) {
								$time_message = $interval->h . " hour ago";
							}
							else {
								$time_message = $interval->h . " hours ago";
							}
						}
						else if($interval->i >= 1) {
							if($interval->i == 1) {
								$time_message = $interval->i . " minute ago";
							}
							else {
								$time_message = $interval->i . " minutes ago";
							}
						}
						else {
							if($interval->s < 30) {
								$time_message = "Just now";
							}
							else {
								$time_message = $interval->s . " seconds ago";
							}
						}

						if($imagePath != "") {
							$imageDiv = "<div class='postedImage'>
											<img src='PUASH/doctor/$imagePath'>
										</div>";
						}
						else {
							$imageDiv = "";
						}
						?>

							<div class="posts_area">
							
							<div class='status_post' onClick='javascript:toggle$id()'>
									<div class='post_profile_pic'>
										<?php echo $profile_pic; ?>
									</div>

									<div class='posted_by' style='color:#ACACAC;'>
										<a href='$added_by'><?php echo $first_name; echo ' ';echo $last_name ;?> </a>  &nbsp;&nbsp;&nbsp;&nbsp; <?php echo $time_message;?>
										
									</div>
									<div id='post_body'>
										<?php echo $body; ?>
										<br>
										<?php echo $imageDiv; ?>
										<br>
										<br>
									</div>

								</div>
							
								<hr>
							
							</div>
					
						


					<?php 
						} //End while loop
					}



					?>