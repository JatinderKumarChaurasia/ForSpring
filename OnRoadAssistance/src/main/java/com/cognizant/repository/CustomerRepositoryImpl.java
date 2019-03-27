package com.cognizant.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cognizant.model.Customer;

@Repository("customerRepository")
public class CustomerRepositoryImpl implements CustomerRepository
{
	
	@PersistenceContext
	private EntityManager entityManager;

	/* (non-Javadoc)
	 * @see com.cognizant.repository.CustomerRepository#save(com.cognizant.model.Customer)
	 */
	@Override
	public Customer save(Customer customer) {
		// TODO Auto-generated method stub
		entityManager.persist(customer);
		
		return customer;
	}

}