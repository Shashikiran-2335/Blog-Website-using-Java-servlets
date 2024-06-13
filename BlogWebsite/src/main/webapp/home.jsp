<!DOCTYPE html>
<html >
<head>
    <title>Classic Blog</title>
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
            display: flex;
            align-items:center;
            justify-content: space-between;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .search-container {
        width:30%;
            display: flex;
            align-items: center;
        }
        input[type="text"] {
            padding: 8px;
            border-radius: 5px;
            border: none;
        }
        button[type="submit"] {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 8px 12px;
            border-radius: 5px;
            cursor: pointer;
        }
         .container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }
        article {
            margin-bottom: 20px;
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
        width:50%;
        height:100%;
        display:flex;
        justify-content:space-around;
        align-items:center;
        }
        
		.cutout{
			display:none;
		}
		.cont-ele{
		height:500px;
		width:700px;
		background-color:tomato;
		}
    </style>
</head>
<body>
  <% String name = (String) session.getAttribute("name"); %>
  <% String email = (String) session.getAttribute("email"); %>
    <% String profile = (name != null) ? name : ""; %>
    <%@ page import="java.util.List" %>
	<%@ page import="data.login" %>
    <nav>
        <div class="left-nav">
        <h3 >Blog Website</h3>
            <a href="home.jsp">Home</a>
            <a href="About.jsp">About</a>
            <a href="contact.jsp">Contact</a>
            <a href="createBlog"  >Create Blog</a>
            <a href="login.jsp" id="li" class="login">Login</a>
            <a href="logout" id="lo" class="login">Logout</a>
        </div>
        <div class="search-container">
            <form action="/search" method="get">
                <input type="text" placeholder="Search..." name="search">
                <button type="submit">Search</button>
            </form>
        </div>
    </nav>
    <div class="container">
    <div class="cont-ele">
        <% 
		login user = new login();
        List<List<String>>  blogPosts=user.getBlogPosts();
        if (blogPosts != null) {
            for(List<String> arr: blogPosts)
			{
			
        %>
        <article>
            <h2><%= arr.get(0) %></h2>
            <p class="date"><%= arr.get(2) %></p>
            <p><%= arr.get(1) %></p>
        </article>
        <% 
            }
        } else {
        %>
        <p>No blog posts available.</p>
        <% } %>
    </div>
    </div>
    <footer>
        <p>&copy; 2024 Classic Blog. All rights reserved.</p>
    </footer>
</body>
<script>
		var profile = '<%= profile %>';
		if(profile.length!=0)
			{
			console.log(profile);
			 var element = document.getElementById("li");
			   element.classList.toggle("cutout");
			// document.getElementById("profile").innerHTML=profile;
			 document.getElementsByClassName("nav-btn").innerHTML="logout";
			}
		else
			{
			var element = document.getElementById("lo");
			   element.classList.toggle("cutout");
			//document.getElementsByClassName("nav-btn").innerHTML="logout";
			document.getElementById("profile").innerHTML="";
			}
		
</script>
</html>







