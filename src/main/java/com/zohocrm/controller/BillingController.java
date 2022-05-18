package com.zohocrm.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zohocrm.entities.Billing;
import com.zohocrm.services.BillingService;


@Controller
public class BillingController {

	@Autowired
	BillingService billingService;
	@RequestMapping("/genrate")
	public String genrateOneBill(@ModelAttribute("bill") Billing bill,ModelMap model) {
		billingService.genrateOneBill(bill);
		model.addAttribute("bill", bill);
		return "billing_result";
	}
}