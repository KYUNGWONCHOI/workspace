package com.kh.practice.list.music.view;

import java.util.Scanner;

import com.kh.practice.list.music.controller.MusicController;

public class MusicView {
	Scanner sc = new Scanner(System.in);
	MusicController mc = new MusicController();

	public void mainMenu() {
		String num = null;
		do {
			System.out.println("메뉴를 선택하세요");
			System.out.println("1. 마지막 위치에 곡 추가");
			System.out.println("2. 첫 위치에 곡 추가");
			System.out.println("3. 전체 곡 목록 출력");
			System.out.println("4. 특정 곡 검색");
			System.out.println("5. 특정 곡 삭제");
			System.out.println("6. 특정 곡 정보 수정");
			System.out.println("7. 곡명 오름차순 정렬");
			System.out.println("8. 가수명 내림차순 정렬");
			System.out.println("9 종료");
			System.out.print("메뉴 번호 입력 : ");
			num = sc.nextLine();
			switch(num) {
			case "1":
				addList();
				break;
			case "2":
				printAll();
				break;
			case "3":
				addAtZero();
				break;
			case "4":
				searchMusic();
				break;
			case "5":
				removeMusic();
				break;
			case "6":
				setMusic();
				break;
			case "7":
				ascTitle();
				break;
			case "8":
				descSinger();
				break;
			case "9":
				return;
			default:
				System.out.println("다시 입력");
				break;
			}
		} while (num != "9");
	}

	public void addList() {

	}
	
	public void printAll() {
		
	}

	public void addAtZero() {

	}

	public void searchMusic() {

	}
	
	public void setMusic() {
		
	}

	public void removeMusic() {

	}

	public void ascTitle() {

	}

	public void descSinger() {

	}

}
