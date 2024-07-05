<?php
	include_once('header.php');
	
	$_SESSION['student'] = '';
	$_SESSION['admin'] = '';
	
	// redirect to home
	header('Location: index.php');
?>

<?php
	include_once('footer.php');
?>