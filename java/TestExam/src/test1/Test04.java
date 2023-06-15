package test1;

import java.util.Scanner;

/*
 * 날짜 : 2023/06/13
 * 이름 : 고성우
 * 내용 : 자바 기본 입출력 문제 
 */
public class Test04 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("점수 입력 : ");
		int score = sc.nextInt();
		char grade;
				
		System.out.println("입력한 점수는 " +score+ "입니다.");
		
		if(score >= 90 && score <= 100) {
			grade = 'A';
		}else if(score < 90 && score >= 80) {
			grade = 'B';
		}else if(score < 80 && score >= 70) {
			grade = 'C';
		}else if(score < 70 && score >= 60) {
			grade = 'D';
		}else {
			grade = 'F';
		}
		
		System.out.printf("등급은 %c입니다.", grade);
	}

}
