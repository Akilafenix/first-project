package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAO categorydao;
	
	@RequestMapping(value="/category")
	public ModelAndView getcategory(@ModelAttribute("cat")Category category)
	{
		ModelAndView mv=new ModelAndView("Category");
		return mv;
		
	}
	
	
	@RequestMapping(value="saveCategory",method=RequestMethod.POST)
	public String addcategory(Category category,Model model)
	{
		categorydao.addcategory(category);
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		return null;
		
		
	}

}
