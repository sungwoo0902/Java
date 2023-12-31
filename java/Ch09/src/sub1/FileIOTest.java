package sub1;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/*
 * 날짜 : 2023/06/29
 * 이름 : 고성우
 * 내용 : Java 파일 입출력 스트림 실습하기
 * 
 * 입출력 스트림(Stream)
 *  - 프로그램은 데이터 처리와 함께 데이터 저장을 위해 파일 입출력 수행
 *  - 파일 입출력을 위해 스트림(데이터 연결 통로) 사용ㄹ
 */
public class FileIOTest {

	public static void main(String[] args) {
		
		String path = "C:\\Users\\GG\\Desktop\\sample1.txt";
		String target = "C:\\Users\\GG\\Desktop\\sample2.txt";		
		
		try{
			// 스트림 연결
			FileInputStream fis = new FileInputStream(path);
			FileOutputStream fos = new FileOutputStream(target);
			
			while(true) {
				
				// 파일 읽기
				int data = fis.read();
				
						
				if(data == -1) {
					// 파일을 모두 읽었을 때 반복 종료
					break;
				}
				// 숫자를 문자로 변환
				char ch = (char) data;
				System.out.print(ch);
				
				// 파일 쓰기
				fos.write(data);
			}
			// 스트림 해제
			fis.close();
			fos.close();
			
		} catch(FileNotFoundException e){
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("프로그램 종료...");
	
	} // main end
	
	

}
