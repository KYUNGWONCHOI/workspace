package com.kh.practice.chap01;

import java.util.Scanner;

public class ControlPractice {
	Scanner sc = new Scanner(System.in);

	public void practice01() {
		System.out.println("메뉴 종류 입니다.\n 1. 입력 \t 2. 수정 \t 3. 조회 \t4. 삭제 \t5. 종료	");
		System.out.print("이용하실 메뉴 번호를 입력하세요 : ");

		String input = sc.next();

		switch (input.charAt(0)) {
		case '1':
			System.out.println("입력 메뉴입니다.");
			break;
		case '2':
			System.out.println("수정 메뉴입니다.");
			break;
		case '3':
			System.out.println("조회 메뉴입니다.");
			break;
		case '4':
			System.out.println("삭제 메뉴입니다.");
			break;
		case '5':
			System.out.println("종료 메뉴입니다.");
			break;
		}
	}

	public void practice02() {
		int num;
		System.out.print("정수를 입력해주세요 : ");
		num = sc.nextInt();
		if (num > 0) {
			System.out.println("입력된 수는 양수입니다.");
		} else if (num < 0) {
			System.out.println("입력받은 수는 음수입니다.");
		} else if (num == 0) {
			System.out.println("입력받은 수는 0 입니다.");
		}
	}
	
	public void practice03() {
		int koNum;
		int maNum;
		int enNum;
		int sum;
		int avg;
		
		System.out.println("국어, 수학, 영어 점수를 입력하세요");
		System.out.print("국어 : ");
		koNum = sc.nextInt();
		System.out.print("수학 : ");
		maNum = sc.nextInt();
		System.out.print("영어 : ");
		enNum = sc.nextInt();
		
		sum = koNum + maNum + enNum;
		avg = (koNum + maNum + enNum)/3 ;
		if(koNum >= 40 && maNum >= 40 && enNum >= 40) {
			if(avg >= 60) {
				System.out.println("합 : "+ sum);
				System.out.println("평균 : "+ avg);
				System.out.println("합격입니다.");
			}
			else
				System.out.println("불합격입니다.");
		}
		else
			System.out.println("불합격입니다.");
	}
	public void practice04() {
		String id;
		String pw;
		String inputId;
		String inputPw;
		
		id = "Kyungwon";
		pw = "0855";
		System.out.print("id를 입력하세요 : ");
		inputId = sc.next();
		System.out.print("pw를 입력하세요 : ");
		inputPw = sc.next();
		
		if(id.equals(inputId)) {
			if(pw.equals(inputPw)) {
				System.out.println("로그인 성공");
			}
			else
				System.out.println("pw error");
		}
		else
			System.out.println("id error");
		
		
	}

}
