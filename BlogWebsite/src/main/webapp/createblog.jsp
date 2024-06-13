<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script src="http://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>Create a Blog</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            resize: vertical;
        }
        input[type="submit"] {
           background-color: #333;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <div class="container">
        <h2>Create a Blog Post</h2>
        <form action="register" method="POST" >
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>

            <label for="content">Content:</label>
            <textarea id="content" name="content" rows="6" required></textarea>
			<input type="hidden" name="operation" value="blogsubmit">
            

            <input type="submit" value="Submit">
        </form>
            <a href="home.jsp">Home</a>
    </div>
</body>
<script>
if(status=="true")
{
swal("Congrats","Posted","success");
}
if(status=="false")
	swal("","Something went wrong","error")

</script>
</html>
