package kh.mclass.jdbc.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static kh.mclass.jdbc.common.JdbcTemplate.*;
import kh.mclass.jdbc.model.vo.Emp;

public class EmpDao {
	public List<Emp> selectList(Connection conn) {
		List<Emp> list = null;
		String sql = "select * from emp";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			list = new ArrayList<Emp>();
			while(rset.next()) {
				Emp emp = new Emp();
				emp.setComm(rset.getDouble("comm"));
				emp.setDeptno(rset.getInt("deptno"));
				emp.setEmpno(rset.getInt("empno"));
				emp.setEname(rset.getString("ename"));
				emp.setHiredate(rset.getDate("hiredate"));
				emp.setJob(rset.getString("job"));
				emp.setMgr(rset.getInt("mgr"));
				emp.setSal(rset.getDouble("sal"));
				list.add(emp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int insert(Connection conn, Emp emp) {
		PreparedStatement pstmt = null;
		int result = -1;
		String sql = "insert into emp (EMPNO,ENAME, JOB, MGR,HIREDATE, SAL, COMM, DEPTNO) "
				+ " 			values (?,?,?,?,SYSDATE,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, emp.getEmpno());
			pstmt.setString(2, emp.getEname());
			pstmt.setString(3, emp.getJob());
			pstmt.setInt(4, emp.getMgr());
			pstmt.setDouble(5, emp.getSal());
			pstmt.setDouble(6, emp.getComm());
			pstmt.setInt(7, emp.getDeptno());
			
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
		close(pstmt);
		}
		return result;
	}
	
	public int delete(Connection conn, int empno) {
		int result = -1;
		PreparedStatement pstmt = null;
		String sql = "delete from emp where empno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, empno);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	

}
