<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="android.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Registration</title>
	</head>
	<body>
		<jsp:include page="header.jsp" />
			<%	
				User user = null;
				if (session.getValue("user") != null ) {	
					user = (User)session.getValue("user");
					if (user.isAdmin()) {
						%>	
						<form action="regis.jsp" method="post">

							Email :<input type="text" name="email" /><br>
							First name :<input type="text" name="fname" /><br>
							Last name :<input type="text" name="lname" /><br>
							User name :<input type="text" name="userid" /><br>
							password :<input type="password" name="pwd" /><br>
							Admin: <input type="checkbox" name="admin" value="True" /><br>
							<input type="submit" />

						</form>
			<%}} else {
				response.sendRedirect("homepage.jsp");
			}%>
		

	</body>
</html>