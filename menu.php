<!-- Menu -->
<ul class="navbar">
	<li><a href="index.php">Home</a></li>
	
	<!-- Officer -->
<?php
	if (!empty($_SESSION['student'])) {
?>
	
		<li><a href="addVehicle.php">Add a Sticker</a></li>
		<li><a href="report.php">Report </a></li>
		<li><a href="changePassword.php">Change Password</a></li>
        <li><a href="logOut.php">Log Out</a></li>
		<!-- Admin -->
<?php
	}
	else if (!empty($_SESSION['admin'])) {
?>
		<li><a href="createOfficer.php">Manage Student Account</a></li>
		<li><a href="addFines.php">Status</a></li>
		<li><a href="lookupVehicle.php">Search Student</a></li>
        <li><a href="logOut.php">Log Out</a></li>
<?php
	}
	else {
?>
		<li><a href="loginStudent.php">Student</a></li>
		<li><a href="loginAdmin.php">Adminstrator</a></li>
<?php
	}
?>
	
</ul>
