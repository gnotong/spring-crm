package com.notgabs.http;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.notgabs.dao.CustomerDAO;
import com.notgabs.entity.Customer;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerDAO customerDAO;

	@RequestMapping("/home")
	public String index() {
		return "index";
	}

	@RequestMapping("/customers")
	public String list(Model model) {
		
		List<Customer> customers = customerDAO.getCustomers();
		
		model.addAttribute("customers", customers);
		
		return "customers";
	}
}
