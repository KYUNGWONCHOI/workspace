package socket;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

public class ServerEx {
	public static void main(String[] args) {
		BufferedReader in = null;
		BufferedWriter out = null;
		ServerSocket listener = null;
		Socket socket = null;
		Scanner sc = new Scanner(System.in);
		try {
			listener = new ServerSocket(8888);
			System.out.println("Waiting connenction");
			socket = listener.accept();
			System.out.println("Connected");
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
			while(true) {
				System.out.print("send >>");
				String inputMsg = in.readLine();
				if(inputMsg.equalsIgnoreCase("bye")) {
					System.out.println("disconnected");
					break;
				}
				System.out.println("Client : "+inputMsg);
				String outputMsg = sc.nextLine();
				out.write(outputMsg + "\n");
				out.flush();
			}
		} catch (Exception e) {
		} finally {
			try {
				sc.close();
				if(socket != null) socket.close();
				if(listener != null) listener.close();
			} catch (Exception e2) {
				System.out.println("Error during chat");
			}
		}
	}

}
