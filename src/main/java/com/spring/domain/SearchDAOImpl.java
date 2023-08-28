package com.spring.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class SearchDAOImpl implements SearchDAO {

	public static final int UpdateWeightValue = 1;
	public static final int RealtimeListValue = 1;
	
	
	private SearchDAO mapper;
	
	public SearchDAOImpl(SqlSession sqlsession) {
		mapper = sqlsession.getMapper(SearchDAO.class);
		
	}
	@Override
	public List<SearchDTO> list_selectByUid(int uid) {
		// TODO Auto-generated method stub
		return mapper.list_selectByUid(uid);
	}
	@Override
	public int increases_cnt(int user_uid, int c_uid) {
		
		return mapper.increases_cnt(user_uid, c_uid);
	}
	
	
	@Override
	public List<SearchDTO> search_list(int user_uid, int c_uid){
		
		list_update(user_uid, c_uid);
		return mapper.search_list(user_uid, c_uid);
	}
	@Override
	public int timeupdate(int user_uid, int c_uid) {
		
		return mapper.timeupdate(user_uid, c_uid);
	}
	

	@Override
	public void list_update(int user_uid, int c_uid) {
		int i =0;
		mapper.weightclear(user_uid);
		List<SearchDTO> list = mapper.timeweight(user_uid);
		for (SearchDTO dto: list) {
			mapper.putweight(dto.getUser_uid(), dto.getC_uid(),i+=UpdateWeightValue );
		}
		list = mapper.cntweight(user_uid);
		i =0;
		for (SearchDTO dto: list) {
			mapper.putweight(dto.getUser_uid(), dto.getC_uid(),(i+=UpdateWeightValue)*2 );
		}
	
	}
	@Override
	public List<SearchDTO> timeweight(int user_uid) {
		// TODO Auto-generated method stub
		return mapper.timeweight(user_uid);
	}
	@Override
	public void putweight(int user_uid, int c_uid, int i) {
		// TODO Auto-generated method stub
		mapper.putweight(user_uid, c_uid, i);
	}
	@Override
	public List<SearchDTO> cntweight(int user_uid) {
		// TODO Auto-generated method stub
		return mapper.cntweight(user_uid);
	}
	@Override
	public void weightclear(int user_uid) {
		System.out.println("22222222222222222222222222");
		mapper.weightclear(user_uid);
		
	}
	@Override
	public List<SearchDTO> trend_list(){
		for (int i=1;i<6;i++) {
			mapper.set_trend_weight(i);
		}
		
		return mapper.trend_list();
	}
	
	@Override
	public void set_trend_weight(int c_uid) {
		mapper.set_trend_weight(c_uid);
	}
	
	@Override
	public List<CatvalueDTO> search_cat_value(String cat_keyvalue) {
		return mapper.search_cat_value(cat_keyvalue);
	}
	
	@Override
	public List<CatvalueDTO> getcatbycuid(int c_uid){
		
		return mapper.getcatbycuid(c_uid);
	}
	@Override
	public void add_cat_keyword(int c_uid,String cat_keyvalue) {
		mapper.add_cat_keyword(c_uid,cat_keyvalue);
	}
	@Override
	public void increase_cat_cnt(String cat_keyvalue) {
		mapper.increase_cat_cnt(cat_keyvalue);
	}
	@Override
	public List<CatvalueDTO> realtime_list() {
		// TODO Auto-generated method stub
		return mapper.realtime_list();
	}
	
	
//	public List<SearchDTO> testlist(int user_uid){
//		
//	}
	
	
	
	
	
	
	
	
	
	
	
	

}
