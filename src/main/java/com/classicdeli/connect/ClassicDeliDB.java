package com.classicdeli.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ClassicDeliDB {
	private static Connection con = null;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if (con == null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orderfood","root","30052002Zz");
			System.out.print("connected");
		}
		return con;
	}
}
