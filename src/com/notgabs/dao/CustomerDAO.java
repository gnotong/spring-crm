package com.notgabs.dao;

import java.util.List;
import com.notgabs.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);
}
