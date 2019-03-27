package com.cognizant.model;

import javax.persistence.Column;
import javax.persistence.Id;

public class Mechanic{
	@Id
	@Column(name="MECHANIC_ID")
	private int mechanicId;
	@Column(name="MECHANIC_NAME")
	private String mechanicName;
	@Column(name="MECHANIC_DOB")
	private String mechanicDOB;
	@Column(name="MECHANIC_CONTACTNO")
	private int mechanicContactno;
	@Column(name="MECHANIC_PASSWORD")
	private String mechanicPass;
	@Column(name="MECHANIC_GENDER")
	private String mechanicGender;
	@Column(name="MECHANIC_EMAILID")
	private String mechanicEmailId;
	@Column(name="MECHANIC_LATITUDE")
	private Double mechanicLatitude;
	public Double getMechanicLatitude() {
		return mechanicLatitude;
	}
	public void setMechanicLatitude(Double mechanicLatitude) {
		this.mechanicLatitude = mechanicLatitude;
	}
	public Double getMechanicLongitude() {
		return mechanicLongitude;
	}
	public void setMechanicLongitude(Double mechanicLongitude) {
		this.mechanicLongitude = mechanicLongitude;
	}
	@Column(name="MECHANIC_LONGITUDE")
	private Double mechanicLongitude;
}
