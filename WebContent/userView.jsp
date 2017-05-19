<%@page import="com.dcallif.util.DriverManagerClass"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>All Users</title>
</head>
<%
	String userName = (String) session.getAttribute("userName");
	if ((userName == null) || (userName == "")) {
		response.sendRedirect("success.jsp");
	}
%>
<body>
	<%
		DriverManagerClass driveManager = new DriverManagerClass();
		Connection con = driveManager.createConnection("jdbc:mysql://127.0.0.1:3306/employees", "root", "admin");

		Statement statement = con.createStatement();
		ResultSet resultset = statement
				.executeQuery("select * from employee where USER_NAME != '" + userName + "'");
	%>
	<form method="post" action="crud.jsp">
		<table border="2" width="30%" cellpadding="3">
			<thead>
				<tr>
					<th colspan="5">All users in table (except you)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Id:</td>
					<td>First Name:</td>
					<td>Last Name:</td>
					<td>Email:</td>
					<td>User Name:</td>
				</tr>
				<%
					while (resultset.next()) {
				%>
				<td><%=resultset.getString(1)%></td>
				<td><%=resultset.getString(2)%></td>
				<td><%=resultset.getString(3)%></td>
				<td><%=resultset.getString(4)%></td>
				<td><%=resultset.getString(5)%></td>
			</tbody>
			<%
				}
				driveManager.closeConnection();
			%>
		</table>
		<a href='logout.jsp'>Log out</a> <a><input type="text"
			name="userToDelete" required value="" /> <input type="submit"
			value="Delete" /></a>
	</form>
</body>
</html>