package test7;

/*
 * 날짜 : 2023/07/20
 * 이름 : 고성우
 * 내용 : 자바 총정리 연습문제
 */

interface Tv{
	
	public void turnOn(); 	
	public void turnOff();
}

		
public class Test09 {

	public static void main(String[] args) {
		
		Tv tv = new Tv() {
			@Override
			public void turnOn() {
				System.out.println("Tv를 켭니다.");
			}
			
			@Override
			public void turnOff() {
				System.out.println("Tv를 끕니다.");
			}
		};
		
		tv.turnOn();
		tv.turnOff();

	}

}
