package com.project1_frontend.Service;

import com.project1_frontend.model.Customer;
import com.project1_frontend.model.User;


public interface CustomerService {
void registerCustomer(Customer customer);
boolean isEmailValid(String email);
boolean isUsernameValid(String username);
User getUser(String username);
}