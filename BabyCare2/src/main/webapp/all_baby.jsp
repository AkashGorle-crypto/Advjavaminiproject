
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes: Baby Names</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar1.jsp"%>
		<br>
		<h1 class="text-uppercase">All Names:</h1>


		<div class="row">

			<div class="col-12">

				<%
					Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Baby");
				List<Baby> list = q.list();
				for (Baby baby : list) {
				%>

				<div class="card mt-3, img-fluid" >
					<img class="card-img-top m-4 mx-auto" style="max-width:100px;" src="img/babygif.gif" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title">Name :<%= baby.getBabyName() %></h5>
						
						<p ><b class="text-primary">Meaning :<%= baby.getMeaning()  %></b></p>
							<p ><b class="text-primary">Gender :<%= baby.getSex()  %></b></p>
								<p ><b class="text-primary">Religion :<%= baby.getReligion()  %></b></p>
						<div class="container text-center mt-2">
						<a href="DeleteServlet2?id=<%= baby.getId() %>" class="btn btn-danger">Delete</a>
						<a href="edit.jsp?id=<%= baby.getId() %>" class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>


				<%
					}

				s.close();
				%>


			</div>

		</div>


	</div>
</body>
</html>