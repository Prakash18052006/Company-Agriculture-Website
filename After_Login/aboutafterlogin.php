<?php
    include '../faqs/db_connection.php'; 

    $sql = "SELECT id, question, answer FROM faqs"; 
    $result = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="../faqs/styles.css"> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 
    <title>About</title>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="">
                <img src="../images/logo.png" alt="Krashak Innovative Solution Logo" width="50" height="30"
                    class="d-inline-block align-top">
                    Your Company Name
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0 w-100 justify-content-around">
                    <li class="nav-item">
                        <a class="nav-link" href="./aboutafterlogin.php">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./soil_testafterlogin.html">Soil Test</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./soil_dataafterlogin.html">Soil Data</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./contactafterlogin.html">Contact</a>
                    </li>
                    <a href="../index.html" target="~blank">Go to Logout</a>
                </ul>
            </div>
        </div>
    </nav>
    <div class="faq-section">
        <h1>Frequently Asked Questions</h1>
        <?php
        if ($result->num_rows > 0) {

            while($row = $result->fetch_assoc()) {
                echo "<div class='faq-item' data-id='" . $row["id"] . "'>";
                echo "<h3 class='faq-question'>" . htmlspecialchars($row["question"]) . "</h3>";
                echo "<p class='faq-answer'>" . nl2br(htmlspecialchars($row["answer"])) . "</p>";
                echo "</div>";
            }
        } else {
            echo "<p>No FAQs available.</p>";
        }
        $conn->close();
        ?>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous">
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var faqItems = document.querySelectorAll('.faq-item');
            faqItems.forEach(function(item) {
                var question = item.querySelector('.faq-question');
                var answer = item.querySelector('.faq-answer');
                
                question.addEventListener('click', function() {
                    if (answer.classList.contains('show')) {
                        answer.classList.remove('show'); 
                    } else {
                        document.querySelectorAll('.faq-answer.show').forEach(function(otherAnswer) {
                            otherAnswer.classList.remove('show');
                        });
                        
                        answer.classList.add('show'); 
                    }
                });
            });
        });
    </script>
</body>
</html>