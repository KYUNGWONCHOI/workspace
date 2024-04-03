package practice;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

public class IOStreamPractice01 {
	public static void main(String[] args) {
		InputStream is = System.in;
		OutputStream os = System.out;
		int idata = 0;

		InputStreamReader isr = new InputStreamReader(is);
		OutputStreamWriter osw = new OutputStreamWriter(os);

		char[] cdata = new char[10];
		char[] inData = new char[cdata.length];

		try {
			System.out.println("======InputStream");
			idata = is.read();
			os.write(idata);
			os.flush();

			System.out.println("\n======InputStreamReader");
			isr.read(cdata);
			for (int i = 0; i < cdata.length; i++) {
				inData[i] = cdata[i];
			}
			for(char a : inData) {
				System.out.println(a);
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (os != null) {
					os.close();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
