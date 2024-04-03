package kh.mclass.jdbc.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import static kh.mclass.jdbc.common.JdbcTemplate.*;
import kh.mclass.jdbc.model.vo.Dept;

public class DeptDao {
	public List<Dept> selectList(Connection conn) {
		List<Dept> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "select * from dept";

		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			list = new ArrayList<Dept>();
			while (rset.next()) {
				Dept dept = new Dept();
				dept.setDname(rset.getString("dname"));
				dept.setDeptno(rset.getInt("deptno"));
				dept.setLoc(rset.getString("loc"));
				list.add(dept);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int insert(Connection conn, Dept dept) {
		int result = -1;
		PreparedStatement pstmt = null;
		String sql = "insert into dept (DNAME, DEPTNO, LOC) "
				+ " 			values (?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dept.getDname());
			pstmt.setInt(2, dept.getDeptno());
			pstmt.setString(3, dept.getLoc());
			
			result = pstmt.executeUpdate();
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;

	}

	public int delete(Connection conn, int deptno) {
		int result = -1;
		String sql = "delete from dept where deptno = ?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, deptno);
			result = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;

	}

}
