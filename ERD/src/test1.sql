SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS orderitem;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS orderinfo;
DROP TABLE IF EXISTS member;




/* Create Tables */

CREATE TABLE item
(
	no int NOT NULL AUTO_INCREMENT,
	name varchar(100) NOT NULL,
	price int,
	PRIMARY KEY (no)
);


CREATE TABLE member
(
	-- 아이디
	id varchar(15) NOT NULL COMMENT '아이디',
	pass varchar(15),
	name varchar(20) NOT NULL,
	tel varchar(15),
	gender int(1),
	email varchar(200),
	picture varchar(200),
	PRIMARY KEY (id),
	UNIQUE (email)
);


CREATE TABLE orderinfo
(
	orderno int NOT NULL,888888888888888888888888888888888888888888888888888888888888888
	-- 아이디
	id varchar(15) NOT NULL COMMENT '아이디',
	PRIMARY KEY (orderno)
);


CREATE TABLE orderitem
(
	orderno int NOT NULL,
	no int NOT NULL,
	PRIMARY KEY (orderno)
);



/* Create Foreign Keys */

ALTER TABLE orderitem
	ADD FOREIGN KEY (no)
	REFERENCES item (no)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orderinfo
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orderitem
	ADD FOREIGN KEY (orderno)
	REFERENCES orderinfo (orderno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



