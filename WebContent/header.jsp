<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "android.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/layout.css" type="text/css">
</head>
<body>
	<div id="header-container">
		<div id="header-logo">
			<a href="homepage.jsp"><img src="images/header/header.png"></a>
		</div>
		
		<%	User user = null;
			if (session.getValue("user") != null ) {
				user = (User)session.getValue("user");
			}
				
		
			if (user == null) {
		%>
			<div id="header-login">
				<jsp:include page="log.jsp" />
			</div>
			<div class="clear"></div>
			</font>
		<%		
			} else {
		%>
			<font color="white">Welcome <%=user.getFirstName() %> <%=user.getLastName() %>
			<a href="logout.jsp">Logout</a></font>
			<div class="clear"></div>
			<% if (user.isAdmin()) {
			%>	
				<a href="register.jsp">Register</a>
			<%
				}
			%>	
		<%		
			}
			response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
			response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
			response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
			response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
		%>
	</div>
	<div id="container" class="constrain">
		<header class="clearfix">
			<nav class="clearfix">
				<div class="menu-top-container">
					<ul id="menu-top" class="menu">
						<li class="menu-item"><a href="homepage.jsp">Home</a></li>
						<li class="menu-item"><a href="projects.jsp">Projects</a></li>
						<li class="menu-item"><a href="members.jsp">Members</a></li>
						<li class="menu-item"><a href="connect.jsp">Connect</a></li>
						<li class="menu-item"><a href="about.jsp">About</a></li>
					</ul>
				</div>
			</nav>
		</header>
	</div>
</body>
</html>