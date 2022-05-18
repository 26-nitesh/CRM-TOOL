package com.zohocrm.services;

import java.util.List;

import com.zohocrm.entities.Lead;

public interface LeadService {

	void saveOneLead(Lead lead);

	List<Lead> listOfLeads();

	Lead getLeadById(long id);

	void deleteLeadById(long id);

}
