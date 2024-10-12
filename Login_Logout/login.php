<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "databasekic";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Sanitize user input
    $username = htmlspecialchars($_POST['username']);
    $password = htmlspecialchars($_POST['password']);

    // Prepare statement to check username
    $stmt = $conn->prepare("SELECT password FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            // Verify password with hashed password
            if (password_verify($password, $row['password'])) {
                // Send JSON response with success message
                header('Content-Type: application/json');
                echo json_encode(["message" => "Login successful!"]);
                http_response_code(200);
            } else {
                // Incorrect password response
                header('Content-Type: application/json');
                echo json_encode(["error" => "Incorrect password."]);
                http_response_code(401);
            }
        } else {
            // Username not found response
            header('Content-Type: application/json');
            echo json_encode(["error" => "Username not found."]);
            http_response_code(404);
        }
    } else {
        // Error executing the query
        header('Content-Type: application/json');
        echo json_encode(["error" => "Error executing query."]);
        http_response_code(500);
    }

    $stmt->close();
}

$conn->close();
?>
