package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("index")
	
	public String getindex()
	{
		return "index";
	}

	@RequestMapping(value="reg")
	public String getregister()
	{
		return "register";
		
	}
}                                                                                                                                                                                                                                                                                                                                                                                                                                                               
