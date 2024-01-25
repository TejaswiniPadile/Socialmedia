<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
    <style>
        body {
            background-image: url(https://img.freepik.com/free-vector/social-media-icons_53876-89125.jpg); /* Replace 'path/to/your/image.jpg' with the actual path to your image file */
            background-size: cover; /* Cover the entire screen */
            font-family: Arial, sans-serif;
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
        }

        #container {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* White Container Background with 80% opacity */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #ff4081; /* Pink Color for Headings */
        }

        label {
            display: block;
            margin: 10px 0;
            color: #333; /* Dark Gray Color for Labels */
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px 0;
            box-sizing: border-box;
            border: 1px solid #ccc; /* Light Gray Border */
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #ff4081; /* Pink Color for Submit Button */
            color: #fff; /* White Text Color for Submit Button */
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #ff0055; /* Darker Pink Color on Hover */
        }

        #error-message {
            color: #ff0000; /* Red Color for Error Message */
            margin-top: 10px;
        }
    </style>
    <script>
        function validateForm() {
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;

            if (email.trim() === '' || password.trim() === '') {
                document.getElementById('error-message').innerText = 'Please fill in all fields.';
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

    <div id="container">
        <h2>Login</h2>
        <form action="loginsuccess" method="post" onsubmit="return validateForm()">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Login">
        </form>
        <div id="error-message"></div>
    </div>

</body>
</html>