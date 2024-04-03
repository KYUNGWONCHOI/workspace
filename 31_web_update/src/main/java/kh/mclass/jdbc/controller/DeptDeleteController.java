package kh.mclass.jdbc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.jdbc.model.service.DeptService;
import kh.mclass.jdbc.model.vo.Dept;

/**
 * Servlet implementation class DeptDeleteController
 */
@WebServlet("/dept/delete")
public class DeptDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// url = /dept/delete?no=10&a=10&b=20
		// *request.getParameter 의 자료형은 String
		String noStr = request.getParameter("noStr");
//		String a = request.getParameter("b");
//		String b = request.getParameter("b");
//		System.out.println("noStr :" + noStr);
//		System.out.println("a :" + a);
//		System.out.println("b :" + b);
		
		
		int deptno = Integer.parseInt(noStr);
		DeptService service = new DeptService();
		int result = service.delete(deptno);
		
		System.out.println(request.getContextPath());
		
		
		if(result > 0){
			response.sendRedirect(request.getContextPath()+"/deptlist");
//			List<Dept> volist = service.selectList();
//			request.setAttribute("data1", volist);
//			request.getRequestDispatcher("/view/deptView.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "해당 부서가 없어 삭제하지 못함");
			request.getRequestDispatcher("/view/errorPage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
