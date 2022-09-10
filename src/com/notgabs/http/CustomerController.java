package com.notgabs.http;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.notgabs.entity.Customer;
import com.notgabs.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@GetMapping("/list")
	public String list(Model model) {

		List<Customer> customers = customerService.getCustomers();

		model.addAttribute("customers", customers);

		return "customer-list";
	}

	@GetMapping("/add")
	public String add(Model model) {
		model.addAttribute("customer", new Customer());
		return "customer-form";
	}

	@PostMapping("/save")
	public String save(@ModelAttribute("customer") Customer customer) {
		customerService.saveCustomer(customer);
		return "redirect:/customer/list";
	}
	
	@GetMapping("/{customerId}/edit")
	public String edit(@PathVariable("customerId") int id, Model model) {
		Customer customer = customerService.getCustomer(id);
		
		model.addAttribute("customer", customer);
		
		return "customer-form";
	}
}
