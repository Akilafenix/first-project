package com.niit.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.niit.dao.UserDAO;
import com.niit.model.User;

@Controller
public class UserController 
{
	@Autowired
	UserDAO userdao;
	@RequestMapping(value="reg",method=RequestMethod.GET)
	public ModelAndView sendregister(@Valid @ModelAttribute("user")User user,BindingResult result)
	{
		
		ModelAndView mv=new ModelAndView("register");
		return mv;
		
	}
	@RequestMapping(value="reg",method=RequestMethod.POST)
	public ModelAndView getuser(User user)
	{
		userdao.addUser(user);
		ModelAndView mv=new ModelAndView("login","user",new User());
		return mv;
		
	}
	
	@RequestMapping(value="/alluser")
	public String getuserlist(Model model)
	{
		
		model.addAttribute("userlist",this.userdao.getList());
		return "Alluser";
	}	
	
	@RequestMapping(value="/delete")
	public String deleteuserlist(@RequestParam("uid") String username)
	{
		userdao.deleteuser(username);
		return "Alluser";
	}
	@RequestMapping("/edit")
	public String getUser(@RequestParam("uid") String username,Model model)
	{
		User user=userdao.getUser(username);
		model.addAttribute("userdata",user);
		model.addAttribute("user1",new User());
		return "EditUser";
	}	
	
	@RequestMapping(value="/updateuser",method=RequestMethod.POST)
	
	public String updateuser(User user,Model model)
	{
		userdao.edituser(user);
		model.addAttribute("userlist",this.userdao.getList());
		return "Alluser";
		
	}
}
	
	
