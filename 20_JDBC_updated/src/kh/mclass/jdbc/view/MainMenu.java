package kh.mclass.jdbc.view;

import java.util.Scanner;

public class MainMenu { // 프로그램 실행시 작동
	Scanner sc = new Scanner(System.in);

	public void mainMenu() {
		int num =0 ;
		while (num != 9) {
			System.out.println("메인메뉴");
			System.out.println("메뉴를 선택하세요 : ");
			System.out.println("1. Emp");
			System.out.println("2. Dept");
			System.out.println("3. Salgrade");
			System.out.println("9. 나가기");
			String input = sc.nextLine();
			num = Integer.parseInt(input);
			if (num == 1) {
				new EmpMenu().empMenu();
			} else if (num == 2) {
				new DeptMenu().deptMenu();
			} else if (num == 3) {
				new SalgradeMenu().salgradeMenu();
			} else if (num != 9)
				System.out.println("다시 입력해 주세요");
			
		}

	}

}
