<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Sign Up Page</title>
    <style>
        body {
            background-image: url(https://extensaodigital.com/wp-content/uploads/2019/09/A-Import%C3%A2ncia-das-M%C3%ADdias-Sociais-Para-o-Seu-Neg%C3%B3cio.jpg); /* Replace 'path/to/your/image.jpg' with the actual path to your image file */
            background-size: cover; /* Cover the entire screen */
            font-family: Arial, sans-serif;
        }

        #container {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff; /* White Container Background */
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
    </style>
</head>
<body>

    <div id="container">
        <h2>Sign Up</h2>
        <form action="signinsuccess" method="post">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required pattern="[A-Za-z\s]{3,50}">

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required pattern="[A-Za-z\s]{3,50}">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Password@123" required>

            <input type="submit" value="Sign Up">
        </form>
    </div>

</body>
</html>