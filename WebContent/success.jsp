<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Example</title>
</head>
<body>
	<%
		if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
	%>
	You are not logged in
	<br />
	<a href="index.jsp">Please Login</a>
	<%
		} else {
			String firstName = (String) session.getAttribute("firstName");
			String lastName = (String) session.getAttribute("lastName");
			String userName = (String) session.getAttribute("userName");
	%>
	Welcome
	<%=session.getAttribute("firstName") + " " + session.getAttribute("lastName")%>
	<center>
		<table border="2" width="30%" cellpadding="3">
			<thead>
				<tr>
					<th colspan="2">Login Info</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>User Name:</td>
					<td><%=userName%></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><%=firstName%></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><%=lastName%></td>
				</tr>
			</tbody>
		</table>
		<a href='logout.jsp'>Log out</a>
		<a href='userView.jsp'>View All Users</a>
		<%
			}
		%>
	</center>
</body>
</html>