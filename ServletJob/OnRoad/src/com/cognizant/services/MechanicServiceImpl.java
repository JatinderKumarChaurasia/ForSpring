package com.cognizant.services;

import com.cognizant.bean.Mechanic;
import com.cognizant.dao.MechanicDAO;
import com.cognizant.dao.MechanicDAOImpl;

public class MechanicServiceImpl implements MechanicService {

	private static MechanicService mechanicServiceImpl;

	/* (non-Javadoc)
	 * @see com.cognizant.services.MechanicService#getInstance()
	 */
	public static MechanicService getInstance() {
		if (mechanicServiceImpl == null) {
			mechanicServiceImpl = new MechanicServiceImpl();
			return mechanicServiceImpl;
		}
		return mechanicServiceImpl;
	}

	private MechanicServiceImpl() {
	}
	
	MechanicDAO dao = MechanicDAOImpl.getInstance();
	
	/* (non-Javadoc)
	 * @see com.cognizant.services.MechanicService#addNewMechanicSignUp(com.cognizant.bean.Mechanic)
	 */
	@Override
	public String addNewMechanicSignUp(Mechanic mechanic){
		return dao.AddNewMechanicSignUp(mechanic);
	}

}
