package com.cognizant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cognizant.bean.Login;
import com.cognizant.util.DBUtils;

public class LoginDAOImpl implements LoginDAO {
	
	private static LoginDAO loginDAOImpl;
	
	public static LoginDAO getInstance(){
		if(loginDAOImpl == null){
			loginDAOImpl = new LoginDAOImpl();
			return loginDAOImpl;
		}
		return loginDAOImpl;
	}

	public LoginDAOImpl(){}
	
	/* (non-Javadoc)
	 * @see com.cognizant.dao.LoginDAO#authenticate(com.cognizant.bean.Login)
	 */
	@Override
	public boolean authenticate(Login login){
		int userId = login.getUserId();
		String password = login.getUserPassword();
		String value = login.getUserType();
		PreparedStatement preparedStatement = null;
		String query ="Select * from login where USER_ID =? and USER_PASSWORD=? and USER_TYPE=?";
		Connection connection = DBUtils.getConnection();
		try {
			
			System.out.println("Inside Login Servlet Block");
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, userId);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, value);
			preparedStatement.executeUpdate();
			return true;
			
		} catch (SQLException se) {
			se.printStackTrace();
			// TODO: handle exception
		}
		return false;
	}
}
