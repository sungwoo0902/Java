package sub2;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/*
 * 날짜 : 2023/06/29
 * 이름 : 고성우
 * 내용 : Java 버퍼 입출력 스트림 실습하기
 * 
 * 보조스트림(버퍼)
 * - 기존 입출력 스트림에 Buffer를 장착해서 빠른 입출력을 제공하는 보조 스트림
 */
public class BufferIOTest {

	public static void main(String[] args) {
		
		String path = "C:\\Users\\GG\\Desktop\\java.zip";
		String target = "C:\\Users\\GG\\Desktop\\java2.zip";
		
		try {
			FileInputStream fis = new FileInputStream(path);
			FileOutputStream fos = new FileOutputStream(target);
			
			// 보조스트림
			BufferedInputStream bis = new BufferedInputStream(fis);
			BufferedOutputStream bos = new BufferedOutputStream(fos);
			
			while(true) {
				
				int data = fis.read();
				
				if(data == -1) {
					break;
				}
				char ch = (char) data;
				System.out.print(ch);
				
				fos.write(data);
			}
			
			// 스트림 해제
			bis.close();
			
			bos.flush(); // 버퍼 비우기
			bos.close();
			
			fis.close();
			fos.close();
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch(IOException e) {
			e.printStackTrace();
		}

		System.out.println("프로그램 종료...");
	}
}
