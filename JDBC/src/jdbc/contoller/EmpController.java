package jdbc.contoller;

import java.util.List;

import jdbc.model.dao.EmpModelDao;
import jdbc.model.vo.Emp;

public class EmpController {
	private EmpModelDao dao = new EmpModelDao();
	
	public List<Emp> selectList(){
		return dao.select();
	}
	public void insertEmp(Emp emp) {
		dao.insertEmp(emp);
	}
	public void deleteEmp() {
		
	}

}
