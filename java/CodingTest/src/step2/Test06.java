package step2;

import java.util.Scanner;

public class Test06 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int h = sc.nextInt();
		int m = sc.nextInt();
		int t = sc.nextInt();
		sc.close();
		
		h += t / 60;
		m += t % 60;
		
		if(m>=60) {
			h += 1;
			m -= 60;
		}
		if(h >= 24) {
			h -= 24;
		}
		
		System.out.println(h+ " " +m);
	}
}
	