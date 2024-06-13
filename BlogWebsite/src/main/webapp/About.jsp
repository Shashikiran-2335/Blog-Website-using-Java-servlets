<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Classic Blog</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        nav {
            background-color: #666;
            color: #fff;
             height:70px;
            padding: 10px 20px;
            text-align: center;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 0 20px;
        }
        h1 {
            margin-top: 0;
        }
        p {
            line-height: 1.6;
        }
        form {
            margin-top: 20px;
            border: 1px solid #ccc;
            padding: 20px;
            background-color: #fff;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
         .left-nav{
         padding-top:6px;
        width:50%;
        display:flex;
        justify-content:space-around;
        align-items:center;
        }
    </style>
    
</head>
<body>
    <nav>
    <div class="left-nav">
        <h3 >Blog Website</h3>
            <a href="home.jsp">Home</a>
            <a href="About.jsp">About</a>
            <a href="contact.jsp">Contact</a>
            <a href="login.jsp">Login</a>
        </div>
    </nav>
    <div class="container">
        <h2>About Us</h2>
        <p>Welcome to Our Blog! We are passionate about sharing knowledge and ideas with our readers.</p>
        <p>Our blog covers a wide range of topics, including technology, science, health, lifestyle, and much more.</p>
        <p>Our team of writers is dedicated to providing high-quality content that is informative, engaging, and enjoyable to read.</p>
        <p>Feel free to explore our articles and join the conversation by leaving comments and sharing your thoughts.</p>
        <p>Thank you for visiting Our Blog!</p>
    </div>
       
    <footer>
        <p>&copy; 2024 Classic Blog. All rights reserved.</p>
    </footer>
</body>
</html>