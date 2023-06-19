#날짜 : 2023/06/16
#이름 : 고성우
#내용 : 4. SQL 고급 실습하기

#실습 4-1
CREATE TABLE `member`(
	`uid` VARCHAR(10) PRIMARY KEY,
	`name` VARCHAR(10) NOT NULL,
	`hp` VARCHAR(13) UNIQUE NOT NULL,
	`pos` VARCHAR(10) NOT NULL,
	`dep` INT,
	`rdate` DATETIME NOT NULL
);

CREATE TABLE `department`(
	`depNo` INT primary KEY,
	`name` VARCHAR(10) NOT NULL,
	`tel` VARCHAR(12) NOT NULL
);

CREATE TABLE `sales`(
	`seq` INT PRIMARY KEY AUTO_INCREMENT,
	`uid` VARCHAR(10) NOT NULL,
	`year` YEAR NOT NULL,
	`month` INT NOT NULL,
	`sale` INT NOT null
);

#실습 4-2
INSERT INTO `member` VALUES('a101', '박혁거세', '010-1234-1001', '부장', 101, '2020-11-19 11:39:48');
INSERT INTO `member` VALUES('a102', '김유신', '010-1234-1002', '차장', 101, '2020-11-19 11:39:48');
INSERT INTO `member` VALUES('a103', '김춘추', '010-1234-1003', '사원', 101, '2020-11-19 11:39:48');
INSERT INTO `member` VALUES('a104', '장보고', '010-1234-1004', '대리', 102, '2020-11-19 11:39:48');
INSERT INTO `member` VALUES('a105', '강감찬', '010-1234-1005', '고장', 102, '2020-11-19 11:39:48');
INSERT INTO `member` VALUES('a106', '이성계', '010-1234-1006', '차장', 103, '2020-11-19 11:39:48');
INSERT INTO `member` VALUES('a107', '정철', '010-1234-1007', '차장', 103, '2020-11-19 11:39:48');
INSERT INTO `member` VALUES('a108', '이순신', '010-1234-1008', '부장', 104, '2020-11-19 11:39:48');
INSERT INTO `member` VALUES('a109', '허균', '010-1234-1009', '부장', 104, '2020-11-19 11:39:48');
INSERT INTO `member` VALUES('a110', '정약용', '010-1234-1010', '사원', 105, '2020-11-19 11:39:48');
INSERT INTO `member` VALUES('a111', '박지원', '010-1234-1011', '사원', 105, '2020-11-19 11:39:48');

INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a101', 2018, 1, 98100);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2018, 1, 136000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a103', 2018, 1, 80100);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a104', 2018, 1, 78000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a105', 2018, 1, 93000);

INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a101', 2018, 2, 23500);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2018, 2, 126000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a103', 2018, 2, 18500);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a105', 2018, 2, 19000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a106', 2018, 2, 53000);

INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a101', 2019, 1, 24000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2019, 1, 109000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a103', 2019, 1, 101000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a104', 2019, 1, 53500);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a107', 2019, 1, 24000);

INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2019, 2, 160000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a103', 2019, 2, 101000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a104', 2019, 2, 43000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a105', 2019, 2, 24000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a106', 2019, 2, 109000);

INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2020, 1, 201000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a104', 2020, 1, 63000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a105', 2020, 1, 74000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a106', 2020, 1, 122000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a107', 2020, 1, 111000);

INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2020, 2, 120000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a103', 2020, 2, 93000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a104', 2020, 2, 84000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a105', 2020, 2, 180000);
INSERT INTO `sales` (`uid`, `year`, `month`, `sale`) VALUES('a108', 2020, 2, 76000);

INSERT INTO `department` VALUES(101, '영업1부', '051-512-1001');
INSERT INTO `department` VALUES(102, '영업2부', '051-512-1002');
INSERT INTO `department` VALUES(103, '영업3부', '051-512-1003');
INSERT INTO `department` VALUES(104, '영업4부', '051-512-1004');
INSERT INTO `department` VALUES(105, '영업5부', '051-512-1005');
INSERT INTO `department` VALUES(106, '영업지원부', '051-512-1006');
INSERT INTO `department` VALUES(107, '인사부', '051-512-1007');

