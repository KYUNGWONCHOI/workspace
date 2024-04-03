package kh.mclass.jdbc.view;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import static kh.mclass.jdbc.common.JdbcTemplate.*;
import kh.mclass.jdbc.controller.SalgradeController;
import kh.mclass.jdbc.model.vo.Emp;
import kh.mclass.jdbc.model.vo.Salgrade;

public class SalgradeMenu {
	private Scanner sc = new Scanner(System.in);
	private SalgradeController controller = new SalgradeController();
	
	public void salgradeMenu() {
		boolean exit = false;
		while (true) {
			System.out.println("번호 입력");
			System.out.println("1. 조회");
			System.out.println("2. 추가");
			System.out.println("3. 삭제");
			System.out.println("4. 메인메뉴");
			String menu = sc.nextLine();
			switch (menu) {
			case "1":
				selectList();
				break;
			case "2":
				insert();
				break;
			case "3":
				delete();
				break;
			case "4":
				return;
			default:
				exit = true;
				break;
			}
			if(exit == true) {
				break;
			}
		}

	}
	public void selectList() {
		List<Salgrade> list = controller.selectList();
		if(list == null) {
			System.out.println("읽기 실패");
		}else {
			System.out.println("Salgrade 수 : "+ list.size());
			if(list.size() > 0) {
				for(Salgrade vo : list) {
					System.out.println(vo);
				}
			}
		}
	}
	public void insert() {
		try {
			System.out.print("Grade : ");
			String gradestr = sc.nextLine();
			int grade = Integer.parseInt(gradestr);
			System.out.print("Losal : ");
			String losalstr = sc.nextLine();
			int losal = Integer.parseInt(losalstr);
			System.out.print("Hisal : ");
			String hisalstr = sc.nextLine();
			int hisal = Integer.parseInt(hisalstr);
			
			Salgrade salgrade = new Salgrade(grade, losal, hisal);
			
			controller.insert(salgrade);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void delete() {
		System.out.print("삭제할 Grade 를 입력해 주세요 : ");
		String grade = sc.nextLine();
		int result = Integer.parseInt(grade);
		controller.delete(result);
	}
}
