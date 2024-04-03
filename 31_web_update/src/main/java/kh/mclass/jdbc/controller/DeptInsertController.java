package kh.mclass.jdbc.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.jdbc.model.service.DeptService;
import kh.mclass.jdbc.model.vo.Dept;

/**
 * Servlet implementation class DeptInsertController
 */
@WebServlet("/dept/insert")
public class DeptInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeptInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("=request.getAttributeNames()=ex)카테고리별 검색 =======");
		Enumeration<String> enumNames = request.getAttributeNames();
		System.out.println(enumNames);
		while(enumNames.hasMoreElements()) {
			String name = enumNames.nextElement();
			System.out.println(request.getParameter(name));
		}
		System.out.println("==================================");

		System.out.println("=request.getParameterValues()=");
		//?genre=a1&genre=a2&genre=b1
		String[] genreArr = request.getParameterValues("genre");
		List<String> genreList = Arrays.asList(genreArr);
		System.out.println(genreList);
		System.out.println("==================================");
		
		System.out.println("=request.getParameterMap==");
		Map<String, String[]> paramMap = request.getParameterMap();
		Set<String> keyset = paramMap.keySet();
		for(String key : keyset) {
			String[] valueArr = paramMap.get(key);
			List<String> valueList = Arrays.asList(valueArr);
			System.out.println(key +":"+valueList);
		}
		System.out.println("==================================");
		
		
		String noStr = request.getParameter("no");
		String dname = request.getParameter("dname");
		String loc = request.getParameter("loc");
		
		int deptno = Integer.parseInt(noStr);
		Dept vo = new Dept(deptno, dname, loc);
		
		DeptService service = new DeptService();
		int result = service.insert(vo);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath()+"/deptlist");
			List<Dept> volist = service.selectList();
			request.setAttribute("data1", volist);
			request.getRequestDispatcher("/view/deptView.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "insert실패");
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
