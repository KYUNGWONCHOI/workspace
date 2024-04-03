package socket;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.Socket;
import java.util.Scanner;

public class ClientEx {
	public static void main(String[] args) {
		BufferedReader in = null;
		BufferedWriter out = null;
		Scanner sc = new Scanner(System.in);
		Socket socket = null;
		try {
			socket = new Socket("localhost", 8888);
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
			while (true) {
				System.out.print("send>>");
				String outputMsg = sc.nextLine();
				if (outputMsg.equalsIgnoreCase("bye")) {
					out.write(outputMsg + "\n");
					out.flush();
					break;
				}
				out.write(outputMsg + "\n");
				out.flush();
				String inputMsg = in.readLine();
				System.out.println("server : " + inputMsg);
			}
		} catch (Exception e) {
		} finally {
			try {
				sc.close();
				if (socket != null) socket.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
