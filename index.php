<?php
session_start();
include_once('header.php');
?>

<section class="main-content">
    <h2>Welcome to Car Sticker Apply System</h2>
    <br>
    <p>
<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "stickerdb";
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (!empty($_SESSION['student'])) {
    $matric_id = $_SESSION['student'];

    // Fetch student details
    $stmt = $conn->prepare("SELECT name, sticker_id, license_expired FROM student WHERE matric_id = ?");
    $stmt->bind_param("i", $matric_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $student = $result->fetch_assoc();
        echo "<br><br>";
        echo "Name: " . htmlspecialchars($student['name']) . "<br>";
        echo "Sticker ID: " . htmlspecialchars($student['sticker_id']) . "<br>";
        echo "License Expired: " . htmlspecialchars($student['license_expired']) . "<br>";
    } else {
        echo "No details found for this student.";
    }

    $stmt->close();
} elseif (!empty($_SESSION['admin'])) {
    echo "You are logged in as an Administrator.<br><br>";
    echo "Student Details:<br>";

    // Fetch all student details except passwords
    $query = "SELECT matric_id, name, sticker_id, license_expired FROM student";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        echo '<table border="1">';
        echo '<tr><th>Matric ID</th><th>Name</th><th>Sticker ID</th><th>License Expired</th></tr>';
        while ($row = $result->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . htmlspecialchars($row['matric_id']) . '</td>';
            echo '<td>' . htmlspecialchars($row['name']) . '</td>';
            echo '<td>' . htmlspecialchars($row['sticker_id']) . '</td>';
            echo '<td>' . htmlspecialchars($row['license_expired']) . '</td>';
            echo '</tr>';
        }
        echo '</table>';
    } else {
        echo "No students found.";
    }

    $result->close();
} else {
    echo "Please log in as a Student or an Administrator.";
}

$conn->close();
?>
    <br><br>
    Use the menu at the top of the website.
    </p>
</section>

<?php
echo "<br><br><br>";
include_once('footer.php');
?>
