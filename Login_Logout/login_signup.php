<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/styles.css">
    <title>Login/Signup</title>
</head>
<body>
    <div class="container">
        <!-- Signup Form -->
        <div class="form-container">
            <h2>Signup</h2>
            <form id="signup-form">
                <label for="signup-username">Username:</label>
                <input type="text" id="signup-username" name="username" placeholder="Enter username" required>
                <label for="signup-password">Password:</label>
                <input type="password" id="signup-password" name="password" placeholder="Enter password" required>
                <button type="submit">Sign Up</button>
            </form>
        </div>

        <!-- Login Form -->
        <div class="form-container">
            <h2>Login</h2>
            <form id="login-form">
                <label for="login-username">Username:</label>
                <input type="text" id="login-username" name="username" placeholder="Enter username" required>
                <label for="login-password">Password:</label>
                <input type="password" id="login-password" name="password" placeholder="Enter password" required>
                <button type="submit">Log In</button>
            </form>
        </div>
    </div>

    <script>
        document.getElementById("signup-form").addEventListener("submit", async (event) => {
            event.preventDefault();

            const username = document.getElementById("signup-username").value;
            const password = document.getElementById("signup-password").value;

            try {
                const response = await fetch('signup.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: new URLSearchParams({ username, password }),
                });

                if (response.status === 409) {
                    const result = await response.json();
                    alert(result.error);
                } else if (response.status === 201) {
                    window.location.href = "../Before_Login/soil_test.php";
                }
            } catch (error) {
                console.error('Error:', error);
            }
        });

        // Login Form Submission
        document.getElementById("login-form").addEventListener("submit", async (event) => {
            event.preventDefault();

            const username = document.getElementById("login-username").value;
            const password = document.getElementById("login-password").value;

            try {
                const response = await fetch('login.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: new URLSearchParams({ username, password }),
                });

                const result = await response.json();
                if (response.status === 200) {
                    window.location.href = "../After_Login/soil_dataafterlogin.html";
                } else {
                    alert(result.error);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>