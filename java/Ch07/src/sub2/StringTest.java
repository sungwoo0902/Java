package sub2;

/*
 * 날짜 : 2023/06/27
 * 이름 : 고성우
 * 내용 : Java String 클래스 실습하기
 * 
 * String 클래스
 *  - String 문자열을 처리하는 클래스
 *  - 문자열 비교는 equals, 다양한 문자열 가공 메서드 제공
 *  - String 클래스의 immutable 특성으로 인한 성능을 개선하기 위해 StringBuilder 사용
 */
public class StringTest {

	public static void main(String[] args) {
		
		// 문자열(문자 + 배열) 생성
		String str1 = "Hello"; 				// 암시적(literal)
		String str2 = new String("Hello"); 	// 명시적
		
		System.out.println("str1 : " +str1);
		System.out.println("str1 : " +str2);
		
		// 문자열 비교
		if(str1 == str2) {
			System.out.println("str1, str2 주소가 같다.");
		}else {
			System.out.println("str1, str2 주소가 다르다.");
		}
		
		if(str1.equals(str2)) {
			System.out.println("str1, str2는 문자열 값이 같다.");
		}else {
			System.out.println("str1, str2는 문자열 값이 다르다.");
		}
		
		// 문자열 길이
		String msg = "Hello Korea";
		System.out.println("msg 길이 : " +msg.length());
		
		// 문자열 추출
		char c1 = msg.charAt(0);
		char c2 = msg.charAt(6);
		
		System.out.println("msg 첫 번째 문자 : " +c1);
		System.out.println("msg 첫 번째 문자 : " +c2);		
		
		// 문자열 자르기
		String sub1 = msg.substring(0, 5);
		String sub2 = msg.substring(6);
		
		System.out.println("sub1의 0번째부터 5번째까지 문자열 : " +sub1);
		System.out.println("sub2의 6번째부터 마지막까지의 문자열 : " +sub2);
		
		// 문자열 인덱스
		int index1 = msg.indexOf("e");
		int index2 = msg.lastIndexOf("e");
		
		System.out.println("문자 e의 개수 : " +index1);
		System.out.println("문자 e의 제일 뒤에서부터 위치 : " +index2);
		
		// 문자열 교체
		String rs1 = msg.replace("Korea", "Busan");
		String rs2 = msg.replace("Hello", "Welcome");
		
		System.out.println("rs1 : " +rs1);
		System.out.println("rs2 : " +rs2);
		
		// 문자열 변환
		int var1 = 1;
		double var2 = 3.14;
		boolean var3 = true;
		
		String s1 = String.valueOf(var1);
		String s2 = String.valueOf(var2);
		String s3 = String.valueOf(var3);
		
	}

}
