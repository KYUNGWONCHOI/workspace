package kh.mclass.jdbc.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.jdbc.model.service.EmpService;
import kh.mclass.jdbc.model.vo.Emp;

/**
 * Servlet implementation class EmpInsertController
 */
@WebServlet("/empinsert")
public class EmpInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EmpInsertController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empnoStr = request.getParameter("no");
		String ename = request.getParameter("name");
		String job = request.getParameter("job");
		
		int empno = Integer.parseInt(empnoStr);
		
		EmpService service = new EmpService();
		List<Emp> empList = service.selectList();
		
//		Emp vo = new Emp();
//		vo.getEname(ename);
//		
//		int result = service.insert(emplist);
		

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
