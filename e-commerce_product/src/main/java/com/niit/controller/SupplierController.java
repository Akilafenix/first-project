package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	SupplierDAO supplierdao;
	
	@RequestMapping(value="/supplier")
	
	public ModelAndView addsupplier(@ModelAttribute("supp")Supplier supplier)
	{
		ModelAndView mv=new ModelAndView("Supplier");
		return mv;
		
	}
	
	@RequestMapping(value="/savesupplier",method=RequestMethod.POST)
	public String getsupplier(Supplier supplier,Model model)
	{
		supplierdao.addsupplier(supplier);
		model.addAttribute("supplist",this.supplierdao.getSupplierList());	
		return null;
		
	}
}

