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

    // Fetch vehicle details
    $stmt = $conn->prepare("SELECT vehicle_type, vehicle_colour, vehicle_brand, plate_no, insurance_expired FROM vehicle WHERE matric_id = ?");
    $stmt->bind_param("i", $matric_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $vehicle = $result->fetch_assoc();
        echo "<br>Vehicle Details:<br>";
        echo "Vehicle Type: " . htmlspecialchars($vehicle['vehicle_type']) . "<br>";
        echo "Vehicle Colour: " . htmlspecialchars($vehicle['vehicle_colour']) . "<br>";
        echo "Vehicle Brand: " . htmlspecialchars($vehicle['vehicle_brand']) . "<br>";
        echo "Plate No: " . htmlspecialchars($vehicle['plate_no']) . "<br>";
        echo "Insurance Expired: " . htmlspecialchars($vehicle['insurance_expired']) . "<br>";
    } else {
        echo "No vehicle details found for this student.";
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
        echo '<tr><th>Matric ID</th><th>Name</th><th>Sticker ID</th><th>License Expired</th><th>Vehicle Type</th><th>Vehicle Colour</th><th>Vehicle Brand</th><th>Plate No</th><th>Insurance Expired</th></tr>';
        while ($row = $result->fetch_assoc()) {
            $matric_id = $row['matric_id'];

            // Fetch vehicle details for each student
            $stmt = $conn->prepare("SELECT vehicle_type, vehicle_colour, vehicle_brand, plate_no, insurance_expired FROM vehicle WHERE matric_id = ?");
            $stmt->bind_param("i", $matric_id);
            $stmt->execute();
            $vehicle_result = $stmt->get_result();
            $vehicle = $vehicle_result->fetch_assoc();

            echo '<tr>';
            echo '<td>' . htmlspecialchars($row['matric_id']) . '</td>';
            echo '<td>' . htmlspecialchars($row['name']) . '</td>';
            echo '<td>' . htmlspecialchars($row['sticker_id']) . '</td>';
            echo '<td>' . htmlspecialchars($row['license_expired']) . '</td>';
            echo '<td>' . htmlspecialchars($vehicle['vehicle_type'] ?? 'N/A') . '</td>';
            echo '<td>' . htmlspecialchars($vehicle['vehicle_colour'] ?? 'N/A') . '</td>';
            echo '<td>' . htmlspecialchars($vehicle['vehicle_brand'] ?? 'N/A') . '</td>';
            echo '<td>' . htmlspecialchars($vehicle['plate_no'] ?? 'N/A') . '</td>';
            echo '<td>' . htmlspecialchars($vehicle['insurance_expired'] ?? 'N/A') . '</td>';
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
