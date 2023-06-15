# 날짜 : 2023/06/15
# 이름 : 김철학
# 내용 : 3장 데이터베이스 관리

# 실습 3-1
CREATE DATABASE `TestDB`;
CREATE USER 'tester'@'%' IDENTIFied BY '1234';
GRANT ALL privileges ON TestDB.* to 'tester'@'%';
flush privileges;

# 실습 3-2
alter user 'tester'@'%' identified by '12345';
drop user 'tester'@'%';
flush privileges; 
