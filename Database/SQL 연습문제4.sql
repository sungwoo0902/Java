# 날짜 : 2023/06/23
# 이름 : 고성우
# 내용 : SQL 연습문제4

# 실습 4-1
CREATE DATABASE `BookStore`;
CREATE user 'admin4'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `bookstore`.*TO 'admin4'@'%';
FLUSH PRIVILEGES;

DROP TABLE `customer`;
# 실습 4-2
CREATE TABLE `Customer`(
	`custId` INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(10) NOT NULL,
	`address` VARCHAR(20),
	`phone` VARCHAR(13)
);

CREATE TABLE `book`(
	`bookId` INT PRIMARY KEY,
	`bookName` VARCHAR(20) NOT NULL,
	`publisher` VARCHAR(20) NOT NULL,
	`price` INT
);

CREATE TABLE `order`(
	`orderId` INT PRIMARY KEY AUTO_INCREMENT,
	`custId` INT NOT NULL,
	`bookId` INT NOT NULL,
	`salePrice` INT NOT NULL,
	`orderDate` DATE
);

# 실습 4-3
INSERT INTO `customer`(`name`, `address`, `phone`)VALUES('박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO `customer`(`name`, `address`, `phone`)VALUES('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `customer`(`name`, `address`, `phone`)VALUES('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `customer`(`name`, `address`, `phone`)VALUES('추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `customer`(`name`, `address`)VALUES('박세리', '대한민국 대전');

INSERT INTO `book` VALUES (1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO `book` VALUES (2, '축구아는 여자', '나무수', 13000);
INSERT INTO `book` VALUES (3, '축구의 이해', '대한미디어', 22000);
INSERT INTO `book` VALUES (4, '골프 바이블', '대한미디어', 35000);
INSERT INTO `book` VALUES (5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO `book` VALUES (6, '역도 단계별기술', '굿스포츠', 6000);
INSERT INTO `book` VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO `book` VALUES (8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO `book` VALUES (9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO `book` VALUES (10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO `order`(`custId`, `bookid`, `saleprice`, `orderdate`) VALUES (1, 1, 6000, '2014-07-01');
INSERT INTO `order`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1, 3, 21000, '2014-07-03');
INSERT INTO `order`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2, 5, 8000, '2014-07-03');
INSERT INTO `order`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3, 6, 6000, '2014-07-04');
INSERT INTO `order`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4, 7, 20000, '2014-07-05');
INSERT INTO `order`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1, 2, 12000, '2014-07-07');
INSERT INTO `order`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4, 8, 13000, '2014-07-07');
INSERT INTO `order`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3, 10, 12000, '2014-07-08');
INSERT INTO `order`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2, 10, 7000, '2014-07-09');
INSERT INTO `order`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3, 8, 13000, '2014-07-10');


# 실습 4-4
SELECT `custid`,`name`, `address` FROM `customer`;

# 실습 4-5
SELECT `bookname`, `price` FROM `book`;

# 실습 4-6
SELECT `price`, `bookname` FROM `book`;

# 실습 4-7
SELECT * FROM `book`;

# 실습 4-8
SELECT `publisher` FROM `book`;

# 실습 4-9
SELECT DISTINCT `publisher` FROM `book`;

# 실습 4-10
SELECT * FROM `book`
WHERE `price` >= 20000;

# 실습 4-11
SELECT * FROM `book`
WHERE `price` < 20000;

# 실습 4-12
SELECT * FROM `book`
WHERE 10000 <= `price` AND  `price` <= 20000;

# 실습 4-13
SELECT `bookid`, `bookname`, `price`
FROM `book`
WHERE 15000 <= `price` AND `price` <= 30000; 

# 실습 4-14
SELECT * FROM `book`
WHERE `bookid` = 2 OR `bookid` = 3 OR `bookid` = 5;
or
WHERE `bookid` IN(2, 3, 5);

# 실습 4-15
SELECT * FROM `book`
WHERE MOD(bookid, 2) = 0;
or
WHERE `bookid` % 2 = 0;

# 실습 4-16
SELECT * FROM `customer`
WHERE `name` LIKE '박%';

# 실습 4-17
SELECT * FROM `customer`
WHERE `address` LIKE '대한민국 %';

# 실습 4-18
SELECT * FROM `customer`
WHERE `phone` IS NOT NULL;

# 실습 4-19
SELECT * FROM `book`
WHERE `publisher` = '굿스포츠' OR `publisher` = '대한미디어';

