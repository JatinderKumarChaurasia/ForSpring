package com.cognizant.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {
	
	public static final String url = "jdbc:mysql://localhost:3306/OnRoad";
	public static final String driverName ="com.mysql.jdbc.Driver";
	public static final String userName = "root";
	public static final String password = "root";
	
	public static Connection getConnection(){
		Connection connection = null;
		try{
			Class.forName(driverName);
			connection = DriverManager.getConnection(url,userName,password);
			return connection;
		}catch(ClassNotFoundException | SQLException cNFE){
			cNFE.printStackTrace();
		}
		return null;
	}
	
	public static void closeConnection(Connection connection){
		try{
			connection.close();
		}catch(SQLException sE){
			sE.printStackTrace();
		}
	}
}
