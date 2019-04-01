package com.cognizant.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cognizant.bean.Mechanic;
import com.cognizant.util.DBUtils;

public class MechanicDAOImpl implements MechanicDAO {

	private static MechanicDAO mechanicDAOImpl;

	public static MechanicDAO getInstance() {
		if (mechanicDAOImpl == null) {
			mechanicDAOImpl = new MechanicDAOImpl();
			return mechanicDAOImpl;
		}
		return mechanicDAOImpl;
	}

	private MechanicDAOImpl() {}
	
	/* (non-Javadoc)
	 * @see com.cognizant.dao.MechanicDAO#AddNewMechanicSignUp(com.cognizant.bean.Mechanic)
	 */
	@Override
	public String AddNewMechanicSignUp(Mechanic mechanic){
		
		PreparedStatement preparedStatement = null;
		PreparedStatement preparedStatement2 = null;
		
		System.out.println("Adding New Mechanic");
		
		int userId = mechanic.getMechanicId();
		String userName = mechanic.getMechanicName();
		int gender = mechanic.getMechanicGender();
		double latitude = mechanic.getMechanicLatitude();
		double longitude = mechanic.getMechanicLongitude();
		long contactNo = mechanic.getMechanicContactNo();
		String emailId = mechanic.getMechanicEmailId();
		Date dob = mechanic.getMechanicDOB();
		String password = mechanic.getMechanicPassword();
		
		String query = "Insert into mechanic (MECHANIC_ID,MECHANIC_NAME,MECHANIC_DOB,MECHANIC_GENDER,MECHANIC_CONTACT_NO"
				+ ",MECHANIC_EMAIL_ID,MECHANIC_PASSWORD,MECHANIC_LATITUDE,MECHANIC_LONGITUDE) Values(?,?,?,?,?,?,?,?,?)";
		String query1 = "Insert into login(USER_ID,USER_PASSWORD,USER_TYPE) values(?,?,?)";
		
		Connection connection = DBUtils.getConnection();
		try{
			preparedStatement = connection.prepareStatement(query);
			preparedStatement2 = connection.prepareStatement(query1);
			preparedStatement.setInt(1, userId);
			preparedStatement.setString(2, userName);
			preparedStatement.setDate(4,dob);
			preparedStatement.setInt(3, gender);
			preparedStatement.setLong(5, contactNo);
			preparedStatement.setString(6, emailId);
			preparedStatement.setString(7, password);
			preparedStatement.setDouble(8, latitude);
			preparedStatement.setDouble(9, longitude);
			preparedStatement2.setInt(1, userId);
			preparedStatement2.setString(2, password);
			preparedStatement2.setString(3, "M");
			preparedStatement.executeUpdate();
			preparedStatement2.executeUpdate();
			return "success";
		}catch(SQLException sE){
			sE.printStackTrace();
		}finally{
			DBUtils.closeConnection(connection);
		}
		return "failure";
		
	}
}
