<?php
	include('includes/config.php');
	error_reporting(0);

	if(isset($_POST['submit'])){
		$sos = 'A100';
		$sql = mysqli_query($con, "select id from users order by id DESC"); // selecting id from users table
		$row = mysqli_fetch_row($sql); // fetching the number of rows
		$next = $row[0] + 1; // adding 1 to the last id number

		if($sql) {
			if($next >= 10) {
				$sos = 'A100';
				$sos .= $next;
			}

			if($next >=100) {
				$sos = 'A10';
				$sos .= $next;
			}

				$fullname=$_POST['fullname'];
				$email=$_POST['email'];
				$matric_no = $_POST['matric_no'];
				$password=md5($_POST['password']);
				$contactno=$_POST['contactno'];
				$card_id = $sos;
				$status=1;

				$query=mysqli_query($con,"insert into users(fullName, matric_no, card_id, userEmail,password,contactNo,status)
				values('$fullname', '$matric_no', '$card_id', '$email','$password','$contactno','$status')"); // inserting into users table

				$msg="Registration successfull. Now You can login !";
		}
	}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>CMS | User Registration</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

		<script>
			function userAvailability() { // function to validate if email Already exist in database
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
  </head>

  <body>
	  <div id="login-page">
	  	<div class="container">
				<h3 align="center" style="color:#fff">Complaint Managent System</h3>
				<hr />
		     <form class="form-login" method="post">
		       <h2 class="form-login-heading">User Registration</h2>
		       <p style="padding-left: 1%; color: green">
		       	<?php if($msg){echo htmlentities($msg);}?>
		       </p>
		      <div class="login-wrap">
		       	<input type="text" class="form-control" placeholder="Full Name" name="fullname" required="required" autofocus>
							<br>
						<input type="text" class="form-control" placeholder="Matric No" name="matric_no" required="required" autofocus>
							<br>
		        <input type="email" class="form-control" placeholder="Email ID" id="email" onBlur="userAvailability()" name="email" required="required">
							<span id="user-availability-status1" style="font-size:12px;"></span>
							<br>
		        <input type="password" class="form-control" placeholder="Password" required="required" name="password">
							<br>
		        <input type="text" class="form-control" maxlength="11" name="contactno" placeholder="Contact no" required="required" autofocus>
							<br>
		        <button class="btn btn-theme btn-block"  type="submit" name="submit" id="submit"><i class="fa fa-user"></i> Register</button>
		          <hr>
		        <div class="registration">Already Registered
							<br/>
							<a class="" href="index.php">Sign in</a>
		       	</div>
		      </div>
		     </form>
	  		</div>
	  	</div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>
  </body>
</html>
