package kh.mclass.jdbc.model.service;

import static kh.mclass.jdbc.common.JdbcTemplate.*;

import java.sql.Connection;
import java.util.List;

import kh.mclass.jdbc.model.dao.SalgradeDao;
import kh.mclass.jdbc.model.vo.Salgrade;

public class SalgradeService {
	SalgradeDao dao = new SalgradeDao();
	public List<Salgrade> selectList(){
		List<Salgrade> result = null;
		Connection conn = getConnection();
		dao.selectList(conn);
		close(conn);
		return result;
	}
	
	public int insert(Salgrade salgrade) {
		int result = -1;
		Connection conn = getConnection();
		dao.insert(conn, salgrade);
		close(conn);
		return result;
	}
	
	public int delete(int grade) {
		int result = -1;
		Connection conn = getConnection();
		dao.delete(conn, grade);
		close(conn);
		return result;
	}

}
