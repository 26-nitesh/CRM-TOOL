package com.zohocrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.services.ContactService;

@Controller
public class ContactController {
@Autowired
ContactService contactService;


      @RequestMapping("/listofcontacts")
      public String listOfContacts(ModelMap model) {
    	  List<Contact> contacts = contactService.findAllContacts();
    	 model.addAttribute("contacts",contacts);
    	  return "contact_result";
      }
      
      @RequestMapping("/getContactById")
      public String getContactById(@RequestParam("id") long id,ModelMap model) {
    	  Contact contact = contactService.getContactById(id);
            model.addAttribute("contact", contact);
    	  return "genrate_bill";
      }
      
     
}

