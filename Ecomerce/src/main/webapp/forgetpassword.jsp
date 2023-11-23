<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<div class="forgetpassword">
<form action="forgetpasswordaction.jsp" method="post">
<input type="text" name="email" placeholder="enter email" required><br>
<input type="text" name="mobilenumber" placeholder="enter moblile number" required><br>
<select name="securityquestine">
<option value= "what was your first car ?">what was your first car ?</option>
<option value= "what is the name of your first pet ?">what is the name of your first pet ?</option>
<option value= "what is the elementary school you attend ?">what is the elementary school you attend ?</option>
</select><br>

<input type="text" name="answor" placeholder="enter answor" required><br>
<input type="password" name="newpassword" placeholder="enter new password" required><br>
<input type="submit"value="submit">
</form>
</div>
<%String msg=request.getParameter("msg");
if("invalid".equals(msg)){%>
	<h2>invalid details</h2>
<% }%>
<% if("done".equals(msg)){%>
	<h2>done successfully</h2>
<% }%>


</body>
</html>