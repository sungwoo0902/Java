INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (10, '국어국문학과', '051-510-1010');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (11, '영어영문학과', '051-510-1011');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (20, '경영학과', '051-510-1020');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (21, '경제학과', '051-510-1021');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (22, '정치외교학과', '051-510-1022');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (23, '사회복지학과', '051-510-1023');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (30, '수학학과', '051-510-1030');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (31, '통계학과', '051-510-1031');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (32, '생명과학과', '051-510-1032');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (40, '기계공학과', '051-510-1040');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (41, '전자공학과', '051-510-1041');
INSERT INTO `departments`(`depNo`, `depName`, `depTel`) VALUES (42, '컴퓨터공학과', '051-510-1042');

SET FOREIGN_key_checks=0;
SET foreign_key_checks=1;

INSERT INTO `lectures` VALUES ('P10101', '101001', '대학 글쓰기', 2, 10, '본102');
INSERT INTO `lectures` VALUES ('P10102', '101002', '한국어음운론', 3, 30, '본102');
INSERT INTO `lectures` VALUES ('P10102', '101003', '한국현대문학사', 3, 30, '본103');
INSERT INTO `lectures` VALUES ('P11103', '101011', '중세영문학', 3, 25, '본201');
INSERT INTO `lectures` VALUES ('P11104', '101012', '영미시', 3, 25, '본201');
INSERT INTO `lectures` VALUES ('P23102', '231110', '사회복지학개론', 1, 8, '별관103');
INSERT INTO `lectures` VALUES ('P31101', '311002', '통계학의 이해', 2, 16, '별관303');
INSERT INTO `lectures` VALUES ('P31104', '311003', '기초 통계학', 3, 26, '별관303');
INSERT INTO `lectures` VALUES ('P40101', '401019', '기계역학', 3, 36, '공학관102');
INSERT INTO `lectures` VALUES ('P42103', '421012', '데이터베이스', 3, 32, '공학관103');

INSERT INTO `professors` VALUES ('P10101', 10, '김유신', '750120-1234567', '010-1101-1976', 'kimys@hg.ac.kr', '서울');
INSERT INTO `professors` VALUES ('P10102', 10, '계백', '740610-1234567', '010-1102-1975', 'gaeback@hg.ac.kr', '서울');
INSERT INTO `professors` VALUES ('P11101', 11, '김관창', '880529-1234567', '010-1103-1989', 'kwanch@hg.ac.kr', '대전');
INSERT INTO `professors` VALUES ('P11103', 11, '김춘추', '780412-1234567', '010-2101-1979', 'kimcc@hg.ac.kr', '대전');
INSERT INTO `professors` VALUES ('P11104', 11, '이사부', '650911-1234567', '010-2104-1966', 'leesabu@hg.ac.kr', '대전');
INSERT INTO `professors` VALUES ('P22110', 22, '장보고', '780727-1234567', '010-3101-1979', 'jangbg@hg.ac.kr', '대구');
INSERT INTO `professors` VALUES ('P23102', 23, '선덕여왕', '830614-1234567', '010-4101-1984', 'gueen@hg.ac.kr', '대구');
INSERT INTO `professors` VALUES ('P31101', 31, '강감찬', '641020-1234567', '010-5101-1965', 'kang@hg.ac.kr', '대구');
INSERT INTO `professors` VALUES ('P31104', 31, '신사임당', '711127-1234567', '010-6101-1972', 'sinsa@hg.ac.kr', '부산');
INSERT INTO `professors` VALUES ('P40101', 40, '이이', '910906-1234567', '010-7103-1992', 'leelee@hg.ac.kr', '부산');
INSERT INTO `professors` VALUES ('P40102', 40, '이황', '881208-1234567', '010-7104-1989', 'hwang@hg.ac.kr', '광주');
INSERT INTO `professors` VALUES ('P42103', 42, '송상현', '760313-1234567', '010-8101-1977', 'ssh@hg.ac.kr', '광주');

INSERT INTO `register`(`stdNo`, `lecNo`, `proNo`) VALUES ('20101001', '101001', 'P10101');
INSERT INTO `register`(`stdNo`, `lecNo`, `proNo`) VALUES ('20101001', '101002', 'P10102');
INSERT INTO `register`(`stdNo`, `lecNo`, `proNo`) VALUES ('20111013', '111011', 'P11103');
INSERT INTO `register`(`stdNo`, `lecNo`, `proNo`) VALUES ('21231002', '231110', 'P23102');
INSERT INTO `register`(`stdNo`, `lecNo`, `proNo`) VALUES ('22401001', '401019', 'P40101');
INSERT INTO `register`(`stdNo`, `lecNo`, `proNo`) VALUES ('22401001', '421012', 'P42103');
INSERT INTO `register`(`stdNo`, `lecNo`, `proNo`) VALUES ('20101001', '101003', 'P10102');
INSERT INTO `register`(`stdNo`, `lecNo`, `proNo`) VALUES ('22421003', '311003', 'P31104');
INSERT INTO `register`(`stdNo`, `lecNo`, `proNo`) VALUES ('22421003', '421012', 'P42103');
INSERT INTO `register`(`stdNo`, `lecNo`, `proNo`) VALUES ('20111013', '111012', 'P11104');

INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdEmail`, `stdAddr`) VALUES('20101001', 10, 'P10101', '정우성', '760121-1234567', '010-1101-7601', '-', '서울');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdAddr`) VALUES('20101002', 10, 'P10101', '이정재', '750611-1234567', '010-1102-7506', '서울');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdEmail`, `stdAddr`) VALUES('20111011', 11, 'P11103', '전지현', '890530-1234567', '010-1103-8905', 'jjh@naver.com', '대전');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdEmail`, `stdAddr`) VALUES('20111013', 11, 'P11103', '이나영', '790413-1234567', '010-2101-7904', 'lee@naver.com', '대전');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdEmail`, `stdAddr`) VALUES('20111014', 11, 'P11104', '원빈', '660912-1234567', '010-2104-6609', 'one@daum.net', '대전');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdEmail`, `stdAddr`) VALUES('21221010', 22, 'P22110', '장동건', '790728-1234567', '010-3101-7907', 'jang@naver.com', '대구');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdEmail`, `stdAddr`) VALUES('21231002', 23, 'P23102', '고소영', '840615-1234567', '010-4101-8406', 'goso@daum.net', '대구');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdEmail`, `stdAddr`) VALUES('22311011', 31, 'P31104', '김연아', '651021-1234567', '010-5101-6510', 'yuna@daum.net', '대구');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdAddr`) VALUES('22311014', 31, 'P31104', '유재석', '721128-1234567', '010-6101-7211', '부산');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdAddr`) VALUES('22401001', 40, 'P40101', '강호동', '920907-1234567', '010-7103-9209', '부산');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdEmail`, `stdAddr`) VALUES('22401002', 40, 'P40101', '조인성', '891209-1234567', '010-7104-8912', 'join@gamil.com', '광주');
INSERT INTO `students`(`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdEmail`, `stdAddr`) VALUES('22421003', 42, 'P42103', '강동원', '770314-1234567', '010-8101-7703', 'dong@naver.com', '광주');

# 문제1
SELECT `stdNo`, `stdName`, `stdHp`, a.`depNo`, `depname`
FROM `students` AS a
JOIN `departments` AS b
ON a.depNo = b.depNo
ORDER BY `stdNo`;

# 문제2
SELECT `proNo`, `proName`, `proHp`, a.`depNo`, `depName`
FROM `professors` AS a
JOIN `departments` AS b
ON a.depNo = b.depNo
ORDER BY `proNo`;

# 문제3
SELECT `lecNo`, `lecName`, `proName`, `proHp`
FROM `lectures` AS a
JOIN `professors` AS b
ON a.proNo = b.proNo
ORDER BY `lecNo`;

# 문제4
SELECT `lecNo`, `lecName`, b.`proHp`, b.`proName`, `proHp`, c.`depNo`, `depName`
FROM `lectures` AS a
JOIN `professors` AS b ON a.proNo = b.proNo
JOIN `departments` AS c ON b.depNo = c.depNo
ORDER BY `lecNo`;

# 문제 5
SELECT a.`stdNo`, b.`stdName`, a.`lecNo`, c.`lecName`, a.`proNo`, d.`proName`
FROM `register` AS a
JOIN `students` AS b ON a.proNo = b.proNo
JOIN `lectures` AS c ON b.proNo = c.proNo
JOIN `professors` AS d ON c.proNo = d.proNo
ORDER BY a.`stdNo`;

# 문제 6
UPDATE `register` SET
								`regAttenScore` = CEIL(RAND() * 100),
							 	`regMidScore` = CEIL(RAND() * 100),
						  	 `regFinalScore` = CEIL(RAND() * 100);
					
# 문제 7
UPDATE `register` SET 
						`regEtcScore` = (`regAttenScore` + `regMidScore` + `regFinalScore`) / 3;
						
# 문제 8
UPDATE `register` SET
							`regGrade` = if(`regEtcScore` >= 90, 'A',
											 if(`regEtcScore` >= 80, 'B',
											 if(`regEtcScore` >= 70, 'C',
											 if(`regEtcScore` >= 60, 'D', 'F'))));
											 
# 문제 9
SELECT `regEtcScore`
FROM `register`
ORDER BY `regEtcScore`
DESC LIMIT 1;

# 문제 10
SELECT AVG(`regEtcScore`)
FROM `register` AS a
JOIN `students` AS b ON a.stdNo = b.stdNo
WHERE `stdName` = '정우성';
							`