SELECT * FROM `member`;
USE userdb;
# 실습 4-3
SELECT * FROM `memeber` WHERE `name` = '김유신';
SELECT * FROM `memeber` WHERE `pos` = '차장' AND dep=101;
SELECT * FROM `Memeber` WHERE `pos` = '차장' OR dep=101;
SELECT * FROM `Memeber` WHERE `name` != '김춘추';
SELECT * FROM `Memeber` WHERE `name` <> '김춘추';
SELECT * FROM `Memeber` WHERE `pos` = '사원' OR `pos` = '대리';
SELECT * FROM `Memeber` WHERE `pos` IN('사원', '대리');
SELECT * FROM `Memeber` WHERE `dep` IN(101, 102, 103);
SELECT * FROM `Memeber` WHERE `name` LIKE '%신';
SELECT * FROM `Memeber` WHERE `name` LIKE '김%';
SELECT * FROM `Memeber` WHERE `name` LIKE '김__';
SELECT * FROM `Memeber` WHERE `name` LIKE '_성_';
SELECT * FROM `Memeber` WHERE `name` LIKE '정_';
SELECT * FROM `Memeber` WHERE `sale` > 50000;
SELECT * FROM `Memeber` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month` = 1;
SELECT * FROM `Memeber` WHERE `sale` BETWEEN 50000 AND 100000;
SELECT * FROM `Memeber` WHERE `sale` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `Memeber` WHERE `year` IN(2020);
SELECT * FROM `Memeber` WHERE `month` IN (1, 2);

# 실습 4-4
SELECT * FROM `Sales` ORDER BY `sale`;
SELECT * FROM `sales` ORDER BY `sale` ASC;
SELECT * FROM `sales` ORDER BY `sale` DESC;
SELECT * FROM `member` ORDER BY `name`;
SELECT * FROM `member` ORDER BY `name` DESC;

SELECT *
FROM `sales`
WHERE `sale` > 50000
ORDER BY `sale` DESC;

SELECT *
FROM `sales`
WHERE `sale` > 50000
ORDER BY
	`year`,
	`month`,
	`sale` DESC; 

# 실습 4-5 limit(start), (length)
SELECT * FROM `sales` LIMIT 3;
SELECT * FROM `sales` LIMIT 0, 3;
SELECT * FROM `sales` LIMIT 1, 2;
SELECT * FROM `sales` LIMIT 5, 3;
SELECT * FROM `sales` ORDER BY `sale` DESC LIMIT 3, 5;
SELECT * FROM `sales` WHERE `sale` < 50000 ORDER BY `sale` DESC LIMIT 3;

SELECT * FROM `sales` 
WHERE `sale` > 50000
ORDER BY 
	`year` 	DESC,
	`month` 	ASC,
	`sale` 	DESC
LIMIT
	5;
	
# 실습 4-6
SELECT SUM(sale) AS `합계` FROM `sales`;
SELECT AVG(sale) AS `평균` FROM `sales`;
SELECT max(sale) AS `최대값` FROM `sales`;
SELECT min(sale) AS `최소값` FROM `sales`;member
SELECT count(sale) AS `갯수` FROM `sales`;
SELECT COUNT(*) AS `갯수` FROM `sales`;

SELECT SUBSTRING(hp, 10, 4) AS `전화번호 끝자리` FROM `member`;

INSERT INTO `member` VALUES ('b101', '을지문덕', '010-5555-1234', '사장', 107, NOW());

# 실습 4-7
SELECT SUM(`sale`) AS `총합`
FROM `sales`
WHERE `year` = 2018 AND `month` = 1;

# 실습 4-8
SELECT SUM(`sale`) AS `총합`,
		 AVG(`sale`) AS `평균`
FROM `sales`
WHERE `year` = 2019 AND `month` = 2 AND `sale` >= 50000;

# 실습 4-9
SELECT MIN(sale) AS `최저`,
		 MAX(sale) AS `최고`
FROM `sales`
WHERE `year` = 2020

# 실습 4-10
SELECT VERSION();
SELECT `uid` FROM `sales` GROUP BY `uid`;
SELECT `year` FROM `sales` GROUP BY `year`;
SELECT `uid`, `year` FROM `sales` GROUP BY `uid`, `year`;

SELECT `uid`, COUNT(*) AS `건수`
FROM `sales`
GROUP BY `uid`;

SELECT `uid`, SUM(sale) AS `합계`
FROM `sales`
GROUP BY `uid`;

SELECT `uid`, AVG(sale) AS `평균`
FROM `sales`
GROUP BY `uid`;

SELECT
	`uid`,
	`year`,
	SUM(`sale`) AS `합계`
FROM
	`sales`
GROUP BY
	`uid`, `year`;
	
SELECT `uid`, `year`, SUM(sale) AS `합계`
FROM `sales`
GROUP BY `uid`, `year`
ORDER BY `year` ASC, `합계` DESC;

SELECT `uid`, `year`, SUM(sale) AS `합계`
FROM `sales`
WHERE `sale` >= 50000
GROUP BY `uid`, `year`
ORDER BY `합계` DESC;

# 실습 4-11
SELECT `uid`, SUM(sale) AS `합계` FROM `sales`
GROUP BY `uid`
HAVING `합계` >= 200000;

SELECT 
	`uid`,
	`year`,
	SUM(`sale`) AS `합계`
FROM 
	`sales`
WHERE
	`sale` >= 50000
GROUP BY
	`uid`, `year`
HAVING
	`합계` >= 200000
ORDER BY
	`합계` DESC;

# 실습 4-12
CREATE TABLE `sales2` LIKE `sales`;
INSERT INTO `sales2` SELECT * FROM `sales`;
UPDATE `sales2` SET `year` = `year` + 3;

SELECT * FROM `sales`
UNION
SELECT * FROM `sales2`;

(SELECT * FROM `sales`)
UNION
(SELECT * FROM `sales2`);

SELECT `uid`, `year`, `sale` FROM `sales`
UNION
SELECT `uid`, `year`, `sale` FROM `sales2`;

SELECT `uid`, `year`, SUM(sale) AS `합계`
FROM `sales`
GROUP BY `uid`, `year`
UNION
SELECT `uid`, `year`, SUM(sale) AS `합계`
FROM `sales2`
GROUP BY `uid`, `year`
ORDER BY `year` ASC, `합계` DESC;

# 실습 4-13
SELECT * FROM `sales`
INNER JOIN `member`
ON `sales`.uid = `member`.uid;

SELECT * FROM `member`
INNER JOIN `department`
ON `member`.dep = `department`.depNo;

SELECT * FROM `sales` AS a
JOIN `member` AS b
ON a.uid = b.uid;

SELECT * FROM `member` AS a
JOIN `department` AS b
ON a.dep = b.depNo;

SELECT * FROM `sales` AS a, `member` AS b
WHERE a.uid = b.uid;

SELECT * FROM `member` AS a, `department` AS b
WHERE a.dep = b.depNo;

SELECT 
	a.`seq`,
	a.`uid`,
	`sale`,
	`name`,
	`pos`
FROM `sales` AS a
JOIN `member` AS b
ON a.uid = b.uid;

SELECT 
	a.`seq`,
	a.`uid`,
	a.`sale`,
	b.`name`,
	b.`pos`
FROM `sales` AS a
JOIN `member` AS b
USING (`uid`);

SELECT 
	a.`seq`,
	a.`uid`,
	`sale`,
	`name`,
	`pos`
FROM `sales` AS a
JOIN `member` AS b
ON a.uid = b.uid
WHERE `sale` >= 100000;

SELECT a.`seq`, a.`uid`, b.`name`, b.`pos`, `year`, SUM(`sale`) AS `합계`
FROM `sales` AS a 
JOIN `member` AS b ON a.uid = b.uid
GROUP BY a.`seq`, a.`uid`, a.`year`, b.`name`, b.`pos`
HAVING `합계` >= 100000
ORDER BY a.`year` ASC, `합계` DESC;

SELECT *
FROM `sales` 		AS a
JOIN `member` 		AS b ON a.uid = b.uid
JOIN `department` AS c ON b.dep = c.depNo;

SELECT a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`, c.`name`
FROM `sales` AS a
JOIN `member` AS b
ON a.uid = b.uid 
JOIN `department` AS c
ON b.dep = c.depNo;

