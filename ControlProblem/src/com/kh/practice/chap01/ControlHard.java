package com.kh.practice.chap01;

import java.util.Scanner;

public class ControlHard {
	public void hard() {
		System.out.print("4자리의 비밀번호를 입력하세요 : ");
		Scanner sc = new Scanner(System.in);
		String pw = sc.next();
		char[] comPw = new char[pw.length()];
		for (int i = 0; i <= pw.length(); i++) {
			comPw[i] = pw.charAt(i);
		}
//		for (int i = 0; i <= pw.length(); i++) {
//			System.out.println(comPw[0]);
//		}
		if (pw.length() == 4)

		{
			for (int i = 0; i <= 3; i++) {
				for (int j = 0; j <= 9; j++) {
					if (comPw[i] == comPw[i + 1]) {
						System.out.println("중복되는 숫자가 있습니다.");
						break;
					} else
						System.out.println("비밀번호는 " + pw + "입니다.");
				}
			}

		} else
			System.out.println("자리수 안 맞음");
	}

}
