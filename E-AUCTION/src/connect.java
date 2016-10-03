package com.senior;
 import javax.swing.*;
import java.sql.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;

public class connect{
	
	private Connection connection = null;
	private Statement statement   = null;
	
	public  connect(){}
	
	public Statement getcon()
	{
		try {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
			
				catch(ClassNotFoundException ea) {}
				
				catch(Exception e) {}
				try {
					
					connection = DriverManager.getConnection("jdbc:odbc:db");
					statement  = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
				
				}
				
				catch(SQLException SQLe) {}
				return statement;
	}
	public void concl()
	{
		try {
					
			statement.close();
			connection.close();
				
				}
				
				catch(SQLException SQLe) {}
			
	}
	} 