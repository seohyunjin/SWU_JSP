CREATE TABLE `tblRegister` (
	`id` VARCHAR(20) NOT NULL,
	`pwd` VARCHAR(20) NOT NULL,
	`name` CHAR(6) NULL DEFAULT NULL,
	`num1` CHAR(6) NULL DEFAULT NULL,
	`num2` CHAR(7) NULL DEFAULT NULL,
	`email` VARCHAR(30) NULL DEFAULT NULL,
	`phone` VARCHAR(30) NULL DEFAULT NULL,
	`zipcode` CHAR(5) NULL DEFAULT NULL,
	`address` VARCHAR(60) NULL DEFAULT NULL,
	`job` VARCHAR(30) NULL DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into tblregister(id, pwd, name) values('apple', '111', 'È«±æµ¿');
insert into tblregister(id, pwd, name) values('watermelon', '222', 'Á¤Á¶');