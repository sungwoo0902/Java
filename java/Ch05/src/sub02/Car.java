package sub02;

public class Car {

	// 필드(속성)
	private String name;
	private String color;
	private int speed;
	
	// 생성자 : 캡슐화된 속성을 초기화하기 위한 매서드
	public Car(String name, String color, int speed) {
		this.name = name;
		this.color = color;
		this.speed = speed;
	}
	
	// 매서드(기능)
	public void speedUp(int speed) {
		this.speed += speed;
	}
	
	public void speedDown(int speed) {
		this.speed -= speed;
	}
	
	public void show() {
		System.out.println("차량명 : " +this.name);
		System.out.println("차량색 : " +this.color);
		System.out.println("현재속도 : " +this.speed);
}
}