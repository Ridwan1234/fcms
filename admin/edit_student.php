
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{
header('location:index.php');
}
else{

$id=intval($_GET['id']);

if(isset($_POST['submit']))
{
	$fullname=$_POST['name'];
	$matric_no=$_POST['matric_no'];
	$email=$_POST['email'];
	$contactno=$_POST['contactno'];
	$password=$_POST['password'];
	$query=mysqli_query($con,"update users set fullName='$fullname',matric_no='$matric_no',userEmail='$email', contactNo='$contactno',  password='$password'  where id='$id'");
	$_SESSION['msg']="Doctor Specilization Updated !!";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin | Edit Student</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
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
								<h3>Edit Student</h3>
							</div>
							<div class="module-body">

									<?php if(isset($_POST['submit']))
{?>
									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Well done!</strong>	<?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
									</div>
<?php } ?>


									<br />

			<form class="form-horizontal row-fluid" name="Category" method="post" >
<?php
$id=intval($_GET['id']);
$query=mysqli_query($con,"select * from users where id='$id'");
while($row=mysqli_fetch_array($query))
{
?>

<div class="control-group">
<label class="control-label" for="basicinput">Student Name</label>
<div class="controls">
<input type="text" placeholder="Enter Student Name"  name="name" value="<?php echo  htmlentities($row['fullName']);?>" class="span8 tip"/>
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Student Matric No</label>
<div class="controls">
<input type="text" placeholder="Enter Student Matric No"  name="matric_no" value="<?php echo  htmlentities($row['matric_no']);?>" class="span8 tip"/>
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Student Email</label>
<div class="controls">
<input type="text" placeholder="Enter Student Email"  name="email" value="<?php echo  htmlentities($row['userEmail']);?>" class="span8 tip"/>
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Student Contact</label>
<div class="controls">
<input type="number" placeholder="Enter Student Contact"  name="contactno" value="<?php echo  htmlentities($row['contactNo']);?>" class="span8 tip"/>
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Student Password</label>
<div class="controls">
<input type="password" placeholder="Enter Student Password"  name="password" value="<?php echo  htmlentities($row['password']);?>" class="span8 tip"/>
</div>
</div>

									<?php } ?>

	<div class="control-group">
											<div class="controls">
												<button type="submit" name="submit" class="btn">Update</button>
											</div>
										</div>
									</form>
							</div>
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
