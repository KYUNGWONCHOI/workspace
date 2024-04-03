package kh.mclass.jdbc.controller;

import kh.mclass.jdbc.common.JdbcTemplate;
import kh.mclass.jdbc.model.service.SalgradeService;
import kh.mclass.jdbc.model.vo.Salgrade;

import static kh.mclass.jdbc.model.vo.Salgrade.*;

import java.util.ArrayList;
import java.util.List;

public class SalgradeController {
	SalgradeService salgradeService = new SalgradeService();
	
	public List<Salgrade> selectList() {
		List<Salgrade> list = new ArrayList<Salgrade>();
		salgradeService.selectList();
		return list;
	}
	public void insert(Salgrade salgrade) {
		salgradeService.insert(salgrade);
	}
	public void delete(int grade) {
		salgradeService.delete(grade);
		
	}

}
