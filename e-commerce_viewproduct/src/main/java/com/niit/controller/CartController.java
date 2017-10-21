package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;


@Controller
public class CartController {
	
	@Autowired
	ProductDAO productdao;
	
	CartDAO cartdao;
	
	@RequestMapping(value="/addtocart/{productid}")
	public String addtocart(@PathVariable("productid") int productid,@RequestParam("quantity") int quantity ,HttpSession session ,Model model)
	{
		
		return "cart";
		
	}
	

}
