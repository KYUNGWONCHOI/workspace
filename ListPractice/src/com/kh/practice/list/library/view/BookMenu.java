package com.kh.practice.list.library.view;

import java.util.Scanner;

import com.kh.practice.list.library.controller.BookController;
import com.kh.practice.list.library.model.vo.Book;

public class BookMenu {
	Scanner sc = new Scanner(System.in);

	public BookMenu() {
	}

	public void mainMenu() {
		int menuNum = 0;
		do {
			System.out.print("메뉴버튼을 입력하세요");
			menuNum = sc.nextInt();
			switch (menuNum) {
			case 1:
				System.out.println("도서 추가");
				break;
			case 2:
				System.out.println("전체 도서 목록 출력 성공을 알리는 메소드");
				break;
			case 3:
				System.out.println("특정 도서 검색 결과");
				break;
			case 4:
				System.out.println("특정 도서 삭제 성공을 알리는 메소드");
				break;
			case 5:
				System.out.println("책명 오름차순 정렬 성공을 알리는 메소드");
				break;
			default:
				System.out.print("잘못된 번호입니다. 다시 입력해주세요.");
				break;
			}

		} while (menuNum != 9);

	}

	public void insertBook() {
		System.out.println("book name");
		String title = sc.nextLine();
		System.out.println("author name");
		String author = sc.nextLine();
		System.out.println("genre");
		System.out.println("장르를 선택하세요");
		System.out.print("1.인문\t2.자연과학\t3.의료\t4.기타");
		int genre = sc.nextInt();
		String category = new String();
		do {
			
			switch (genre) {
			case 1:
				category = "인문";
				break;
			case 2:
				category = "자연과학";
				break;
			case 3:
				category = "의료";
				break;
			case 4:
				category = "기타";
				break;
			default:
				System.out.println("잘못 입력하였습니다. 다시 입력해주세요");
				break;
			}
		} while (!(0 < genre && genre <= 4));
		System.out.println("price");
		int price = sc.nextInt();
		Book newBook = new Book(title, author, category, price);
//		Book newBook = new Book();

	}

	public void selectList() {
	}

	public void searchBook() {
	}

	public void deleteBook() {
	}

	public void ascBook() {
	}

}
