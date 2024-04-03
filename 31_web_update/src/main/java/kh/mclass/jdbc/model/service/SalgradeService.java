package kh.mclass.jdbc.model.service;

import static kh.mclass.jdbc.common.JdbcTemplate.*;

import java.sql.Connection;
import java.util.List;

import kh.mclass.jdbc.model.dao.SalgradeDao;
import kh.mclass.jdbc.model.vo.Salgrade;

public class SalgradeService {
	private SalgradeDao dao = new SalgradeDao();
	
	public List<Salgrade> selectList(){
		List<Salgrade> result = null;
		Connection conn = getConnection();
		result = dao.selectList(conn);
		close(conn);
		return result;
	}
	public int insert(Salgrade salgrade) {
		int result = -1;
		Connection conn = getConnection();
		result = dao.insert(conn, salgrade);
		autoCommit(conn, false);
		if(result > 0 )
			commit(conn);
		else 
			rollback(conn);
		close(conn);
		return result;
	}
	public int delete(int grade) {
		int result = -1;
		Connection conn = getConnection();
		result = dao.delete(conn, grade);
		autoCommit(conn, false);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
}
