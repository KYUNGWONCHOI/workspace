package com.kh.practice1.func;

public class VariablePractice4 {
	public static void output(String word) {
		char[] ch = new char[3]; //배열 크기 3으로 초기화
		for(int i=0; i < 3; i++) {
			ch[i] = word.charAt(i); // i번째 인덱스에 있는 문자를 char 타입으로 저장
		}
		System.out.println("첫번째 알파벳 : "+ch[0]);
		System.out.println("첫번째 알파벳 : "+ch[1]);
		System.out.println("첫번째 알파벳 : "+ch[2]);
	}

}
