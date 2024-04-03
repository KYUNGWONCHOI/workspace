package baekjun.practice;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int count = Integer.parseInt(sc.nextLine());
		String[] strArr = new String[count];
		for(int i=0; i < count; i++) {
			strArr[i] = sc.nextLine();
		}
		for(int i=0; i<count; i++) {
			for(int j=0; j<(strArr[i].length()-1); j++) {
				if(j == 0 || j == (strArr[i].length()-1)) {
					System.out.println(strArr[j].charAt(j));
				}
			}
		}
	}
}
