<%@page import="com.dcallif.util.DriverManagerClass"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>All Users</title>
</head>
<%
	String userName = (String) session.getAttribute("userName");
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
					<th colspan="4">User view Database Table</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Id:</td>
					<td>First Name:</td>
					<td>Last Name:</td>
					<td>User Name:</td>
					<td>Email:</td>
					<td>Delete</td>
				</tr>
				<%
					while (resultset.next()) {
				%>
				<td><%=resultset.getString(1)%></td>
				<td><%=resultset.getString(2)%></td>
				<td><%=resultset.getString(3)%></td>
				<td><%=resultset.getString(4)%></td>
				<td><%=resultset.getString(5)%></td>
				<td><input type="submit" value="<%=resultset.getString(5)%>" name="userToDelete" /></td>
			</tbody>
			<% 
				} driveManager.closeConnection();
			%>
		</table>
		<a href='logout.jsp'>Log out</a>
	</form>
</body>
</html>