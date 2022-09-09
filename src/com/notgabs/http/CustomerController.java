package com.notgabs.http;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.notgabs.entity.Customer;
import com.notgabs.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@GetMapping("/customer/list")
	public String list(Model model) {

		List<Customer> customers = customerService.getCustomers();

		model.addAttribute("customers", customers);

		return "customer-list";
	}

	@GetMapping("/customer/add")
	public String add() {
		return "customer-form";
	}
}
