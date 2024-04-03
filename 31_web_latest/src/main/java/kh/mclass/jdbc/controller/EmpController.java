package kh.mclass.jdbc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.jdbc.model.service.EmpService;
import kh.mclass.jdbc.model.vo.Emp;

/**
 * Servlet implementation class EmpController
 */
@WebServlet("/emplist")
public class EmpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EmpController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmpService service = new EmpService();
		List<Emp> emp = service.selectList();
		
		for(Emp vo : emp) {
			System.out.println(vo);
		}
		
		request.getAttribute("num1");
		
		request.getAttribute("num2");
		
		if(emp == null) {
			System.out.println("this is error page");
			request.getRequestDispatcher("/view/errorView.jsp").forward(request, response);

		}else {
			System.out.println("Hello");
			request.setAttribute("empData", emp);
			request.getRequestDispatcher("/view/empView.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
