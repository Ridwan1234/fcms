<?php
include('include/config.php');
if(!empty($_POST["cat_id"]))
{
 $id=intval($_POST['cat_id']);
$query=mysqli_query("SELECT * FROM doctor WHERE specilizationid=$id");
?>
<option value="">Select Doctor Specilization</option>
<?php
 while($row=mysqli_fetch_array($query))
 {
  ?>
  <option value="<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['doctorName']); ?></option>
  <?php
 }
}
?>
