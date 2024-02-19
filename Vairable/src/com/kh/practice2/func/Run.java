package com.kh.practice2.func;

import java.util.Scanner;

public class Run {
	public static void main(String[] args) {
		
		char ch1;
		int out;
		int score1, score2, score3;

		String str;
		System.out.print("문자를 입력하세요 : ");
		Scanner sc1 = new Scanner(System.in);
		str = sc1.next();
		out = CastingPractice1.asci(str);
		System.out.println("유니코드 : "+ out);
		
		System.out.println("국어 점수를 입력해 주세요 : ");
		Scanner jum1 = new Scanner(System.in);
		score1 = jum1.nextInt();
		System.out.println("영어 점수를 입력해 주세요 : ");
		Scanner jum2 = new Scanner(System.in);
		score2 = jum2.nextInt();
		System.out.println("수학 점수를 입력해 주세요 : ");
		Scanner jum3 = new Scanner(System.in);
		score3 = jum3.nextInt();
		CastingPractice2.score(score1, score2, score3);
		
		

	}

}
