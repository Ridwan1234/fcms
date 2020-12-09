<?php
session_start();
include('../include/config.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin| Manage Users</title>
  <link type="text/css" href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link type="text/css" href="../css/theme.css" rel="stylesheet">
</head>
<body>
  <?php include('header.php');?>

  <div class="wrapper">
    <div class="container">
      <div class="row">
<?php include('ide.php');?>
      <div class="span9">
          <div class="content">

  <div class="module">
              <div class="module-head">
                <h3>ELECTION OVERVIEW</h3>
              </div>

              <h4 style="background-color:#2ae02a; padding:15px; color:#fff">Your election ends on <?php echo $formatedLastDay?></h4>
</div>
</div>
</div>
</div>
</div>
</div>
