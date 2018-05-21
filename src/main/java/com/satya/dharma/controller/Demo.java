package com.satya.dharma.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.satya.dharma.model.Customer;
import com.satya.dharma.service.CustomerService;

@Controller
public class Demo {
 
	@Autowired
	public CustomerService ser;
	
	@RequestMapping(value = "/home", method=RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("customer", new Customer());
		model.addAttribute("msg", "Hello How are u?");
        return "home";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list() {
		
		List<Customer> listCustomer = ser.listAllCustomers();
		Map<String, Object> mp =new HashMap<String, Object>();
		mp.put("listCustomer", listCustomer);
		return new ModelAndView("list",mp);
	}
	

	@RequestMapping(value= "/save",method= RequestMethod.POST)
	public String save(@ModelAttribute("customer") Customer customer, BindingResult result) {
		 if (result.hasErrors()) {
	            return "home";
	        }
			ser.addCustomer(customer);
		
		return "redirect:/list";
		
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public  ModelAndView delete_ApprfrmDB(@ModelAttribute Customer customer) {
		
			try {
				ser.deleteCustomer(customer.getId());
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return new ModelAndView("redirect:/list");
	}
	
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView update(@ModelAttribute Customer customer) {
        Customer custUpdate=ser.updateCustomer(customer.getId());
        
        System.err.println(" thae val of id is "+custUpdate.getId());
        Map<String, Object> mp = new HashMap<String,Object>();
        mp.put("edit_cust", custUpdate);
        
        return new ModelAndView("home",mp );
	
	
	}
}
