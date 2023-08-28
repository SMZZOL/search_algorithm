package com.spring.domain;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

	private UserDAO mapper;
	
	
	@Autowired
	public UserDAOImpl(SqlSession sqlsession) {
		System.out.println("UserDAOImple ()");
		mapper = sqlsession.getMapper(UserDAO.class);
	}
	@Override
	public UserDTO selectbyName(String name) {
		name = name.trim();
		System.out.println(name);
		UserDTO dto = mapper.selectbyName(name);
		System.out.println(dto);
		return dto;
	}


}
