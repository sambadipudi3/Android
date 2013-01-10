<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "android.*" %>
<%
	String userid=request.getParameter("user"); 
	
	String pwd=request.getParameter("pwd"); 
	
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/android","root","root"); 
	Statement st= con.createStatement(); 
	ResultSet rs=st.executeQuery("select * from users where user_id='"+userid+"'"); 
	
	if(rs.next()){ 
		if(rs.getString("password").equals(pwd)){
			User user = new User();
			user.setFirstName(rs.getString("fname"));
			user.setLastName(rs.getString("lname"));
			user.setUserId(rs.getString("user_id"));
			user.setEmail(rs.getString("email"));
			user.setAdmin(rs.getBoolean("admin"));
			session.putValue("user",user);
			response.sendRedirect("members.jsp") ;
		} else { 
			out.println("Invalid password try again");
		} 
	} else {
		out.println("Invalid username");
	}
%>