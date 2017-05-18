<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.dcallif.util.DriverManagerClass"%>
<%@page import="java.sql.ResultSet"%>
<%
	String userName = request.getParameter("userToDelete");

	DriverManagerClass driverManager = new DriverManagerClass();

	Connection con = driverManager.createConnection("jdbc:mysql://127.0.0.1:3306/employees", "root", "admin");
	Statement st = con.createStatement();
	String queryAccount = new String();
	System.out.println(userName);
	try {
		queryAccount = "delete from EMPLOYEE where ID='" + userName + "'";
		st.executeUpdate( queryAccount );

		driverManager.closeConnection();
		response.sendRedirect("userView.jsp");
	} catch (Exception e) {
		out.println("Invalid user info <a href='index.jsp'>please try again</a>");
		driverManager.closeConnection();
	}
%>
