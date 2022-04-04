<?php
include('config.php');
$output='';
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <title>Doctor List</title>
    <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
    <!-- <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet" type="text/css" /> -->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../vendor/fontawesome/css/font-awesome.min.css">
		<link href="../vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="../vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="../vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="../vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="../vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="../vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="../vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="../assets/css/styles.css">
		<link rel="stylesheet" href="../assets/css/plugins.css">
    <link rel="stylesheet" href="DataTables/DataTables-1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="DataTables/Buttons-1.5.6/css/buttons.bootstrap4.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../homecss/login.css">

    <style media="screen">
     div#table_filter label::before{
         content:"🔍 ";
         font-size: 18px;
    }
    @media (min-width: 992px){
   .container {
    width: 100%;
    }
  }
  @media (min-width: 768px){
 .container {
  width: 100%;
  }
}

    </style>
  </head>
  <body>
<section class="total-bdy">
      <header>
          <a href="../index.html" class="logo"><h2 style="color:white;">Comfort Sheba</h2> Discuss Your Problems & Safe Health</a>
          <!-- <a href="#" class="contact">Contact</a> -->

      </header>

      <div class="contain" id="contain">

                  <div id="app">

          			      <div class="wrap-content container" id="container">
                        <div class="sticky-title">
                          All Doctors
                        </div>
                          <div class="container-fluid container-fullw bg-white">
                                <div class="panel panel-white" style="padding:2px 2px;">

                                  <?php
                                  $sql = " SELECT * FROM doctors where status='active'";
                                  $result = mysqli_query($con, $sql);
                                  if (mysqli_num_rows($result) > 0) {
                                  $output .= '
                                  <div class="table-responsive">

                                        <table id="table" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                          <th>Doctor Name</th>
                                          <th>Specialization</th>
                                          <th>Contact no</th>
                                          <th>Doctor Fees</th>
                                          <th>Hospital Name</th>
                                          <th>Doctor email</th>
                                        </tr>
                                        </thead>';} ?>
                                        <tbody>
                                          <?php
                                        // $sql = " SELECT * FROM doctors";
                                             while($row = mysqli_fetch_assoc($result)) {
                                              $output .= '

                                              <tr>
                                                <td> '. $row["doctorname"].' </td>
                                                <td> '. $row["specilization"].' </td>
                                                <td> '. $row["contactno"].' </td>
                                                <td> '. $row["docFees"].' </td>
                                                <td> '. $row["hospital_name"].' </td>
                                                <td> '. $row["docEmail"].' </td>
                                              </tr>';}
                                              echo $output;
                                         ?>
                                        </tbody>
                                      </table>

                                     </div>
                                  </div>
                          </div>
                        </div>
                      </div>

      </div>

    </section>



<!-- footer -->
    <div class="copyrightText">
      <p>
        Copyright © 2021 By PUASH Team. All Rights Reserved.
      </p>
    </div>

    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../assets/js/bootstrap.bundle.min.js"></script>

    <script src="DataTables/DataTables-1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="DataTables/DataTables-1.10.18/js/dataTables.bootstrap4.min.js"></script>

    <script src="DataTables/Buttons-1.5.6/js/dataTables.buttons.min.js"></script>
    <script src="DataTables/Buttons-1.5.6/js/buttons.bootstrap4.min.js"></script>
    <script src="DataTables/JSZip-2.5.0/jszip.min.js"></script>
    <script src="DataTables/pdfmake-0.1.36/pdfmake.min.js"></script>
    <script src="DataTables/pdfmake-0.1.36/vfs_fonts.js"></script>
    <script src="DataTables/Buttons-1.5.6/js/buttons.html5.min.js"></script>
    <script src="DataTables/Buttons-1.5.6/js/buttons.print.min.js"></script>


    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../vendor/modernizr/modernizr.js"></script>
    <script src="../vendor/jquery-cookie/jquery.cookie.js"></script>
    <script src="../vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../vendor/switchery/switchery.min.js"></script>
    <script src="../vendor/maskedinput/jquery.maskedinput.min.js"></script>
    <script src="../vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
    <script src="../vendor/autosize/autosize.min.js"></script>
    <script src="../vendor/selectFx/classie.js"></script>
    <script src="../vendor/selectFx/selectFx.js"></script>
    <script src="../vendor/select2/select2.min.js"></script>
    <script src="../vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="../vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
    <script src="../assets/js/main.js"></script>
    <script src="../assets/js/form-elements.js"></script>

    <script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
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
                    [5,10,25,50,100,-1], // How much data I want to see at a time
                    [5,10,25,50,100,"All"] // How much data I want to see at a time
                ]
            } );

            table.buttons().container()
                .appendTo( '#table_wrapper .col-md-5:eq(0)' );
        } );
    </script>

    <script type="text/javascript">
      // For Sticky Nav Bar
      window.addEventListener("scroll", function(){
          var header = document.querySelector("header");
          header.classList.toggle("sticky", window.scrollY > 0);
        })

    </script>

  </body>
</html>
