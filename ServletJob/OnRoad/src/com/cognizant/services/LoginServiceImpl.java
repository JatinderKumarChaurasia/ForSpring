package com.cognizant.services;

import com.cognizant.bean.Login;
import com.cognizant.dao.LoginDAO;
import com.cognizant.dao.LoginDAOImpl;

public class LoginServiceImpl implements LoginService {
	
	private static LoginService loginServiceImpl;
	
	public static LoginService getInstance(){
		if(loginServiceImpl == null){
			loginServiceImpl = new LoginServiceImpl();
			return loginServiceImpl;
		}
		return loginServiceImpl;
	}
	
	private LoginDAO dao = LoginDAOImpl.getInstance();
	
	private LoginServiceImpl(){}
	
	/* (non-Javadoc)
	 * @see com.cognizant.services.LoginService#authenticate(com.cognizant.bean.Login)
	 */
	@Override
	public boolean authenticate(Login login){
		return dao.authenticate(login);
	}

}
