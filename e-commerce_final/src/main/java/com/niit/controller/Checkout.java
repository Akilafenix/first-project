package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Product;

@Controller
public class Checkout {
	

	@Autowired
	CartDAO cartdao;
	
	@RequestMapping(value="/CheckOut")
	public String getreturn(HttpSession session,Model m)
	{
		return "checkout";
		
		
	}
	
	@Autowired
	ProductDAO productdao;
	@RequestMapping(value="/cancel")
	public String cancelpage(Model model)
	{
		List<Product> productlist = productdao.getProductList();
		model.addAttribute("productlist", productlist);

		return "viewproduct";
		
	}

	
	@RequestMapping(value="/reciept")
	public String getreceipt()
	{
		return "thankyou";
		
	}
}
