<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.*"%>
    <%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
<%@include file="navbar.jsp"%>
</head>
<body bgcolor="lightyellow">
   <table width="500" border="1"><tr><th>BABYNMAE</th><th>MEANING</th><th>GENDER</th><th>RELIGION</th>
	</tr>
        <%
					Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Baby");
				List<Baby> list = q.list();
				for (Baby baby : list) {
			
				out.println("<tr><td>"+baby.getBabyName()+
					"</td><td>"+baby.getMeaning() +"</td><td>"+baby.getSex()+
					"</td><td>"+baby.getReligion()+"</td><tr>");

				
					}

				s.close();
				%>
				
        
    </table>
</body>
</html>


				

						
