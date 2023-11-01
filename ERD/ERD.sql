SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS search;

DROP TABLE IF EXISTS category;

DROP TABLE IF EXISTS chat_message;

DROP TABLE IF EXISTS chat_rel;

DROP TABLE IF EXISTS chat;

DROP TABLE IF EXISTS trend;

DROP TABLE IF EXISTS cat_keyword; 

DROP TABLE IF EXISTS user;





/* Create Tables */

CREATE TABLE category
(
	c_uid int NOT NULL AUTO_INCREMENT,
	c_name varchar(20) NOT NULL,
	PRIMARY KEY (c_uid)
);


CREATE TABLE search
(
	user_uid int NOT NULL,
	c_uid int NOT NULL,
	s_weight int,
	s_time datetime NOT NULL DEFAULT now(),
	s_cnt int NOT NULL DEFAULT 0,
	s_keyword varchar(50)
);


CREATE TABLE trend
(
	t_weight int,
	c_uid int not null
);
create table cat_keyword
(
	
	c_uid int NOT NULL,
	cat_keyvalue varchar(20),
	cat_cnt int default 0,
	value_date datetime NOT NULL DEFAULT now() 
	
)

CREATE TABLE user
(
	user_uid int NOT NULL AUTO_INCREMENT,
	user_name varchar(10) NOT NULL,
	user_pwd varchar(10) NOT NULL,
	user_phone varchar(20),
	PRIMARY KEY (user_uid)
);



/* Create Foreign Keys */
alter table cat_keyword
	ADD FOREIGN KEY (c_uid)
	REFERENCES category (c_uid)
	ON UPDATE RESTRICT
	ON DELETE restrict;


ALTER TABLE search
	ADD FOREIGN KEY (c_uid)
	REFERENCES category (c_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE chat_message
	ADD FOREIGN KEY (chat_uid)
	REFERENCES chat (chat_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE chat_rel
	ADD FOREIGN KEY (chat_uid)
	REFERENCES chat (chat_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE chat_message
	ADD FOREIGN KEY (user_uid)
	REFERENCES user (user_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE chat_rel
	ADD FOREIGN KEY (user_uid)
	REFERENCES user (user_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE search
	ADD FOREIGN KEY (user_uid)
	REFERENCES user (user_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



