<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="android.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Android Initiative</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	
	<%
		User user = null;
		if (session.getValue("user") != null ) {
			user = (User)session.getValue("user");
		}
	
		if (user != null) {
			out.println("Registration is successful. Welcome " + user.getFirstName() + " " + user.getLastName() + "!");
		}
	%>

</body>
</html>
