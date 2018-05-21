package com.satya.dharma.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.satya.dharma.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private  SessionFactory factoy;
	
	@Override
	public List<Customer> listAllCustomers() {
		Session session =factoy.openSession();
		Transaction tx =session.beginTransaction();
		List<Customer> listAll =session.createQuery("from Customer").list();
		tx.commit();
		session.close();
		return listAll;
	}

	@Override
	public void addCustomer(Customer customer) {
		Session session =factoy.openSession();
		Transaction tx =session.beginTransaction();
		session.saveOrUpdate(customer);
		tx.commit();
		session.close();
	}

	@Override
	public void deleteCustomer(int id) {
		Session session =factoy.openSession();
		Transaction tx =session.beginTransaction();
		session.delete(session.get(Customer.class, id));
		tx.commit();
		session.close();
		
	}
	
	

	@Override
	public Customer updateCustomer(Integer id) {

		Session session=factoy.openSession();
		Customer cust =session.get(Customer.class, id);
		session.close();
		return cust;
	}

}
