<?php
include_once('header.php');

   

	
	if (isset($_POST['username']) && isset($_POST['password'])) {
        $matric_id = $_POST['username'];
        $password = $_POST['password'];

    // Database connection
$db= new PDO('mysql:host=localhost;dbname=stickerdb', "root", "");

		

// Query the officer table, check if credentials are valid
$query = "SELECT COUNT(*) FROM student WHERE matric_id = '$matric_id' AND Password = '$password'";
$login_result = $db->query($query)->fetchColumn();
if ($login_result > 0) {
    // Successfully logged in
    $_SESSION['admin'] = '';
    $_SESSION['student'] = $matric_id;
			
			// redirect to home
			header('Location: index.php');
		} 
	}
?>
	


<section class="main-content">
    <h2>Log In as Student</h2>
</section>

<form action="loginStudent.php" method="post">
    <div class="login-container">
        <label for="username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" id="username" required>
        <br><br>
        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" id="password" required>
        <br><br>
        <?php 
        	
        if (isset($_POST['username'])) {
            echo("<br>Invalid credentials<br>");
        }
?>
        <button type="submit">Login</button>
    </div>
</form>

<?php include_once('footer.php'); ?>