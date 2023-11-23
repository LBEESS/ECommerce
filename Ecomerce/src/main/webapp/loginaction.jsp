  <%@page import="pack.connectionprovider" %>
    <%@ page import="java.sql.*" %>
    <% 
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    if("admin@gmail.com".equals(email)&&"admin".equals(password)){
    	session.setAttribute("email", email);
    	response.sendRedirect("admin.jsp");
    	
    }
    else{
    	int z=0;
    	try{
    		Connection con=connectionprovider.getcon();
    		Statement stat=con.createStatement();
    		ResultSet res=stat.executeQuery("select * from userinfo where email='"+email+"'&&password='"+password+"'");
    		while(res.next()){
    			z=1;
    	    	session.setAttribute("email", email);
				response.sendRedirect("home.jsp");
    		}
    		if(z==0){
    			response.sendRedirect("login.jsp?msg=notexist");
    		}
    		
    		
    	}
    	catch(Exception e){
    		response.sendRedirect("login.jsp?msg=invalid");
    		System.out.print(e);
    	}
    }
    %>