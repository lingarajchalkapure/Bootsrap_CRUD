package com.satya.dharma.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.satya.dharma.dao.CustomerDao;
import com.satya.dharma.model.Customer;

@Component
public class CustomerSerImpl implements CustomerService {

	@Autowired
    CustomerDao dao;
	
	@Override
	public List<Customer> listAllCustomers() {
		return dao.listAllCustomers();
	}

	@Override
	public void addCustomer(Customer customer) {

		dao.addCustomer(customer);
	}

	@Override
	public void deleteCustomer(int id) {
		dao.deleteCustomer(id);
		
	}

	@Override
	public Customer updateCustomer(Integer id) {
		
		return dao.updateCustomer(id);
	}

}
