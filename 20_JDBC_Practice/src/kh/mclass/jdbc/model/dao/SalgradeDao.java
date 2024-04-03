package kh.mclass.jdbc.model.dao;

import static kh.mclass.jdbc.common.JdbcTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kh.mclass.jdbc.model.vo.Salgrade;

public class SalgradeDao {

	public List<Salgrade> selectList(Connection conn) {
		List<Salgrade> list = null;
		String sql = "select * from salgrade";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			list = new ArrayList<Salgrade>();

			while (rset.next()) {
				Salgrade salgrade = new Salgrade();
				salgrade.setGrade(rset.getInt("grade"));
				salgrade.setHisal(rset.getInt("hisal"));
				salgrade.setLosal(rset.getInt("losal"));

				list.add(salgrade);
			}

		} catch (Exception e) {
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;

	}

	public int insert(Connection conn, Salgrade salgrade) {
		int result = -1;
		PreparedStatement pstmt = null;
		String sql = "insert into salgrade(GRADE, HISAL, LOSAL)" + "values(?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, salgrade.getGrade());
			pstmt.setInt(2, salgrade.getHisal());
			pstmt.setInt(3, salgrade.getLosal());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
		} finally {
			close(pstmt);
		}

		return result;

	}

	public int delete(Connection conn, int grade) {
		int result = -1;
		PreparedStatement pstmt = null;
		String sql = "delete from salgrade wheere grade = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, grade);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		} finally {
			close(pstmt);
		}
		return result;
	}

}
