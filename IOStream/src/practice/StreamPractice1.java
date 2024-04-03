package practice;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class StreamPractice1 {
	public static void main(String[] args) {
		File file = new File("./file.txt");
		boolean a = false;
		FileInputStream fis = null;
		FileOutputStream fos = null;
		
		try {
			a = file.createNewFile();
			fis = new FileInputStream("file.txt");
			fos = new FileOutputStream("file.txt");
			
			int i;
			while((i = System.in.read()) != '\n') {
				fos.write(i);
			}
			int j;
			while((j = fis.read()) != -1) {
				System.out.print((char)j);
			}
			
			byte[] bs = new byte[10];
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (fis != null)
					fis.close();
				if (fos != null)
					fos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
