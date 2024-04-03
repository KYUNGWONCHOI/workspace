package kh.mclass.jdbc.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.jdbc.model.service.DeptService;
import kh.mclass.jdbc.model.service.SalgradeService;
import kh.mclass.jdbc.model.vo.Dept;
import kh.mclass.jdbc.model.vo.Salgrade;

/**
 * Servlet implementation class SalinsertController
 */
@WebServlet("/sallist")
public class SalgradeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalgradeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gradeStr = request.getParameter("grade");
		String hisalStr = request.getParameter("hisal");
		String losalStr = request.getParameter("hosal");
		
		int grade = Integer.parseInt(gradeStr);
		int hisal = Integer.parseInt(hisalStr);
		int losal = Integer.parseInt(losalStr);
		
		SalgradeService service = new SalgradeService();
		Salgrade vo = new Salgrade(grade, hisal, losal);
		
		int result = service.insert(vo);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath()+"/deptlist");
			List<Salgrade> volist = service.selectList();
			request.setAttribute("data1", volist);
			request.getRequestDispatcher("/view/deptView.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "실패");
			request.getRequestDispatcher("/view/errorPage.jsp").forward(request, response);
			
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
