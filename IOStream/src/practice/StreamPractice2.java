package practice;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class StreamPractice2 {
	public static void main(String[] args) {
		FileOutputStream fos = null;
		FileInputStream fis = null;
		File file = new File("./FileReader.txt");
		try {
			boolean a = file.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
		try {
			fis = new FileInputStream("FileReader.txt");
			fos = new FileOutputStream("FileReader.txt");
			
			int i;
			
			while((i = System.in.read()) != '\n') {
					fos.write(i);
			}
			int j;
			while((j = fis.read()) != -1) {
				System.out.print((char)j);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
				try {
					if(fos != null) fos.close();
					if(fis != null) fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
		}
	}

}
