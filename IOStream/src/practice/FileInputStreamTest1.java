package practice;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class FileInputStreamTest1 {
	public static void main(String[] args) {
		try {
			File file = new File("../OutPut.txt"); // path 설정 후 path 에 file 클래스 객채 생성
			file.createNewFile(); // 파일 생성
			FileInputStream fis = new FileInputStream("OutPut.txt"); // FileInputStream 을 사용하여 OutPut.txt 파일에 읽는 스트림 생성
			FileOutputStream fos = new FileOutputStream("OutPut.txt"); // FileOutputStream 클래스를 사용하여 OutPut.txt 파일에 쓰는

			InputStream is = System.in; // 스트림 생성
			OutputStream os = System.out;
			int j;
			while ((j = is.read()) != '\n') {
				fos.write(j); // 파일에 숫자 입력
			}
			int i;
			while ((i = fis.read()) != -1) { // FileInputStream 클래스에 .read()메서드를 사용하여 한 바이트씩 파일을 읽음
				System.out.print((char) i);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
