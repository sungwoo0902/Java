package test1;

/*
 * 날짜 : 2023/06/13
 * 이름 : 고성우
 * 내용 : 자바 연산자 문제 
 */
public class Test03 {

	public static void main(String[] args) {
		
		int num = 1;
		int result = 0;
		
		result = num++;
		System.out.println("result : " +result);
		
		result = ++num;
		System.out.println("result : " +result);
		
		result = num--;
		System.out.println("result : " +result);
		
		result = --num;
		System.out.println("result : " +result);

	}

}
