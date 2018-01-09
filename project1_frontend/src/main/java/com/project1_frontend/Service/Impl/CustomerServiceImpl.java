package com.project1_frontend.Service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1_frontend.Dao.CustomerDao;
import com.project1_frontend.Service.CustomerService;
import com.project1_frontend.model.Customer;
import com.project1_frontend.model.User;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
private CustomerDao customerDao;
	public void registerCustomer(Customer customer) {
		customerDao.registerCustomer(customer);

	}
	public boolean isEmailValid(String email) {
		// TODO Auto-generated method stub
		return customerDao.isEmailValid(email);
	}
	public boolean isUsernameValid(String username) {
		// TODO Auto-generated method stub
		return customerDao.isUsernameValid(username);
	}

	public User getUser(String username) {
		return customerDao.getUser(username);
	}
	
}