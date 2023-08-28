

insert into user values (1, "김세민", 1234, "010-2123-123")

insert into user values (2, "david", 1234, "010-2123-123")

insert into user values (3, "timo", 1234, "010-2123-123")

insert into user values (4, "lux", 1234, "010-2123-123")

insert into user values (5, "bex", 1234, "010-2123-123")

insert into search (user_uid, c_uid, s_weight, s_cnt, s_keyword)
 values (1, 2, 1, 1, "디비")
 
 insert into search (user_uid, c_uid, s_weight, s_cnt, s_keyword)
 values (1, 1, 5, 1, "디비")
 
 delete from search where c_uid =1
 
 insert into category values (2, "자바")
 
 
 insert into category values (3, "인테리어"),(4, "법률"),(5, "헬스")
 
  insert into search (user_uid, c_uid, s_weight, s_cnt, s_keyword)
 values (1, 3, 5, 1, "디비"),(1, 4, 5, 1, "디비"),(1, 5, 5, 1, "디비")
 
 select * from search where user_uid = 5

 
 
  insert into search (user_uid, c_uid, s_weight, s_cnt, s_keyword)
 values (4, 1, 0, 0, "디비"),
 (4, 2, 0, 0, "자바"),
 (4, 3, 0, 0, "인테리어"),
 (4, 4, 0, 0, "법률"),
 (4, 5, 0, 0, "헬스"),
 (5, 1, 0, 0, "디비"),
 (5, 2, 0, 0, "자바"),
 (5, 3, 0, 0, "인테리어"),
 (5, 4, 0, 0, "법률"),
 (5, 5, 0, 0, "헬스")
 

	
	
 
	
	
	select
		user_uid,
		c_uid,
		s_cnt
	from search
	where user_uid = 1
	order by s_cnt
	
	
	UPDATE search
	SET s_cnt = s_cnt +1
	WHERE user_uid = 1 and c_uid = 4
	
	
	
	select sum(s_weight) from search 
	
	declare @sum int
	
	set @sum = sum(s_weight) from search 
	
	
	
	select 
			user_uid,
			user_name,
			user_pwd,
			user_phone
		from user
		where user_name = "김"
	
	select * from search where c_uid = 1
	
	
		
	select * from trend 
	
	
	update trend 
	set t_weight = (select sum(s_weight) from search  where c_uid = 1)
	where c_uid = 1
	
		select 
			user_uid,
			user_name,
			user_pwd,
			user_phone
		from user
		where user_name = '김세민'
	
	select * from cat_keyword
	
	insert into trend(c_uid, t_weight) values
	(1, 0),
	(2, 0),
	(3, 0),
	(4, 0),
	(5, 0)
	

	
	select *from user
	
	select * from category
	
    insert into cat_keyword (c_uid, cat_keyvalue) values
	(1, "데이터"),
	(1, "SQL"),
	(1, "오라클"),
	(2, "스프링"),
	(2, "부트"),
	(2, "JSP"),
	(3, "공구리"),
	(3, "시공"),
	(3, "시멘트"),
	(4, "교통사고"),
	(4, "소송"),
	(4, "상담"),
	(5, "벌크업"),
	(5, "근육"),
	(5, "PT")
	
	
	select distinct  ck.cat_keyvalue,ck.c_uid, count(cat_keyvalue) over(partition by cat_keyvalue) as cnt
	from (select * from cat_keyword ck1 where ck1.value_date between date_add(now(),interval-1 day) and now()) ck	
	order by cnt desc
	limit 10
	
	
	
	
	
	
	
	
	
	
	
	select c.cat_keyvalue
	from (select count(cat_keyvalue)as cnt, ck.cat_keyvalue,ck.c_uid 
			from cat_keyword ck 
			group by cat_keyvalue) c
	where c.c_uid=1
	order by cnt
	
	select distinct  ck.cat_keyvalue, count(cat_keyvalue) over(partition by cat_keyvalue) as cnt
	from cat_keyword ck 
	where c_uid = 1
	order by cnt desc
	limit 5
	
	
	select distinct  ck.cat_keyvalue, count(cat_keyvalue) over(partition by cat_keyvalue) as cnt
	from (select * from cat_keyword ck1 where ck1.value_date between date_add(now(),interval-1 day) and now()) ck	
	order by cnt desc
	
	where value_date between date_add(now(),interval-1 day) and now()


	
	
	select 
	
	select * from cat_keyword
	where value_date between date_add(now(),interval-1 day) and now()

	
	insert into cat_keyword(c_uid, cat_keyvalue)
	values (1, "까락끼랙")
	
	
	
	
	select c_uid
		from cat_keyword
		where cat_keyvalue = "SQL"
	
		
	update cat_keyword
	set cat_cnt = cat_cnt + 1
	where cat_keyvalue = #{param1}
		
		
	select * from cat_keyword
	
	select * from category 
	
	
		
		
	
		
	<![CDATA[    ]]>
		
		
		
		
		
	
	