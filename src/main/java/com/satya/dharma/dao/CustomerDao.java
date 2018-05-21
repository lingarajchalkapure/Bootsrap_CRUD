package com.satya.dharma.dao;

import java.util.List;

import com.satya.dharma.model.Customer;

public interface CustomerDao {

	List<Customer> listAllCustomers();

	public void addCustomer(Customer customer); 
	
	public void deleteCustomer(int id);
	
	
	Customer updateCustomer(Integer id); 
}
