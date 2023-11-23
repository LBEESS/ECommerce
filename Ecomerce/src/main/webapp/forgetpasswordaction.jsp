<%@page import="pack.connectionprovider" %>
    <%@ page import="java.sql.*" %>
    <%
    String email=request.getParameter("email");
    String mobilenumber=request.getParameter("mobilenumber");
    String securityquestine=request.getParameter("securityquestine");
    String answor=request.getParameter("answor");
    String newpassword=request.getParameter("newpassword");
    int count=0;
    try{
    	Connection con=connectionprovider.getcon();
    	Statement stmt=con.createStatement();
    	ResultSet rs=stmt.executeQuery("select * from userinfo where email='"+email+"'and mubile_No='"+mobilenumber+"'and sequirity_questine='"+securityquestine+"'and answer='"+answor+"'");
    	while(rs.next()){
    		count=1;
    		stmt.executeUpdate("update userinfo set password='"+newpassword+"'where email='"+email+"'");
    		response.sendRedirect("forgetpassword.jsp?msg=done");

    	}
    	if(count==0){
    		response.sendRedirect("forgetpassword.jsp?msg=invalid");
    	}
    	
    }
    catch(Exception e){
    	System.out.println(e);
    }
    %>