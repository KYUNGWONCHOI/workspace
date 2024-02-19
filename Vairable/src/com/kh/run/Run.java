package com.kh.run;

import java.util.Scanner;

import com.kh.practice1.func.VariablePractice1;
import com.kh.practice1.func.VariablePractice2;
import com.kh.practice1.func.VariablePractice3;
import com.kh.practice1.func.VariablePractice4;

public class Run {

	public static void main(String[] args) {
		
		int problemNumber;
		
		int num1, num2;
		double width, height, size, area;
		
		System.out.print("문제 번호 : ");
		problemNumber = new Scanner(System.in).nextInt();
		
		if (problemNumber ==1) {
			System.out.print("이름을 입력하세요 : ");
			VariablePractice1.inputStr();
			System.out.print("나이를 입력하세요 : ");
			VariablePractice1.inputInteger();
			System.out.print("키를 입력하세요 : ");
			VariablePractice1.inputInteger();
			System.out.print("성별을 입력하세요 : ");
			VariablePractice1.inputStr();
		}
		else if(problemNumber == 2) {
			Scanner digit = new Scanner(System.in);
			System.out.println("두 개의 정수를 입력하세요");
			System.out.print("첫번째 정수 : ");
			num1 = digit.nextInt();
			System.out.print("두번째 정수 : ");
			num2 = digit.nextInt();
			System.out.println("더하기 결과 : "+ VariablePractice2.puls(num1, num2));
			System.out.println("빼기 결과 : "+ VariablePractice2.minus(num1, num2));
			System.out.println("곱하기 결과 : "+ VariablePractice2.times(num1, num2));
			System.out.println("나누기 결과 : "+ VariablePractice2.division(num1, num2));
		}
		else if(problemNumber == 3) {
			System.out.println("사각형의 가로 세로의 크기를 입력하세요");
			System.out.print("가로 : ");
			Scanner digit = new Scanner(System.in);
			width = digit.nextDouble();
			System.out.print("세로 : ");
			height = digit.nextDouble();
			size = VariablePractice3.size(width, height);
			area = VariablePractice3.area(width, height);
			System.out.println("둘레는 "+2*size+"입니다.");
			System.out.println("넓이는 "+area+"입니다.");
		}
		else if(problemNumber == 4) {
			System.out.print("영어 단어를 입력하세요 : ");
			Scanner inputWord = new Scanner(System.in);
			String word = inputWord.next();
			VariablePractice4.output(word);
						
		}
		else
			System.out.println(problemNumber +"번 문제는 없습니다.");
	}

}
