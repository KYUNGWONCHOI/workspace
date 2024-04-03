package kh.mclass.jdbc.controller;

import java.util.List;

import kh.mclass.jdbc.model.service.EmpService;
import kh.mclass.jdbc.model.vo.Emp;

public class EmpController {
	EmpService service = new EmpService();
	
	public List<Emp> selectList(){
		return service.selectList();
	}
	public int insert(Emp emp) {
		return service.insert(emp);
	}
	public int delete(int empno) {
		return service.delete(empno);
	}
	

}
