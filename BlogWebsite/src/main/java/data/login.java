package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.sql.Date;

public class login {

	public String insert(String email, String username, String password) throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogwebsite", "root", "shashi@2335");

		PreparedStatement ps = con.prepareStatement("insert into login values(?,?,?)");
		ps.setString(1, email);
		ps.setString(2, username);
		ps.setString(3, password);
		try {
			ps.execute();
			return "true";

		} catch (Exception e) {
		}
		return "false";
	}

	public String loginverify(String username, String password) throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogwebsite", "root", "shashi@2335");
		Statement st = con.createStatement();
		try {
			ResultSet res = st.executeQuery("select * from login where email=" + "'" + username + "'" + " and password="
					+ "'" + password + "'");

			if (res.next())
				return "true";
		} catch (Exception e) {
			return "false";
		}
		return "false";

	}

	public String getusername(String email) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogwebsite", "root", "shashi@2335");
		Statement st = con.createStatement();
		ResultSet res = st.executeQuery("select username from login where email=" + "'" + email + "'");
		try
		{
			res.next();	
		}
		catch(Exception e)
		{
			return "false";
		}
		return res.getString("username");
	}

	public String updatePassword(String email, String password)throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogwebsite", "root", "shashi@2335");
		Statement st = con.createStatement();
		try
		{
		st.executeUpdate("update login set password="+"'"+password+"' where email=" + "'" + email + "'");
			
		}
		catch(Exception e)
		{
			return "false";
		}
		return "true";
	}

	public String insertblog(String title, String content, String email, String username) throws SQLException, ClassNotFoundException  {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogwebsite", "root", "shashi@2335");
		 
		PreparedStatement ps = con.prepareStatement("insert into blog_post values(?,?,?,?,?)");
		ps.setString(1, title);
		ps.setString(2, content);
		ps.setString(3, email);
		ps.setDate(4, new Date(0));
		ps.setString(5,username);
		try {
			ps.execute();
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

	public List<List<String>>  getBlogPosts()throws SQLException, ClassNotFoundException  {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogwebsite", "root", "shashi@2335");
		Statement st = con.createStatement();
		ResultSet res=st.executeQuery("select title,content,posted_date from blog_post");
		List<List<String>> arr=new  ArrayList<>();
		while(res.next())
		{
			
			arr.add(Arrays.asList(res.getString("title"),res.getString("content"),res.getString("posted_date")));
		}
		//System.out.println(arr);
		return arr;
	}
}
