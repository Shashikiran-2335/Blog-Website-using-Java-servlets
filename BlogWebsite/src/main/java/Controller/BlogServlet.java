package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.BlogPost;
import data.login;

public class BlogServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve blog posts from the database
    	login user=new login();
    	List<List<String>> blogPosts = null;
		try {
			blogPosts = user.getBlogPosts();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        // Set the retrieved blog posts as an attribute of the request
        request.setAttribute("blogPosts", blogPosts);
        // Forward the request to the JSP for rendering
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }
}
