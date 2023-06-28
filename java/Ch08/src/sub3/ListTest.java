package sub3;

import java.util.ArrayList;
import java.util.List;


/*
 * 날짜 : 2023/06/28
 * 이름 : 고성우
 * 내용 : Java 자료유형 리스트 실습하기
 * 
 * List
 * - 배열과 유사하지만 동적으로 생성되는 선형 자료구조
 * - List를 구현한 ArrayList
 */
public class ListTest {
	
	public static void main(String[] args) {
		
		// List 생성
		List<Integer> list = new ArrayList<>();
		
		// 데이터 입력
		list.add(1);
		list.add(2);
		list.add(3);
		list.add(4);
		list.add(5);
		System.out.println(list);
		
		// 데이터 삽입
		list.add(1, 6);
		System.out.println(list);
		
		// 데이터 제거
		list.remove(2);
		System.out.println(list);
		
		// 데이터 출력
		System.out.println(list.get(0));
		System.out.println(list.get(1));
		System.out.println(list.get(3));
		
		// 리스트 크기(원소 개수 출력)
		System.out.println(list.size());
		
		// 리스트 반복문
		for(int num : list) { // auto-unboxing 처리
			System.out.println(num);
		}
		
		// 문자열 리스트
		List<String> people = new ArrayList<>();
		
		people.add("김유신");
		people.add("김춘추");
		people.add("장보고");
		people.add("강감찬");
		people.add("이순신");
		
		System.out.println(people);
		
		
		// 겍체 리스트
		List<Apple> apples = new ArrayList<>();
		
		Apple a1 = new Apple("한국", 3000);
		Apple a2 = new Apple("미국", 2000);
		
		apples.add(a1);
		apples.add(a2);
		apples.add(new Apple("일본", 1000));
		
		Apple apple = apples.get(0);
		apple.show();
		
		apples.get(1).show();
		apples.get(2).show();
		
	}
}






