<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar1.jsp"%>
		<h1>Edit baby name</h1>
		<br>

		<%
			int bId = Integer.parseInt(request.getParameter("id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Baby baby = (Baby) s.get(Baby.class, bId);
		%>


		<form action="UpdateServlet2" method="post">

			<input value="<%=baby.getId()%>" name="id" type="hidden" />

			<div class="form-group">
				<label for="title">Baby Name</label> <input name="babyname" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=baby.getBabyName()%>" />

			</div>
			<div class="form-group">
				<label for="title">Meaning</label> <input name="meaning" required
					type="text" class="form-control" id="meaning"
					aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=baby.getMeaning()%>" />

			</div>
			<div class="form-group">
				<label for="title">Gender</label> <input name="sex" required
					type="text" class="form-control" id="sex"
					aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=baby.getSex()%>" />

			</div>
			<div class="form-group">
				<label for="title">Religion</label> <input name="religion" required
					type="text" class="form-control" id="religion"
					aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=baby.getReligion()%>" />

			</div>
			
			


			

			<div class="container text-center">

				<button type="submit" class="btn btn-success">Save baby name
					</button>
			</div>

		</form>


	</div>
</body>
</html>