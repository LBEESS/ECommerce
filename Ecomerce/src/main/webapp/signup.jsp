<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="container">
<div class="signup">
<form action="signupaction.jsp" method="post">
<input type="text" name="name" placeholder="enter name" required><br>
<input type="text" name="email" placeholder="enter email" required><br>
<input type="text" name="mobilenumber" placeholder="enter moblile number" required><br>
<select name="securityquestine">
<option value= "what was your first car ?">what was your first car ?</option>
<option value= "what is the name of your first pet ?">what is the name of your first pet ?</option>
<option value= "what is the elementary school you attend ?">what is the elementary school you attend ?</option>
</select><br>

<input type="text" name="answor" placeholder="enter answor" required><br>
<input type="password" name="password" placeholder="enter password" required><br>
<input type="text" name="address" placeholder="enter address" required><br>

<input type="submit" value="signup">
<h2><a href="login.jsp">login</a></h2>
<div class="whysign">
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){%>
<h1>successfully registerd</h1>
	
<%}%>
<%if("invalid".equals(msg)){%>
<h1>somethig want wrong</h1>
	
<%}%>


</div>


</form>
</div>
</div>
</body>
</html>