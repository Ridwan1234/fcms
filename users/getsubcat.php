<?php
include('includes/config.php');
if(!empty($_POST["catid"]))
{
 $id=intval($_POST['catid']);
 if(!is_numeric($id)){

 	echo htmlentities("invalid industryid");exit;
 }
 else{
 $stmt = mysqli_query($con,"SELECT doctorName FROM doctors WHERE specilizationid ='$id'");
 ?><option selected="selected">Select Doctor </option><?php
 while($row=mysqli_fetch_array($stmt))
 {
  ?>
  <option value="<?php echo htmlentities($row['doctorName']); ?>"><?php echo htmlentities($row['doctorName']); ?></option>
  <?php
 }
}

}
?>
