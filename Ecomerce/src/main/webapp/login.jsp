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
<div class="singup">
<form action="loginaction.jsp" method="post">
<input type="text" name="email" placeholder="enter email" required><br>
<input type="password" name="password" placeholder="enter password" required><br>
<input type="submit"value="login">
<h2><a href="signup.jsp">sign up</a></h2>
<h2><a href="forgetpassword.jsp">forget password</a></h2>
<div class="whysignlogin">
<% String msg=request.getParameter("msg");
if("notexist".equals(msg)){%>
	<h2>incorrect user name or password</h2>
	
<% }%>
<% if("invalid".equals(msg)){%>
	<h2>something want wrong</h2>
	
<% }%>

</div>
</form>
</div>
</div>

</body>
</html>