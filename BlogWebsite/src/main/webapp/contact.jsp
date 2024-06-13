<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Our Blog</title>
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
        width:50%;
         padding-top:6px;
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
        <p>If you have any questions, suggestions, or feedback, please feel free to contact us using the form below.</p>
        <form id="contactForm">
            <label for="name">Your Name:</label>
            <input type="text" id="name" name="name" required>
            <label for="email">Your Email:</label>
            <input type="email" id="email" name="email" required>
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </div>
    <footer>
        &copy; 2024 Our Blog. All rights reserved.
    </footer>

    <script>
        // Example form submission handling (replace with your own backend code)
        const contactForm = document.getElementById('contactForm');
        contactForm.addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form submission

            // Collect form data
            const formData = new FormData(contactForm);
            const formDataObject = {};
            formData.forEach((value, key) => {
                formDataObject[key] = value;
            });

            // Example: Output form data to console (replace with your own handling)
            console.log('Form data:', formDataObject);

            // Reset form
            contactForm.reset();
        });
    </script>
</body>
</html>
