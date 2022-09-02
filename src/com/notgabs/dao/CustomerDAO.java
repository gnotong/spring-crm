package com.notgabs.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.notgabs.entity.Customer;

@Repository
public interface CustomerDAO {
	public List<Customer> getCustomers();
}
