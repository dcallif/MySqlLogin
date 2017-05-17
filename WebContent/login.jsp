<%@page import="com.dcallif.util.DriverManagerClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	
	DriverManagerClass driverManager = new DriverManagerClass();
	
	Connection con = driverManager.createConnection( "jdbc:mysql://127.0.0.1:3306/employees", "root", "admin" );
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery(
			"select * from EMPLOYEE where USER_NAME='" + userName + "' and PASSWORD='" + password + "'");
	if( rs.next() )
	{
		session.setAttribute( "username", userName );
		driverManager.closeConnection();
		response.sendRedirect( "success.jsp" );
	}
	else
	{
		out.println( "Invalid user info <a href='index.jsp'>please try again</a>" );
		driverManager.closeConnection();
	}
%>