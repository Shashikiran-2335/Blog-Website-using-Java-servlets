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
        input[type="email"],
        input[type="password"] {
        margin-top:20px;
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
        .anchor-btns{
        margin-top:10px;
        width:100%;
        display:flex;
        justify-content:space-between;
        }
    </style>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

    <div class="login-container">
        <h2>Login</h2>
        <form action="register" method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="hidden" name="operation" value="login">
            <button type="submit">Login</button>
            <div class="anchor-btns">
            <a href="signup.jsp">Signup</a>
            <a href="forgot.jsp">ForgotPassword?</a>
            </div>
            <a href="home.jsp" style="align-text:center;">back</a>
        </form>
    </div>
</body>
<script>
var status=document.getElementById('status').value;
if(status=="false")
	swal("","Email or Password is wrong","error")
	

</script>
</html>
