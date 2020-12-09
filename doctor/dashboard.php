
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{
header('location:index.php');
}
else{
date_default_timezone_set('Asia/Kolkata');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin| Dashboard</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="css/mine.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
	<link rel="stylesheet" type="text/css" href="../users/assets/lineicons/style.css">


	<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+500+',height='+600+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>
</head>
<body>
<?php include('include/header.php');?>

<div class="wrapper">
	<div class="container">
		<div class="row">
<?php include('include/sidebar.php');?>
			<div class="span9">
					<div class="content">

	<div class="module">
							<div class="module-head">
								<h3>Appointment Overview</h3>
							</div>
							<!-- <div class="module-body table"> -->
								<!-- <section id="main-content">
					          <section class="wrapper">

					              <div class="row">
					                  <div class="col-lg-9 main-chart"> -->


					                  	<div class="col-md-2 col-sm-2 box0">
					                        <div>

					                  </div></div>




					                  		<div class="col-md-2 col-sm-2 box0">
					                  			<div class="box1">
										  			<span class="li_news"></span>
					                                <?php

					$rt = mysqli_query($con,"SELECT * FROM appointment where userId='".$_SESSION['id']."' and status is null");
					$num1 = mysqli_num_rows($rt);
					{?>
										  			<h3><?php echo htmlentities($num1);?></h3>
					                  			</div>
										  			<p><?php echo htmlentities($num1);?> Appointments not Process yet</p>
					                  		</div>
					                      <?php }?>


					                      <div class="col-md-2 col-sm-2 box0">
					                        <div class="box1">
					                  <span class="li_news"></span>
					                    <?php
					  $status="in Process";
					$rt = mysqli_query($con,"SELECT * FROM appointment where userId='".$_SESSION['id']."' and  status='$status'");
					$num1 = mysqli_num_rows($rt);
					{?>
					                  <h3><?php echo htmlentities($num1);?></h3>
					                        </div>
					                  <p><?php echo htmlentities($num1);?> Appointments Status in process</p>
					                      </div>
					  <?php }?>

					                      <div class="col-md-2 col-sm-2 box0">
					                        <div class="box1">
					                  <span class="li_news"></span>
					                       <?php
					  $status="closed";
					$rt = mysqli_query($con,"SELECT * FROM appointment where userId='".$_SESSION['id']."' and  status='$status'");
					$num1 = mysqli_num_rows($rt);
					{?>
					                  <h3><?php echo htmlentities($num1);?></h3>
					                        </div>
					                  <p><?php echo htmlentities($num1);?> Appointment has been closed</p>
					                      </div>

					<?php }?>


					                  	<!-- </div> -->
														<!-- </row mt -->




<!-- </div>

					          </section>
					      </section> -->
							<!-- </div> -->
						</div>



					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

<?php include('include/footer.php');?>

<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
<script src="scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body>
<?php } ?>
