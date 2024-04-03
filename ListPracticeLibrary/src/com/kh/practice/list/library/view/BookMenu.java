package com.kh.practice.list.library.view;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import com.kh.practice.list.library.controller.BookController;
import com.kh.practice.list.library.model.vo.Book;

public class BookMenu {
	Scanner sc = new Scanner(System.in);
	BookController bc = new BookController();
	String menuNum;
	
	public BookMenu() {
	}

	public void mainMenu() {
		do {
			System.out.println("메뉴");
			System.out.println("1. 새 도서 추가");
			System.out.println("2. 전체 도서 목록 출력");
			System.out.println("3. 도서 검색");
			System.out.println("4. 도서 삭제");
			System.out.println("5. 오름차순 정렬");
			System.out.println("9. 종료");
			System.out.print("메뉴를 선택하세요");
			menuNum = sc.nextLine();
			switch (menuNum) {
			case "1":
				System.out.println("도서 추가");
				insertBook();
				break;
			case "2":
				selectList();
				break;
			case "3":
				searchBook();
				break;
			case "4":
				deleteBook();
				break;
			case "5":
				ascBook();
				break;
			case "9":
				System.out.println("종료합니다.");
				return;
			default:
				System.out.print("잘못된 번호입니다. 다시 입력해주세요.");
				break;
			}

		} while (!(menuNum.equals("9")));

	}

	public void insertBook() {
		System.out.print("book name : ");
		String title = sc.nextLine();
		System.out.print("author name : ");
		String author = sc.nextLine();
		System.out.println("장르를 선택하세요");
		System.out.println("1.인문\t2.자연과학\t3.의료\t4.기타");
		int genre = sc.nextInt();
		String category = null;
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
		System.out.print("price : ");
		int price = sc.nextInt();
		
		Book tempBook = new Book(title, author, category, price);
		bc.insertBook(tempBook);

	}

	public void selectList() {
		List<Book> tempList = bc.selectList();
		if (tempList.isEmpty()) {
			System.out.println("리스트가 비었습니다.");
		} else {
			for (Book vo : tempList) {
				System.out.println(vo.toString());
			}
		}
	}

	public void searchBook() {
		System.out.print("찾는 도서명을 입력하세요 : ");
		String bookName = sc.nextLine();
		List<Book> searchList = null;
		searchList = bc.searchBook(bookName);
		if(searchList == null) {
			System.out.println("도서명과 일치하는 도서가 없습니다.");
		} else {
			System.out.println(searchList.toString());
		}
	}

	public void deleteBook() {
		System.out.print("삭제할 도서명을 입력하세요 : ");
		String bookName = sc.nextLine();
		System.out.print("삭제할 도서 저자 입력하세요 : ");
		String bookAuthor = sc.nextLine();
		Book removeBook = bc.deleteBook(bookName, bookAuthor);
		if(removeBook == null) {
			System.out.println("삭제할 도서가 없습니다.");
		}else {
			System.out.println("도서를 삭제하였습니다."+ removeBook.toString());
		}
	}

	public void ascBook() {
		int result = bc.ascBook();
		if(result == 1) {
			System.out.println("오름차순 정리 성공");
		}else {
			System.out.println("오름차순 정리 실패");
		}
	}

}
