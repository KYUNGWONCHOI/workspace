package com.kh.practice.list.library.view;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.kh.practice.list.library.controller.BookController;
import com.kh.practice.list.library.model.vo.Book;

public class BookMenu {
	Scanner sc = new Scanner(System.in);
	List<Book> bookList = new ArrayList<Book>();

	public void mainMenu() {
		System.out.println("=====메인 메뉴=====");
		System.out.println("1. add new book");
		System.out.println("2. search all books");
		System.out.println("3. search a book");
		System.out.println("4. delete a book");
		System.out.println("5. 오름차순 정렬");
		System.out.println("9. 종료");
		System.out.print("번호를 입력하세요 : ");
		String num = sc.nextLine();
		int result = Integer.parseInt(num);
		int exit = 0;
		while (exit != 5) {
			switch (result) {
			case 1:
				insertBook();
				break;
			case 2:
				selectBook();
				break;
			case 3:
				searchBook();
				break;
			case 4:
				deleteBook();
				break;
			case 5:
				ascBook();
				break;
			case 9:
				return;
			default:
				System.out.println("올바른 번호 다시 입력");
				exit++;
				break;
			}
		}
	}

	public void insertBook() {
		Book bk = new Book();
		System.out.print("도서명 입력");
		String title = sc.nextLine();
		bk.setTitle(title);
		System.out.print("저자명 입력");
		String author = sc.nextLine();
		bk.setAuthor(author);
		String category = null;
		while (true) {
			System.out.println("장르");
			System.out.println("1. x, 2. y, 3.z");
			System.out.print("장르를 입력하세요");
			int categoryNum = sc.nextInt();
			switch (categoryNum) {
			case 1:
				category = "x";
				break;
			case 2:
				category = "y";
				break;
			case 3:
				category = "z";
				break;
			default:
				System.out.println("다시 입력하세요");
				break;
			}
			if(category != null) break;
		}
		bk.setCategory(category);
		System.out.print("저자명 입력");
		int price = sc.nextInt();
		bk.setPrice(price);
		
		bookList.add(bk);

	}

	public void selectBook() {

	}

	public void searchBook() {

	}

	public void deleteBook() {

	}

	public void ascBook() {

	}

}
