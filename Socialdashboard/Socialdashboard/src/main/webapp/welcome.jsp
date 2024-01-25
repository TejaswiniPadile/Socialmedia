<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Social Media Dashboard</title>
    <style>
        body {
            background-image: url(https://getwallpapers.com/wallpaper/full/b/7/0/318120.jpg); /* Replace 'your-image-url.jpg' with the actual URL or path to your image */
            background-size: cover; /* Ensure the background image covers the entire viewport */
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8); /* White background with some transparency */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            background-color: #ff66b2;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #e64d87;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Social Media Dashboard</h1>
        <a href="Login" class="button">Login</a>
        <a href="signin" class="button">Sign In</a>
    </div>
</body>
</html>