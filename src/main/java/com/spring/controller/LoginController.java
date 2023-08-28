package com.spring.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.UserDTO;
import com.spring.service.LoginService;

@Controller
@RequestMapping("/login/")
public class LoginController {
	public LoginController() {
		System.out.println("loginController");
	}
	
	LoginService loginservice;
	
	@Autowired
	public void setLoginservice(LoginService loginservice) {
		this.loginservice = loginservice;
	}
	@GetMapping("login")
	public void login(Model model) {
		
	}
	@PostMapping("login")
	public void login(String name, String pwd, Model model) {
		UserDTO dto = loginservice.selectbyName(name);
		//System.out.println(dto);
		if(dto==null) {
			System.out.println("no id");
			model.addAttribute("result",0);
		}
		if(!pwd.equals(dto.getPwd())) {
			System.out.println("wrong pwd");
		}
		
		//model.addAttribute("result",loginservice.login(name, pwd));
		return ;
	}
	@GetMapping("register")
	public void register(Model model)
	{
		
	}
}
