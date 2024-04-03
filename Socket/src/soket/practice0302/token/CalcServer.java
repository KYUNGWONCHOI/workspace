package soket.practice0302.token;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.StringTokenizer;

public class CalcServer {
	public static String calc(String exp) {
		StringTokenizer st = new StringTokenizer(exp);
		if (st.countTokens() != 3) {
			return "error count";
		}
		String res = null;
		int op1 = Integer.parseInt(st.nextToken());
		String opcode = st.nextToken();
		int op2 = Integer.parseInt(st.nextToken());
		System.out.println("parseint");
		switch (opcode) {
		case "+":
			res = Integer.toString(op1 + op2);
			break;
		case "-":
			res = Integer.toString(op1 - op2);
			break;
		case "*":
			res = Integer.toString(op1 * op2);
			break;
		case "/":
			res = Integer.toString(op1 / op2);
		default:
			res = "error exception";
			break;
		}
		return res;
	}

	public static void main(String[] args) {
		BufferedReader in = null;
		BufferedWriter out = null;
		ServerSocket listener = null;
		Socket socket = null;
		try {
			listener = new ServerSocket(3333);
			System.out.println("Waiting to connect..");
			socket = listener.accept();
			System.out.println("Connected");
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
			while(true) {
				String inputMsg = in.readLine();
				if(inputMsg.equalsIgnoreCase("bye")) {
					System.out.println("Disconnecting..");
					break;
				}
				System.out.println(inputMsg);
				String res = calc(inputMsg);
				out.write(res + "\n");
				out.flush();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(in != null) in.close();
				if(out != null) out.close();
				if(listener != null) listener.close();
				if(socket != null) socket.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

}
