
    <%@page import="pack.connectionprovider" %>
    <%@ page import="java.sql.*" %>//this two importing is compalsory for db connection
    <%
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String mobilenumber=request.getParameter("mobilenumber");
    String securityquestine=request.getParameter("securityquestine");
    String answor=request.getParameter("answor");
    String address=request.getParameter("address");
    String password=request.getParameter("password");
    String state="";
    String city="";
    String contry="";
    try{
    	Connection con=connectionprovider.getcon();
    	PreparedStatement stat= con.prepareStatement("insert into userinfo values(?,?,?,?,?,?,?,?,?,?) ");
    	stat.setString(1, name);
    	stat.setString(2, email);
    	stat.setString(3, mobilenumber);
    	stat.setString(4, securityquestine);
    	stat.setString(5, answor);
    	stat.setString(6, address);
    	stat.setString(7, password);
    	stat.setString(8, state);
    	stat.setString(9, city);
    	stat.setString(10, contry);
    	stat.executeUpdate();
    	response.sendRedirect("signup.jsp?msg=valid");//redirect a msg to singup.jsp(msg valid is passing to url)
    	
    }
    catch (Exception e){
    	System.out.print(e);
    	response.sendRedirect("signup.jsp?msg=valid");
    }
    %>
