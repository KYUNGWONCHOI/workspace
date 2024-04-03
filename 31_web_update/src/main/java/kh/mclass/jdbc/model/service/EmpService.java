package kh.mclass.jdbc.model.service;

import java.sql.Connection;
import java.util.List;

import static kh.mclass.jdbc.common.JdbcTemplate.*;
import kh.mclass.jdbc.model.dao.EmpDao;
import kh.mclass.jdbc.model.vo.Emp;

public class EmpService {
	private EmpDao dao = new EmpDao();
	
	public List<Emp> selectList(){
		List<Emp> result = null;
		Connection conn = getConnection();
		result = dao.selectList(conn);
		close(conn);
		return result;
	}
	public int insert(Emp emp) {
		int result = -1;
		Connection conn = getConnection();
		autoCommit(conn, false);
		result = dao.insert(conn, emp);
		if(result > 0) {
			commit(conn);
		}else
			rollback(conn);
		close(conn);
		return result;
	}
	public int delete(int empno) {
		int result = -1;
		Connection conn = getConnection();
		result = dao.delete(conn, empno);
		autoCommit(conn, false);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

}
