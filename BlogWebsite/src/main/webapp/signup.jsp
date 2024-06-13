<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Classic Blog</title>
     <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script src="http://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
        height:300px;
            background-color: #fff;
            padding: 50px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h2 {
            margin-top: 0;
            text-align: center;
        }
        input[type="text"],
        input[type="password"] {
        margin-top:10px;
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
   
        button[type="submit"] {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px;
           
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
        }
        button{
         margin-top:20px;
        }
        button[type="submit"]:hover {
            background-color: #555;
        }
        footer {
            text-align: center;
            margin-top: 20px;
        }
        .arrow-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff; /* Change as needed */
            color: white;
            text-decoration: none;
            border-radius: 25px; /* Adjust border-radius to make it round */
            position: relative;
        }

        /* Style for the arrow icon */
        .arrow-button::after {
            content: '\2190'; /* Unicode arrow character */
            font-size: 18px;
            position: absolute;
            right: 10px;
        }

        /* Hover effect */
        .arrow-button:hover {
            background-color: #0056b3; /* Change as needed */
        }
    </style>
</head>
<body>
    <div class="login-container">
    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <h2>Signup</h2>
        <form action="register" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="hidden" name="operation" value="signup">
            <button type="submit">Signup</button>
            <a href="login.jsp">back</a>
        </form>
    </div>
</body>
<script>
var status=document.getElementById('status').value;
console.log(status);
if(status=="true")
	{
	swal("Congrats","Account Created","success");
	}
if(status=="false")
	{
	console.log(status);
	swal("user already exists","","error")
	}

</script>
</html>
