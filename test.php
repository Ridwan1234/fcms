<?php
include('/users/includes/config.php');

$sql = mysqli_query($con, "select id from users order by id DESC");
$row = mysqli_fetch_row($sql);
$sos = 'A100';
  // echo "$row[0] <br>";

  $sos .= $row[0];

echo "$sos";
 ?>
