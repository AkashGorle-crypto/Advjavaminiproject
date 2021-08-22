<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="refresh" content="5">
<title>Insert title here</title>
</head>
<body>
<%
 response.setHeader("Cache-Control","no-cache, no-store, must-validate");
response.setHeader("Pragma","no-cache");
String username = null;
Cookie [] cookies = request.getCookies();
if(cookies != null){
	for(Cookie c:cookies){
		if(c.getName().equals("username")){
			username = c.getValue();
		}
	}
} 
if(username==null){
	response.sendRedirect("login.jsp");
}
else{
	out.print("<h2> Are You sure want to log out... </h2>");
	out.print("<h4> Log out anyway... </h4>");
	out.print("<h3><a href='logout'>Logout</a></h3>");
} 






%>
</body>
</html>