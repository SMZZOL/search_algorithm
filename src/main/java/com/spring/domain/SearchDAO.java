package com.spring.domain;

import java.util.List;

public interface SearchDAO {
	
	public abstract List<SearchDTO> list_selectByUid(int uid);
	
	public abstract int increases_cnt(int user_uid, int c_uid);

	public abstract List<SearchDTO> search_list(int user_uid, int c_uid);
	
	public abstract int timeupdate(int user_uid, int c_uid);

	public abstract void list_update(int user_uid, int c_uid);

	public abstract List<SearchDTO> timeweight(int user_uid);

	public abstract void putweight(int user_uid, int c_uid, int i);

	public abstract List<SearchDTO> cntweight(int user_uid);

	public abstract void weightclear(int user_uid);

	public abstract List<SearchDTO> trend_list();

	public abstract void set_trend_weight(int c_uid);
	
	public abstract List<CatvalueDTO> search_cat_value(String cat_keyvalue);
	//검색어로 연관 검색어 가져오기.
	public abstract List<CatvalueDTO> getcatbycuid(int c_uid);

	public abstract void add_cat_keyword(int c_uid,String cat_keyvalue);

	public abstract void increase_cat_cnt(String cat_keyvalue);

	public abstract List<CatvalueDTO> realtime_list();

	//public abstract List<SearchDTO> testlist(int user_uid);

	
	

}
