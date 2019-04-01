package com.cognizant.dao;

import com.cognizant.bean.Login;

public interface LoginDAO {

	public boolean authenticate(Login login);

}