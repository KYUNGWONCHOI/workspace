package jdbc.menu;

import java.sql.Date;
import java.util.List;
import java.util.Scanner;

import jdbc.contoller.EmpController;
import jdbc.model.vo.Emp;

public class EmpMenu {
	Scanner sc = new Scanner(System.in);
	private EmpController controller = new EmpController();

	public void main() {

		while (true) {
			boolean exit = false;
			System.out.println("메뉴를 고르세요");
			System.out.println("1. 조회");
			System.out.println("2. 추가");
			System.out.println("3. 삭제");

			String menu = sc.nextLine();

			switch (menu) {
			case "1":
				selectList();
				break;
			case "2":
				insertEmp();
				break;
			case "3":
				deleteEmp();
				break;
			default:
				System.out.println("다시 입력");
			}
			if (exit == true) {

				break;
			}
		}
		System.out.println("프로그램 종료");
	}

	public void selectList() {
		List<Emp> empList = controller.selectList();
		if(empList == null) {
			System.out.println("reading failure");
		}else {
			System.out.println("emp no : " +empList.size());
			if(empList.size() > 0) {
				for(Emp emp : empList) {
					System.out.println(emp	);
				}
			}
		}

	}

	public void insertEmp() {
		try {
			System.out.print("ename : ");
			String empname = sc.nextLine();
			System.out.print("job : ");
			String job = sc.nextLine();
			System.out.print("deptno(10,20,30,40) : ");
			String deptnoStr = sc.nextLine();
			int deptno = Integer.parseInt(deptnoStr);
			System.out.print("mgr(7369,7499, 7521) : ");
			String mgr = sc.nextLine();
			System.out.print("empno(4자리숫자1001~) : ");
			String empnoStr = sc.nextLine();
			int empno = Integer.parseInt(empnoStr);
			System.out.print("sal(5자리숫자) : ");
			String salStr = sc.nextLine();
			double sal = Double.parseDouble(salStr);
			System.out.print("comm(5자리숫자) : ");
			String commStr = sc.nextLine();
			double comm = Double.parseDouble(commStr);
			
			Date hiredate = null;
//			public Emp(int empno, String ename, String job, int mgr, Date hiredate, double sal, double comm, int deptno) {
			Emp emp = new Emp(empno, empname, job, hiredate, sal, comm, deptno, mgr);
			//System.out.println(emp);
			System.out.println("====== 지금까지 입력한 데이터를 controller에게 전달함.");
			controller.insertEmp(emp);
			
			
		}catch (NumberFormatException e) {
			System.out.println("자료형태에 맞게 입력해주세요.");
			//e.getStackTrace();
		}
		


	}

	public void deleteEmp() {

	}

}
