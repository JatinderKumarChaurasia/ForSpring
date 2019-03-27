package com.cognizant.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customers")
public class Customer {
	@Id
	@Column(name="CUSTOMER_ID")
	private long customerId;
	@Column(name="CUSTOMER_NAME")
	private String customerName;
	@Column(name="CUSTOMER_DOB")
	private String customerDOB;
	@Column(name="CUSTOMER_CONTACTNO")
	private Long customerContactNo;
	@Column(name="CUSTOMER_PASSWORD")
	private String customerPassword;
	@Column(name="CUSTOMER_GENDER")
	private String customerGender;
	@Column(name="CUSTOMER_EMAILID")
	private String customerEmailId;

	public long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(long customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerDOB() {
		return customerDOB;
	}

	public void setCustomerDOB(String customerDOB) {
		this.customerDOB = customerDOB;
	}

	public Long getCustomerContactNo() {
		return customerContactNo;
	}

	public void setCustomerContactNo(Long customerContactNo) {
		this.customerContactNo = customerContactNo;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}

	public String getCustomerGender() {
		return customerGender;
	}

	public void setCustomerGender(String customerGender) {
		this.customerGender = customerGender;
	}

	public String getCustomerEmailId() {
		return customerEmailId;
	}

	public void setCustomerEmailId(String customerEmailId) {
		this.customerEmailId = customerEmailId;
	}

}
