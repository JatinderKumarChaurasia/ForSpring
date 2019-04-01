package com.cognizant.services;

import com.cognizant.bean.Login;

public interface LoginService {

	public boolean authenticate(Login login);

}