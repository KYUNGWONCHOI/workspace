package com.kh.practice.list.library.controller;

import java.util.ArrayList;
import java.util.List;

import com.kh.practice.list.library.model.vo.Book;

public class BookController {
	List<Object> bookList = new ArrayList<Object>();
	public BookController() {
		bookList.add(new Book("자바의 정석", "남궁성", "기타", 20000));
		bookList.add(new Book("쉽게 배우는 알고리즘", "문병로", "기타", 15000));
		bookList.add(new Book("대화의 기술", "강보람", "인문", 17500));
		bookList.add(new Book("암 정복기", "박신우", "으료", 21000));
	}//초기 값을 넣어 줄 기본 생성자
	
	public void insertBook(Book bk) {
		bookList.add(bk);
		
	} //리스트에 값 저장 메소드
	
	public ArrayList<Object> selectList() {
//		String location = bookList.toString();
		return bookList;
	} //모든 리스트를 출력하는 메소드
	
	public  ArrayList searchBook(String keyword) {
		return abc;
	}//키워드로 책을 검색하는 멧드
	
	public Book deleteBook(String title, String author) {}//책 제목과 저자 명으로 책을 삭제하는 메소드
	
	public int ascBook() {
		return 0;
	}//책 명 오름차순 정렬하는 메소드
	

}
