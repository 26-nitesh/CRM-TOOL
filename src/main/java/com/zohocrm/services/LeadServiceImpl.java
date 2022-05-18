package com.zohocrm.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Lead;
import com.zohocrm.repositories.LeadRepository;

@Service
public class LeadServiceImpl implements LeadService {

	@Autowired
	LeadRepository leadRepo;
	@Override
	public void saveOneLead(Lead lead) {
	leadRepo.save(lead);
		
	}
	@Override
	public List<Lead> listOfLeads() {
		List<Lead> lead = leadRepo.findAll();
		return lead;
	}
	@Override
	public Lead getLeadById(long id) {
		Lead lead = leadRepo.getById(id);
		return lead;
	}
	@Override
	public void deleteLeadById(long id) {
		leadRepo.deleteById(id);
		
	}

}
