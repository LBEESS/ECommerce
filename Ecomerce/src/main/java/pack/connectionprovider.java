package pack;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectionprovider {
public static Connection getcon() {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "admin");
		return con;
	} catch (Exception e) {
System.out.println(e);
return null;
}
	
}
}
