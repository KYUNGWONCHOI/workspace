package soket.practice0302;

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
			listener = new ServerSocket(1234);
			System.out.println("Server waiting..");
			socket = listener.accept();
			System.out.println("Connected");
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
			while (true) {
				String inputMsg = in.readLine();
				if (inputMsg.equalsIgnoreCase("bye")) {
					System.out.println("Disconnecting");
					break;
				}
				System.out.println("Client : " + inputMsg);
				System.out.print("Send>> ");
				String outputMsg = sc.nextLine();
				out.write(outputMsg+"\n");
				out.flush();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (in != null)in.close();
				if (out != null)out.close();
				if (listener != null)listener.close();
				if (socket != null) socket.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
}
