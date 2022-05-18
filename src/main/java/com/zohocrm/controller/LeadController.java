package com.zohocrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.services.ContactService;
import com.zohocrm.services.LeadService;
import com.zohocrm.utility.EmailService;

@Controller
public class LeadController {
  @Autowired
  LeadService leadService;
  
  @Autowired
  ContactService contactService;
  @RequestMapping("/createlead")
  public String saveCreateOneLead() {
	  
	  return "create_lead";
  }
  @RequestMapping("/saveLead")
  public String saveOneLead(@ModelAttribute("lead")Lead lead,ModelMap model) {
	  leadService.saveOneLead(lead);
	  model.addAttribute("lead",lead);
	  return "lead_info";
	  
  }

  @RequestMapping("/listofleads")
  public String listOfLeads(ModelMap model) {
	 List<Lead> leads = leadService.listOfLeads();
	  model.addAttribute("leads",leads );
	  return "lead_result";
  }
  
     @RequestMapping("/getLeadById")
   public String getLeadById(@RequestParam("id") long id,ModelMap model) {
	   Lead lead = leadService.getLeadById(id);
	   model.addAttribute("lead",lead);
	  return "lead_info";
   }
	  @RequestMapping("/convertLeadById")
	  public String convertLeadById(@RequestParam("id") long id,ModelMap model) {
		  Lead lead = leadService.getLeadById(id);
		  Contact contact=new Contact();
		  contact.setFirstName(lead.getFirstName());
           contact.setLastName(lead.getLastName());
           contact.setEmail(lead.getEmail());
           contact.setLeadSource(lead.getLeadSource());
           contact.setMobile(lead.getMobile());
           contactService.saveContact(contact);
           leadService.deleteLeadById(id);
           List<Contact> contacts = contactService.findAllContacts();
           model.addAttribute("contacts", contacts);
	              return "contact_result";
       }
}

