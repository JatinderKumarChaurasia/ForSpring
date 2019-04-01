package com.cognizant.bean;

public class Login {

	private int userId;
	private String userPassword;
	private String userType;

	public Login(int userId, String userPassword, String userType) {
		super();
		this.userId = userId;
		this.userPassword = userPassword;
		this.userType = userType;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	@Override
	public String toString() {
		return "Login [userId=" + userId + ", userPassword=" + userPassword + ", userType=" + userType + "]";
	}

}
