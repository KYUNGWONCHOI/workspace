package kh.mclass.jdbc.model.service;

import static kh.mclass.jdbc.common.JdbcTemplate.*;

import java.sql.Connection;
import java.util.List;

import kh.mclass.jdbc.model.dao.DeptDao;
import kh.mclass.jdbc.model.vo.Dept;

public class DeptService {
	private DeptDao dao = new DeptDao();
	
	public List<Dept> selectList(){
		List<Dept> result = null;
		Connection conn = getConnection();
		result = dao.selectList(conn);
		close(conn);
		return result;
		
	}
	
	public int insert(Dept dept) {
		int result = -1;
		Connection conn = getConnection();
		result = dao.insert(conn, dept);
		autoCommit(conn, false);
		if(result > 0 )
			commit(conn);
		else 
			rollback(conn);
		close(conn);
		return result;
		
	}
	public int delete(int deptno) {
		int result = -1;
		Connection conn = getConnection();
		result = dao.delete(conn, deptno);
		autoCommit(conn, false);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

}
