package com.cognizant.bean;

import java.sql.Date;

public class Mechanic {

	private int MechanicId;
	private String mechanicName;
	private String mechanicPassword;
	private int mechanicGender;
	private long mechanicContactNo;
	private String mechanicEmailId;
	private Date mechanicDOB;
	private double mechanicLatitude;
	private double mechanicLongitude;
	public Mechanic(int mechanicId, String mechanicName, String mechanicPassword, int mechanicGender,
			long mechanicContactNo, String mechanicEmailId, Date mechanicDOB, double mechanicLatitude,
			double mechanicLongitude) {
		super();
		MechanicId = mechanicId;
		this.mechanicName = mechanicName;
		this.mechanicPassword = mechanicPassword;
		this.mechanicGender = mechanicGender;
		this.mechanicContactNo = mechanicContactNo;
		this.mechanicEmailId = mechanicEmailId;
		this.mechanicDOB = mechanicDOB;
		this.mechanicLatitude = mechanicLatitude;
		this.mechanicLongitude = mechanicLongitude;
	}
	
	
	public long getMechanicContactNo() {
		return mechanicContactNo;
	}


	public Date getMechanicDOB() {
		return mechanicDOB;
	}


	public String getMechanicEmailId() {
		return mechanicEmailId;
	}


	public int getMechanicGender() {
		return mechanicGender;
	}


	public int getMechanicId() {
		return MechanicId;
	}


	public double getMechanicLatitude() {
		return mechanicLatitude;
	}


	public double getMechanicLongitude() {
		return mechanicLongitude;
	}


	public String getMechanicName() {
		return mechanicName;
	}


	public String getMechanicPassword() {
		return mechanicPassword;
	}


	public void setMechanicContactNo(long mechanicContactNo) {
		this.mechanicContactNo = mechanicContactNo;
	}


	public void setMechanicDOB(Date mechanicDOB) {
		this.mechanicDOB = mechanicDOB;
	}


	public void setMechanicEmailId(String mechanicEmailId) {
		this.mechanicEmailId = mechanicEmailId;
	}


	public void setMechanicGender(int mechanicGender) {
		this.mechanicGender = mechanicGender;
	}


	public void setMechanicId(int mechanicId) {
		MechanicId = mechanicId;
	}


	public void setMechanicLatitude(double mechanicLatitude) {
		this.mechanicLatitude = mechanicLatitude;
	}


	public void setMechanicLongitude(double mechanicLongitude) {
		this.mechanicLongitude = mechanicLongitude;
	}


	public void setMechanicName(String mechanicName) {
		this.mechanicName = mechanicName;
	}


	public void setMechanicPassword(String mechanicPassword) {
		this.mechanicPassword = mechanicPassword;
	}


	@Override
	public String toString() {
		return "Mechanic [MechanicId=" + MechanicId + ", mechanicName=" + mechanicName + ", mechanicPassword="
				+ mechanicPassword + ", mechanicGender=" + mechanicGender + ", mechanicContactNo=" + mechanicContactNo
				+ ", mechanicEmailId=" + mechanicEmailId + ", mechanicDOB=" + mechanicDOB + ", mechanicLatitude="
				+ mechanicLatitude + ", mechanicLongitude=" + mechanicLongitude + "]";
	}
	
}