# 실습 4-20
SELECT `publisher` FROM `book`
WHERE `bookname` = '축구의 역사';

# 실습 4-21
SELECT `publisher` FROM `book`
WHERE `bookname` LIKE '%축구%';

# 실습 4-22
SELECT * FROM `book`
WHERE LOCATE('구', `bookname`) > 0;
OR
WHERE `bookname` LIKE '_구%';

# 실습 4-23
SELECT * FROM `book`
WHERE LOCATE('축구', `bookname`) > 0 AND `price` >= 20000;
OR
WHERE `bookname` LIKE '%축구%' AND `price` >= 20000;

# 실습 4-24
SELECT * FROM `book`
order BY `bookname`;

# 실습 4-25
SELECT * FROM `book`
order BY `price`, `bookname`;

# 실습 4-26
SELECT * FROM `book`
order BY `price` DESC, `publisher` ASC;

# 실습 4-27
SELECT * FROM `book`
order BY `price` DESC
LIMIT 3;

# 실습 4-28
SELECT * FROM `book`
order BY `price` ASC
LIMIT 3;

# 실습 4-29
SELECT 
	SUM(`saleprice`) AS '총판매액'
FROM `order`;

# 실습 4-30
SELECT
	SUM(`saleprice`) AS '총판매액',
	AVG(`saleprice`) AS '평균값',
	MIN(`saleprice`) AS '최저가',
	MAX(`saleprice`) AS '최고가'
FROM `order`;

# 실습 4-31
SELECT
	COUNT(*) AS '판매건수'
	or
	COUNT(`orderid`) AS '판매건수'
FROM `order`;

# 실습 4-32 
SELECT 
	`bookid`,
	REPLACE(`bookname`, '야구', '농구') AS `bookname`,
	`publisher`,
	`price`
FROM `book`;

# 실습 4-33
SELECT 
	`custid`,
	COUNT(*) AS '수량'
FROM `order`
WHERE `saleprice` >= 8000
GROUP BY `custid`
HAVING `수량` >= 2;

# 실습 4-34
SELECT * 
FROM `customer` AS a
JOIN `order` AS b
ON a.custId = b.custId;
OR
USING(`custid`);

# 실습 4-35
SELECT * FROM
`customer` AS a
JOIN `order` AS b
ON a.custId = b.custId
order BY a.`custid`;

# 실습 4-36
SELECT
	a.`name`,
	b.`saleprice` 
FROM `customer` AS a
JOIN `order` AS b
ON a.custId = b.custId;

# 실습 4-37
SELECT
	a.`name`,
	SUM(`saleprice`)
FROM `customer` AS a
JOIN `order` AS b
ON a.custId = b.custId
GROUP BY a.`name`
order BY a.`name`;

# 실습 4-38
SELECT
	a.`name`,
	c.`bookname`
FROM `customer` AS a
JOIN `order` AS b ON a.custId = b.custId
JOIN `book` AS c ON b.bookId = c.bookId
order BY a.`name`;

# 실습 4-39
SELECT
	a.`name`,
	c.`bookname`
FROM `customer` AS a
JOIN `order` AS b ON a.custId = b.custId
JOIN `book` AS c ON b.bookId = c.bookId
WHERE c.price = 20000;

# 실습 4-40
SELECT
	a.`name`,
	b.`saleprice`
FROM `customer` AS a
left JOIN `order` AS b
ON a.custId = b.custId;

# 실습 4-41
SELECT
	SUM(`saleprice`) AS '총매출'
FROM `customer` AS a
JOIN `order` AS b
ON a.custId = b.custId
WHERE b.custId = 2
GROUP BY '총매출';

# 실습 4-42
SELECT
	`bookname`
FROM `book`
order BY `price` DESC
LIMIT 1; 

SELECT `bookname` FROM `book`
WHERE `price`=(SELECT MAX(`price`) FROM `book);

# 실습 4-43 ???
SELECT 
	a.`name`
FROM `customer` AS a
LEFT JOIN `order` AS b
ON a.custId = b.custId
WHERE `orderid` IS NULL;

# 실습 4-44
INSERT INTO `book` SET
								`bookid` = 11,
								`bookname` = '스포츠의학',
								`publisher` = '한솔의학서적';

# 실습 4-45
UPDATE `customer`
SET `address` = '대한민국 부산'
WHERE `custid` = 5;

# 실습 4-46
DELETE FROM `customer`
WHERE `custid` = 5;





