package com.notgabs.service;

import java.util.List;

import com.notgabs.entity.Customer;

public interface CustomerService {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int id);
}
