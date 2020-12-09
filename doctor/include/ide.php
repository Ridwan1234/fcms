<div class="span3">
					<div class="sidebar">


<?php
$query = mysqli_query($con, "SELECT * FROM admin where id = $_SESSION[id]");
while ($row = mysqli_fetch_assoc($query)) {
	$post = $row['post'];
	if ($post=='doctor') {
 ?>
<ul class="widget widget-menu unstyled">

	<li>
		<a href="check-drugs.php">
			<i class="menu-icon icon-group"></i>
			Check Available Drugs
		</a>
	</li>

							<li>
								<a class="collapsed" data-toggle="collapse" href="#togglePages">
									<i class="menu-icon icon-cog"></i>
									<i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
									Manage Complaint
								</a>
								<ul id="togglePages" class="collapse unstyled">
									<li>
										<a href="notprocess-complaint.php">
											<i class="icon-tasks"></i>
											<?php

													echo "OVERVIEW";
											 ?>

											<?php
$rt = mysqli_query($con,"SELECT * FROM tblcomplaints where status is null");
$num1 = mysqli_num_rows($rt);
{?>

											<b class="label orange pull-right"><?php echo htmlentities($num1); ?></b>
										<?php } ?>
										</a>
									</li>
									<li>
										<a href="inprocess-complaint.php">
											<i class="icon-tasks"></i>
											Pending Complaint
                   <?php
  $status="in Process";
$rt = mysqli_query($con,"SELECT * FROM tblcomplaints where status='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label orange pull-right"><?php echo htmlentities($num1); ?></b>
<?php } ?>
										</a>
									</li>
									<li>
										<a href="closed-complaint.php">
											<i class="icon-inbox"></i>
											Closed Complaints
	     <?php
  $status="closed";
$rt = mysqli_query($con,"SELECT * FROM tblcomplaints where status='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label green pull-right"><?php echo htmlentities($num1); ?></b>

										</a>
									</li>
								</ul>
							</li>
						</ul>
					<?php } }elseif ($post =='director')  {
					?>

						<ul class="widget widget-menu unstyled">
							<li>
								<a href="manage-users.php">
									<i class="menu-icon icon-group"></i>
									OVERVIEW
								</a>
							</li>
                                <li><a href="category.php"><i class="menu-icon icon-tasks"></i>Executives </a></li>
                                <li><a href="subcategory.php"><i class="menu-icon icon-tasks"></i>SRA </a></li>
                            </ul><!--/.widget-nav-->
						<ul class="widget widget-menu unstyled">
							<li><a href="user-logs.php"><i class="menu-icon icon-tasks"></i>Voters Log </a></li>

							<li>
								<a href="logout.php">
									<i class="menu-icon icon-signout"></i>
									Logout
								</a>
							</li>
						</ul>
						<?php
						}} ?>

					</div><!--/.sidebar-->
				</div><!--/.span3-->
