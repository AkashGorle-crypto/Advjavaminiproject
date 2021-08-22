<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
This is the login page
<form action="login">
<input type="text" placeholder="Username" name="username"></br>
<input type="password" placeholder="Password" name="password"></br>
<input type="submit"value="Submit"></br>
</form>
<a href="index.jsp">Home Page</a>
<%

String message = request.getParameter("message");
if(message != null && !message.isEmpty()){
	out.print("<p style='color:red'>"+message+"</p>");
}
%>

</body>
</html> --%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif; background-color:lightblue}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 15%;
  border-radius: 25%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>
<div style="background-color:tomato;padding:10px;text-align:center;color:aqua">
<h2>Login Page</h2>
</div>
<form action="login">
  <div class="imgcontainer">
    <img src="img/download.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit">Login</button>
    
</form>
<label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:lightblue">
    <button type="button" class="cancelbtn"><a href="index.jsp">Home Page</a></button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>

<%

String message = request.getParameter("message");
if(message != null && !message.isEmpty()){
	out.print("<p style='color:red'>"+message+"</p>");
}
%>


</body>
</html>



