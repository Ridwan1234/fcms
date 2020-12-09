<div class="span3">
					<div class="sidebar">


<?php
$query = mysqli_query($con, "SELECT * FROM doctors where id = $_SESSION[id]");
while ($row = mysqli_fetch_assoc($query)) {
 ?>
<ul class="widget widget-menu unstyled">

	<li>
		<a href="dashboard.php">
			<i class="menu-icon icon-group"></i>
			Dashboard
		</a>
	</li>
							<li>
								<a class="collapsed" data-toggle="collapse" href="#togglePages">
									<i class="menu-icon icon-cog"></i>
									<i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
									Manage Appointments
								</a>
								<ul id="togglePages" class="collapse unstyled">
									<li>
										<a href="notprocess-complaint.php">
											<i class="icon-tasks"></i>
											<?php

													echo "Not Yet Process";
											 ?>

											<?php
$rt = mysqli_query($con,"SELECT * FROM appointment where userId='".$_SESSION['id']."' and status is null");
$num1 = mysqli_num_rows($rt);
{?>

											<b class="label orange pull-right"><?php echo htmlentities($num1); ?></b>
										<?php } ?>
										</a>
									</li>
									<li>
										<a href="inprocess-complaint.php">
											<i class="icon-tasks"></i>
											Pending Appointments
                   <?php
  $status="in Process";
$rt = mysqli_query($con,"SELECT * FROM appointment where userId='".$_SESSION['id']."' and  status='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label orange pull-right"><?php echo htmlentities($num1); ?></b>
<?php } ?>
										</a>
									</li>
									<li>
										<a href="closed-complaint.php">
											<i class="icon-inbox"></i>
											Closed Appointments
	     <?php
  $status="closed";
$rt = mysqli_query($con,"SELECT * FROM appointment where userId='".$_SESSION['id']."' and  status='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label green pull-right"><?php echo htmlentities($num1); ?></b>


										</a>
									</li>
								</ul>
							</li>

							<li>
								<a href="check-drugs.php">
									<i class="menu-icon icon-group"></i>
									Check Available Drugs
								</a>
							</li>
							<li>
								<a href="logout.php">
									<i class="menu-icon icon-signout"></i>
									Logout
								</a>
							</li>
						<?php }} ?>
</ul>


					</div><!--/.sidebar-->
				</div><!--/.span3-->
