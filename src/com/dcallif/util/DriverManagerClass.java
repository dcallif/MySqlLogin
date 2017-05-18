package com.dcallif.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverManagerClass 
{
	String driverName = "com.mysql.jdbc.Driver";
	Connection con = null;
	
	public DriverManagerClass() 
	{
		try 
		{
			//Loading Driver for MySql
			Class.forName( driverName );
		} 
		catch (ClassNotFoundException e) 
		{
			System.out.println( e.toString() );
		}
	}
	
	//Tries to make a new connection to specified database
	public Connection createConnection(String connectionUrl, String userName, String userPass) 
	{
		try 
		{
			con = DriverManager
					.getConnection(connectionUrl,userName,userPass);
			System.out.println( "******* Connection created successfully........" );
		} 
		catch(SQLException e) 
		{
			System.out.println( e.toString() );
		}
		return con;
	}
	
	//Tries to close a database connection
	public void closeConnection()
	{
		try
		{
			this.con.close();
			System.out.println( "******* Connection closed Successfully........." );
		}
		catch(Exception e)
		{
			System.out.println( e.toString() );
		}
	}
}