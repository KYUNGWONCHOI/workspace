package kh.mclass.jdbc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.jdbc.model.service.EmpService;
import kh.mclass.jdbc.model.vo.Dept;
import kh.mclass.jdbc.model.vo.Emp;

/**
 * Servlet implementation class EmpController
 */
@WebServlet("/emplist")
public class EmpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. view 선택 - getRequestDispatcher
		// 2. service Dao 호출 - new *
		// 3. view 에 데이터 전달 - setAttribute
		// 4. url page 이동 : response.sendRedirect(/*url 주소*/request.getContextPath()+"/deptlist");
		// 5. jsp 로부터 데이터 수신 ex)쿼리스트링방식
		EmpService service = new EmpService();
		List<Emp> result = service.selectList();
//		System.out.println(result);
		
		if(result ==null) {
			request.setAttribute("msg", "실패");
			request.getRequestDispatcher("/view/errorPage.jsp").forward(request, response);
		}
		else {
		request.setAttribute("data1", result);
		request.setAttribute("data2", "value 2");
		request.setAttribute("data3", 2024);
		
		request.getRequestDispatcher("/view/empView.jsp").forward(request, response);
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
