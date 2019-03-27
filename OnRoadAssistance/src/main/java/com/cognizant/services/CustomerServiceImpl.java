package com.cognizant.services;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.cognizant.model.Customer;
import com.cognizant.repository.CustomerRepository;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService
{
	
	@Autowired
	private CustomerRepository customerRepository;

	/* (non-Javadoc)
	 * @see com.cognizant.services.ExerciseService#findAllActivities()
	 */
	

	/* (non-Javadoc)
	 * @see com.cognizant.services.CustomerService#save(com.cognizant.model.Customer)
	 */
	@Override
	@Transactional
	public Customer save( Customer customer) {
		
		
		customerRepository.save(customer);
		
		return customer;
		// TODO Auto-generated method stub
		
	}
}
