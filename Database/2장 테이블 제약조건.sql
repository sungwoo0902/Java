# 날짜 : 2023/06/15
# 이름 : 고성우
# 내용 : 2장 테이블 제약조건 실습하기

#실습 2-1
create table user2(
	uid varchar(10) primary key,
    `name` varchar(10),
    hp varchar(13),
    age int
);

#실습 2-2
insert into user2 values('A101', '김유신', '010-1234-1001', 23);
insert into user2 values('A102', '김춘추', '010-1234-1002', 21);
insert into user2 values('A103', '장보고', '010-1234-1003', 31);
insert into user2 values('A104', '강감찬', '010-1234-1004', 41);

#실습 2-3
create table user3 (
	uid varchar(10) primary key,
    `name` varchar(10),
    hp char(13) unique,
    age int
);

#실습 2-4
insert into user3 values('A101', '김유신', '010-1234-1001', 23);
INSERT INTO `User3` (`uid`, `name`, `hp`, `age`)
			values ('A102', '김춘추', '010-1234-1002', 21);
INSERT INTO `User3` VALUES('A103', '장보고', '010-1234-1003', 31);
INSERT INTO `User3` SET
					`uid` = 'A104',
                    `name` = '강감찬',
                    `hp` = '010-1234-1001',
                    `age` = 41;

INSERT INTO `User3` (`uid`, `name`, `age`) VALUES ('A104', '강감찬', 41);
INSERT INTO `User3` (`uid`, `name`, `age`) VALUES ('A105', '이순신', 51);

#실습 2-5
CREATE TABLE `Parent` (
	`pid` VARCHAR(10) PRIMARY KEY, 
	`name` VARCHAR(10),
    `hp` CHAR(13) UNIQUE
);

CREATE TABLE `Child` (
	`cid` VARCHAR(10) PRIMARY KEY,
    `name` VARCHAR(10),
    `hp` CHAR(13) UNIQUE,
    `pid` VARCHAR(10),
    FOREIGN KEY (`pid`) REFERENCES `Parent` (`pid`)
);

#실습 2-6
INSERT INTO `Parent` VALUES('p101', '홍길동', '010-1234-1001');
INSERT INTO `Parent` VALUES('p102', '임꺽정', '010-1234-1002');
INSERT INTO `Parent` VALUES('p103', '이성계', '010-1234-1003');

INSERT INTO `Child` VALUES('c101', '김가가', '010-1234-2001', 'p101');
INSERT INTO `Child` VALUES('c102', '임나나', '010-1234-2002', 'p102');
INSERT INTO `Child` VALUES('c103', '이다다', '010-1234-2003', 'p103');

#실습 2-7
CREATE TABLE `User4` (
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(10),
    `jender` TINYINT,
    `age` INT,
    `addr` VARCHAR(255)
);

#실습 2-8
INSERT INTO `User4` (`name`, `jender`, `age`, `addr`) VALUES ('김유신', 1, 23, '김해시');

#실습 2-9
CREATE TABLE `User5`(
	`name` VARCHAR(10) NOT NULL,
    `gender` TINYINT,
    `age` INT DEFAULT 1,
    `addr` VARCHAR(10)
);

#실습 2-10
INSERT INTO `User5` VALUES ('김유신', '1', '23', '김해시');
INSERT INTO `User5` (`name`, `addr`) VALUES ('김춘추', '경주시');
INSERT INTO `User5` SET
						`name` = '신사임당',
                        `addr` = '서울시';
                        

#실습 2-11
alter table user5 add hp varchar(20);
alter table `user5` add `birth` char(10) default '000-00-00' after name;

#실습 2-12
ALTER TABLE `User5` MODIFY `hp` char(10);
ALTER TABLE `User5` MODIFY `age` TINYINT;

#실습 2-13
ALTER TABLE `User5` change column `addr` `address` varchar(100);

#실습 2-14
alter table `user5` drop `gender`;

#실습 2-15
CREATE TABLE `User6` LIKE `User5`;

#실습 2-16
INSERT INTO `User6` SELECT * FROM `User5`;