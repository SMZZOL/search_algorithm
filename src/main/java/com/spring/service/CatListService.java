package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.CatvalueDTO;
import com.spring.domain.SearchDAO;
import com.spring.domain.SearchDTO;

@Service
public class CatListService {
	
	SearchDAO dao;
	
	@Autowired
	public void setDAO(SearchDAO dao)
	{
		this.dao = dao;
	}
	
	
	public CatListService() {
		System.out.println("catservice ()");
	}

	public List<SearchDTO> list_selectByUid(int uid) {
		
		return dao.list_selectByUid(uid);
	}
	
	
	@Transactional
	public List<SearchDTO> search_list(int user_uid, String cat_keyvalue){
		
		System.out.println("               "+user_uid+"            ");
		List<CatvalueDTO> list = dao.search_cat_value(cat_keyvalue);
		List<SearchDTO> list2 = dao.list_selectByUid(user_uid);
		int c_uid;
		if(list.size()==0) {
			c_uid = list2.get(0).getC_uid();
			dao.add_cat_keyword(c_uid,cat_keyvalue);
			
		}else {//원래 있는 연관검색어
			//cnt 증가
			c_uid = list.get(0).getC_uid();
			dao.add_cat_keyword(c_uid,cat_keyvalue);
		}
		
		
		dao.timeupdate(user_uid, c_uid);  
		dao.increases_cnt(user_uid, c_uid);
		dao.list_update(user_uid, c_uid);
		return dao.search_list(user_uid, c_uid);
	}


	public List<SearchDTO> trend_list() {
		// TODO Auto-generated method stub
		return dao.trend_list();
	}


	public List<CatvalueDTO> getcatbycuid(int c_uid) {
		
		return dao.getcatbycuid(c_uid);
	}


	public List<CatvalueDTO> realtime_list() {
		// TODO Auto-generated method stub
		return dao.realtime_list();
	}


	
}
