<%@ page import="java.sql.*"%>

<%
	Class.forName("com.mysql.jdbc.Driver");
%>

<HTML>
<HEAD>
<TITLE>Welcome to the User view Database Table</TITLE>
</HEAD>

<BODY>
	<%
		Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/employees", "root", "admin");

		Statement statement = con.createStatement();
		ResultSet resultset = statement.executeQuery("select * from employee");
	%>
	<center>
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
					<td>Email:</td>
				</tr>
				<%
					while (resultset.next()) {
				%>
				<td><%=resultset.getString(1)%></td>
				<td><%=resultset.getString(2)%></td>
				<td><%=resultset.getString(3)%></td>
				<td><%=resultset.getString(4)%></td>
			</tbody>
			<%
				}
			%>
		</table>
		<a href='logout.jsp'>Log out</a>
	</center>
</body>
</html>