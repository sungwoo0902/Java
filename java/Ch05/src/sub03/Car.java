package sub03;

public class Car {

		// 필드 (속성) , Heap에 저장
		private String name;
		private String color;
		private int speed;
		
		// 클래스변수(정적변수), Method Area에 저장
		public static int count;
		
		// 생성자 : 캡슐화된 속성을 초기화하기 위한 매서드
		public Car(String name, String color, int speed) {
			this.name = name;
			this.color = color;
			this.speed = speed;
			count++;
		}
		
		public static int getCount() {
			return count;
		}
		
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
