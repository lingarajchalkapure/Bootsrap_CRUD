package com.satya.dharma.service;

import java.util.List;

import com.satya.dharma.model.Customer;

public interface CustomerService {


	List<Customer> listAllCustomers();

	public void addCustomer(Customer customer); 
	
	public void deleteCustomer(int id);
	
	
	Customer updateCustomer(Integer id); 

}
