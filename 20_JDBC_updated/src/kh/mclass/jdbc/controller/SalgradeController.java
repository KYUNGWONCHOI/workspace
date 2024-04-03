package kh.mclass.jdbc.controller;

import kh.mclass.jdbc.common.JdbcTemplate;
import kh.mclass.jdbc.model.service.SalgradeService;
import kh.mclass.jdbc.model.vo.Emp;
import kh.mclass.jdbc.model.vo.Salgrade;

import static kh.mclass.jdbc.model.vo.Salgrade.*;

import java.util.ArrayList;
import java.util.List;

public class SalgradeController {
	SalgradeService service = new SalgradeService();
	
	public List<Salgrade> selectList() {
		return service.selectList();
	}
	public int insert(Salgrade salgrade) {
		return service.insert(salgrade);
	}
	public int delete(int grade) {
		return service.delete(grade);
	}
}