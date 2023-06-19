package step3;

import java.util.Scanner;

public class Test03 {

	public static void main(String[] args) {
		
		Scanner cs = new Scanner(System.in);
		int res = 0;
		int sum = 0;
		int n = cs.nextInt();
		
		for(int i=1; i<n+1; i++) {
			sum += i; 
			res = sum;
		}
		System.out.println(res);
	}

}
