<?php
require_once("includes/config.php"); // including the configuration file
if(!empty($_POST["email"])) {
	$email= $_POST["email"]; // assigning email to a variable using the post method

		$result =mysqli_query($con,"SELECT userEmail FROM users WHERE userEmail='$email'"); // selecting email from users table
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Email already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{

	echo "<span style='color:green'> Email available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}
?>
