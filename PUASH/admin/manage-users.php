<?php
session_start();
//error_reporting(0);
include('../../include/config.php');
include('include/checklogin.php');
check_login();

if(isset($_GET['del']))
		  {
		          mysqli_query($con,"DELETE from users where id = '".$_GET['id']."'");
                  $_SESSION['msg']="Data Deleted !!";
		  }
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin | Patient List </title>
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
  		<link rel="stylesheet" href="../../include/DataTables/DataTables-1.10.18/css/dataTables.bootstrap4.min.css">
    	<link rel="stylesheet" href="../../include/DataTables/Buttons-1.5.6/css/buttons.bootstrap4.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="include/sidebar-menu.css">

		<style>
		body{
				padding: 0;
				margin: 0;
				background: #607D8B;
			}
			div#table_filter label::before{
					content:"🔍 ";
					font-size: 18px;
			}
			.panel-title{
				color: #00BCD4 !important;
   				font-size: 20px !important;
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
						<section id="page-title" style="border-bottom:2px solid black; background-color:#673ab7; margin-top:-8px;">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle" style="color: floralwhite"><b> Patients List </b></h1>
                 </div>

							</div>
						</section>

							<div class="row margin-top-30">
								<div class="col-md-12">
										<div class="col-lg-12 col-md-12">
											<p style="color:White; font-size: 15px"><?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?></p>
											<div class="panel panel-white" style="padding:20px 20px;">
												<!-- <div class="panel-heading"> -->
													<h5 class="panel-title">Patients List</h5><br>
												<!-- </div> -->


                        <div class="table-responsive"><form type='POST' action='prescriptioncontroler.php'>

                        <table id="table" class="table table-striped table-bordered">
							<thead>
											<tr>
												<th class="center">ID</th>
												<th>Full Name</th>
												<th class="hidden-xs">Adress</th>
												<th>City</th>
												<th>Gender </th>
												<th>Email </th>
												<th>Creation Date </th>
												<th>Updation Date </th>
												<th>Action</th>

											</tr>
										</thead>
										<tbody>
<?php
$sql=mysqli_query($con,"select * from users");
$cnt=1;
while($row=mysqli_fetch_array($sql))
{
?>

											<tr>
												<td class="center"><?php echo $cnt;?>.</td>
												<td class="hidden-xs"><?php echo $row['fullname'];?></td>
												<td><?php echo $row['address'];?></td>
												<td><?php echo $row['city'];?>
												</td>
												<td><?php echo $row['gender'];?></td>
												<td><?php echo $row['email'];?></td>
												<td><?php echo $row['regDate'];?></td>
												<td><?php echo $row['updationDate'];?>
												</td>
												<td >
												<div class="visible-md visible-lg hidden-sm hidden-xs">


	<a href="manage-users.php?id=<?php echo $row['id']?>&del=delete" onClick="return confirm('Are you sure you want to delete?')"class="btn btn-transparent btn-xs tooltips" tooltip-placement="top" tooltip="Remove"><i class="fa fa-times fa fa-white"></i></a>
												</div>
												<div class="visible-xs visible-sm hidden-md hidden-lg">
													<div class="btn-group" dropdown is-open="status.isopen">
														<button type="button" class="btn btn-primary btn-o btn-sm dropdown-toggle" dropdown-toggle>
															<i class="fa fa-cog"></i>&nbsp;<span class="caret"></span>
														</button>
														<ul class="dropdown-menu pull-right dropdown-light" role="menu">
															<li>
																<a href="#">
																	Edit
																</a>
															</li>
															<li>
																<a href="#">
																	Share
																</a>
															</li>
															<li>
																<a href="#">
																	Remove
																</a>
															</li>
														</ul>
													</div>
												</div></td>
											</tr>

	<?php
		$cnt=$cnt+1;
	}?>


</tbody>

</table>
</form>
</div>
</div>

</div>
</div>
</div>
</div>
<!-- start: FOOTER -->
<?php include('../../include/footer.php');?>
<!-- end: FOOTER -->

</div>
<!-- start: MAIN JAVASCRIPTS -->
<script src="../../vendor/jquery/jquery.min.js"></script>
<script src="../../assets/js/bootstrap.bundle.min.js"></script>

<script src="../../include/DataTables/DataTables-1.10.18/js/jquery.dataTables.min.js"></script>
<script src="../../include/DataTables/DataTables-1.10.18/js/dataTables.bootstrap4.min.js"></script>

<script src="../../include/DataTables/Buttons-1.5.6/js/dataTables.buttons.min.js"></script>
<script src="../../include/DataTables/Buttons-1.5.6/js/buttons.bootstrap4.min.js"></script>
<script src="../../include/DataTables/JSZip-2.5.0/jszip.min.js"></script>
<script src="../../include/DataTables/pdfmake-0.1.36/pdfmake.min.js"></script>
<script src="../../include/DataTables/pdfmake-0.1.36/vfs_fonts.js"></script>
<script src="../../include/DataTables/Buttons-1.5.6/js/buttons.html5.min.js"></script>
<script src="../../include/DataTables/Buttons-1.5.6/js/buttons.print.min.js"></script>


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
$("#table").on('click','.submit',function(){
         // get the current row
         var currentRow=$(this).closest("tr"); 
         
         var col1=currentRow.find("td:eq(1)").text(); // get current row 1st TD value
		 
		
         $.ajax({
			url:"prescription_history.php",
			method:"POST",
			data:{history:col1}
		}).done(function(data){
			$('#result').html(data);
		});
        
    });






});
</script>
<script>
$(document).ready(function() {
var table = $('#table').DataTable( {
buttons: [ 'copy','csv','print', 'excel', 'pdf' ],
dom:
"<'row'<'col-md-3'l><'col-md-5'B><'col-md-4'f>>" +
"<'row'<'col-md-12'tr>>" +
"<'row'<'col-md-5'i><'col-md-7'p>>",
lengthMenu:[
[10,25,50,100,-1],
[10,25,50,100,"All"]
]
} );

table.buttons().container()
.appendTo( '#table_wrapper .col-md-5:eq(0)' );
} );
$("#table").on('click','#history_b',function(){
         // get the current row
         var currentRow1=$(this).closest("tr"); 
         
         var col2=currentRow1.find("td:eq(1)").text(); // get current row 1st TD value
		 
		
    
		$.ajax({
			url:"patient_history.php",
			method:"POST",
			data:{p_history:col2}
		}).done(function(data){
			$('#result').html(data);
		});
		
        
    });

// $('#history_b').click(function(){		
// 		$.ajax({
// 			url:"patient_history.php",
// 			method:"POST",
// 			data:$('#prescription').serialize(),
// 			success:function(data)
// 			{
				
// 				$(this)[0].reset();
// 			}
// 		});
// 	});



</script>

<script type="text/javascript">
if ( window.history.replaceState ) {
window.history.replaceState( null, null, window.location.href );
}
</script>
</body>
</html>
