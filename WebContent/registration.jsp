<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.dcallif.util.DriverManagerClass"%>
<%
String userName = request.getParameter("username");
String password = request.getParameter("password");
String firstName = request.getParameter("firstname");
String lastName = request.getParameter("lastname");
String email = request.getParameter("email");
DriverManagerClass driverManager = new DriverManagerClass();

Connection con = driverManager.createConnection( "jdbc:mysql://127.0.0.1:3306/employees", "root", "admin" );
Statement st = con.createStatement();
int i = st.executeUpdate("insert into EMPLOYEE(FIRST_NAME, LAST_NAME, EMAIL, USER_NAME, PASSWORD) values ('"
                    + firstName
                    + "','"
                    + lastName
                    + "','"
                    + email
                    + "','"
                    + userName
                    + "','"
                    + password
                    + "')");
    if( i > 0 )
    {
        response.sendRedirect("welcome.jsp");
    }
    else
    {
        response.sendRedirect("index.jsp");
    }
%>