SELECT a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`, c.`name`
FROM `sales` AS a 
JOIN `member` AS b ON a.dui = b.uid
JOIN `department` AS c ON b.dep = c.depNo
WHERE `sale` > 100000
ORDER BY `sale` DESC;

# 실습 4-14
INSERT INTO `sales`(`uid`, `year`, `month`, `sale`)
	VALUES('p101', 2018, 1, 35000);

SELECT * FROM `sales`;

SELECT *
FROM `sales` AS a
LEFT JOIN `member` AS b
ON a.uid = b.uid;

SELECT *
FROM `sales` AS a
RIGHT JOIN `member` AS b
ON a.uid = b.uid;

SELECT a.seq, a.uid, `sale` `name`, `pos`
FROM `sales` AS a
LEFT JOIN `member` AS b
USING(uid);

SELECT a.seq, a.uid, `sale` `name`, `pos`
FROM `sales` AS a
RIGHT JOIN `member` AS b
USING(uid);

# 실습 4-15
SELECT 
	a.`uid`,
	a.`name`,
	a.`pos`,
	b.`name`
FROM `member`AS a
JOIN `department` AS b
ON a.dep = b.depNo

#실습 4-16
SELECT 
	SUM(`sale`) AS `매출합`
FROM `sales` AS a
JOIN `member` AS b
ON a.uid = b.uid
WHERE `name` = '김유신' AND `year` = 2019
GROUP BY `year`; 

# 실습 4-17
SELECT 
	b.`name`,
	c.`depNo`,
	b.`pos`,
	a.`year`,
	SUM(`sale`) AS `매출합`
FROM `sales` AS a
JOIN `member` AS b ON a.uid = b.uid
JOIN `department` AS c ON b.dep = c.depNo
WHERE `year` = 2019 AND `sale` >= 50000
GROUP BY a.`year`, b.`name`, c.depNo, b.pos
HAVING `매출합` >= 100000
ORDER BY `매출합` DESC;
