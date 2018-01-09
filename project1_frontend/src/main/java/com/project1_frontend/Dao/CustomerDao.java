package com.project1_frontend.Dao;

import com.project1_frontend.model.Customer;
import com.project1_frontend.model.User;

public interface CustomerDao {
void registerCustomer(Customer customer);
boolean isEmailValid(String email);
boolean isUsernameValid(String username);
public User getUser(String username);

}

