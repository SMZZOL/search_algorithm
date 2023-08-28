package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.UserDAO;
import com.spring.domain.UserDTO;

@Service
public class LoginService {

	UserDAO dao;
	@Autowired
	public void setDAD(UserDAO dao) {
		this.dao = dao;
	}
	public LoginService() {
		System.out.println("loginservice ()");
	}
	
	public UserDTO selectbyName(String name) {
		System.out.println(name);
		return dao.selectbyName(name);
	}
}
