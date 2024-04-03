package kh.mclass.jdbc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.jdbc.model.service.SalgradeService;
import kh.mclass.jdbc.model.vo.Salgrade;

/**
 * Servlet implementation class SalgradeInsertController
 */
@WebServlet("/salgradeInsertController")
public class SalgradeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SalgradeInsertController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gradeStr = request.getParameter("grade");
		String losalStr = request.getParameter("losal");
		String hisalStr = request.getParameter("hisal");
		
		int grade = Integer.parseInt(gradeStr);
		int losal = Integer.parseInt(losalStr);
		int hisal = Integer.parseInt(hisalStr);
		
		Salgrade vo = new Salgrade(grade, losal, hisal);
		SalgradeService service = new SalgradeService();
		
		List<Salgrade> list = service.selectList();
		
		request.setAttribute("data", list);
		
		int result = service.insert(vo);
		
		if(vo == null) {
			request.getRequestDispatcher("/view/errorView.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/view/salgradeView.jsp").forward(request, response);
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
