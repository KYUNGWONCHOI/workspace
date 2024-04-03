package practice;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class StreamPractice3 {
	public static void main(String[] args) {
//		File file = new File("./reader.txt");
//		try {
//			if (file.createNewFile() == true) {
//				System.out.println("파일 생성");
//			} else
//				System.out.println("파일 안 만들어짐");
//		} catch (IOException e) {
//			e.printStackTrace();
//		}

		try (FileReader fr = new FileReader("reader.txt")) {
			int i;
			while ((i = fr.read()) != -1) {
				System.out.print((char) i);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
