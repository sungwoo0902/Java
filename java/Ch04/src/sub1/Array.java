package sub1;

/*
 * 날짜 : 2023/06/14
 * 이름 : 고성우
 * 내용 : 자바 배열 실습하기
 */
public class Array {

	public static void main(String[] args) {
		
		// 배열
		int[] arr1 = { 1, 2, 3, 4, 5}; 
		char[] arr2 = {'A', 'B', 'C'};
		String[] arr3 = {"서울", "대전", "대구", "부산", "광주"};
		
		// 원소 출력
		System.out.println("arr1[0] : " +arr1[0]); // 첫번째 원소 출력
		System.out.println("arr1[2] : " +arr1[2]); // 세번째 원소 출력
		System.out.println("arr1[3] : " +arr1[3]); // 네번째 원소 출력
		
		System.out.println("arr2[2] : " +arr2[2]); // 세번째 원소 출력
		
		System.out.println("arr3[3] : " +arr3[3]); // 네번째 원소 출력
		
		// 배열 길이(원소 개수)
		System.out.println("arr1 길이 : " +arr1.length);
		System.out.println("arr2 길이 : " +arr2.length);
		System.out.println("arr3 길이 : " +arr3.length);
		
		// 배열 반복문
		for(int i=0; i<arr1.length; i++) {
			
			System.out.print(arr1[i]+", ");
		}
		
		System.out.println(); // 개행
		
		for(char c : arr2) {
			System.out.print(c+" ");
		}
		
		System.out.println(); // 개행
		
		for(String c : arr3) {
			System.out.print(c+" ");
		}
		
		System.out.println(); // 개행
		
		// 1차원 배열
		int[] scores = {80, 60, 70, 62, 92};
		int total = 0;
		
		for(int score : scores) {
			total += score; 
		}
		
		System.out.println("scores 합 : " +total);
		
		// 2차원 배열
		int[][] arr2nd = {{1, 2, 3, 4}, // 행 0번 열 0~3번
						  {5, 6, 7, 8}, // 행 1번 열 0~3번
						  {9, 10, 11, 12}}; // 행 2번 열 0~3번
		
		for(int a=0; a<3; a++) {
			
			for(int b=0; b<4; b++) {
				System.out.println("arr2nd["+a+"]["+b+"] : " +arr2nd[a][b]);
			}
		}
		
		
		// 3차원 배열
		int[][][] arr3rd = {{{1, 2, 3}, {4, 5, 6}, {7, 8, 9}},
						   {{10, 11, 12}, {13, 14, 15}, {16, 17, 18}},
						   {{19, 20, 21}, {22, 23, 24}, {25, 26, 27}}};		
		
		for(int a=0; a<3; a++) {
			
			for(int b=0; b<3; b++) {
				
				for(int c=0; c<3; c++) {
					System.out.printf("arr3rd[%d][%d][%d] : %d\n", a, b, c, +arr3rd[a][b][c]);
				}
			}
		}
		
		

	}

}
