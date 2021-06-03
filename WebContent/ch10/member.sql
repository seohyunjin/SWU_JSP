
CREATE TABLE member (
	id VARCHAR(20) NOT NULL,
	pwd VARCHAR(20) NOT NULL,
	name CHAR(6) NULL DEFAULT NULL,
	birthday CHAR(8) NULL DEFAULT NULL,
	email VARCHAR(30) NULL DEFAULT NULL
	primary key(id);
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into member
values('mindpool', '1111', 'ȫ�浿', '20011231', 'mindpool@');

