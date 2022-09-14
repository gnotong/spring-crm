package com.notgabs.service;

import java.util.List;

import com.notgabs.entity.Customer;

public interface CustomerService {
	public List<Customer> getCustomers(int sort);
	public List<Customer> searchCustomers(String filter);

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int id);

	public void deleteCustomer(int id);
}
