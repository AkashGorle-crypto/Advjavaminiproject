<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Names</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar1.jsp"%>
		<br>

		<h1>Please fill your note detail</h1>
		<br>

		<!-- this is add form  -->

		<form action="SaveServlet2" method="post">

			<div class="form-group">
				<label for="title">Baby Name</label> 
				<input 
				name="babyname"
				required 
				type="text"
				class="form-control" 
				id="babyname" 
				aria-describedby="emailHelp"
				placeholder="Enter here" />

			</div>
			<div class="form-group">
				<label for="title">Meaning</label> 
				<input 
				name="meaning"
				required 
				type="text"
				class="form-control" 
				id="meaning" 
				aria-describedby="emailHelp"
				placeholder="Enter here" />

			</div>
			
			<div class="form-group">
				<label for="title">Gender</label> 
				<input 
				name="sex"
				required 
				type="text"
				class="form-control" 
				id="sex" 
				aria-describedby="emailHelp"
				placeholder="Enter here" />

			</div>
			
			<div class="form-group">
				<label for="title">Religion</label> 
				<input 
				name="religion"
				required 
				type="text"
				class="form-control" 
				id="religion" 
				aria-describedby="emailHelp"
				placeholder="Enter here" />

			</div>

					<div class="form-group">
				
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				
		</form>

	</div>


</body>
</html>