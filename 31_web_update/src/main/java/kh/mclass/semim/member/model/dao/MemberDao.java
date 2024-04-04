package kh.mclass.semim.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static kh.mclass.jdbc.common.JdbcTemplate.close;
import kh.mclass.semim.member.model.dto.MemberDto;

public class MemberDao {
//	select list - all
	public List<MemberDto> selectAllList(Connection conn) {
		List<MemberDto> result = null;
		String sql = "SELECT MEM_ID,MEM,PWD,MEM_EMAIL FROM MEMBER";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = new ArrayList<MemberDto>();
				do {
					MemberDto dto = new MemberDto(rset.getString("MEM_ID"),rset.getString("MEM_PWD"),rset.getString("MEM_EMAIL"));
					result.add(dto);
				}while (rset.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(rset);
		close(pstmt);
		return result;
	}
//	select list - one
	public MemberDto selectOne(Connection conn, String memId) {
		MemberDto result = null;
		String sql = "SELECT MEM_ID,MEM,PWD,MEM_EMAIL FROM MEMBER WHERE MEM_ID=?";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			rset = pstmt.executeQuery();
			//ResultSet 처리
			if(rset.next()) {
				result = new MemberDto(rset.getString("MEM_ID"),rset.getString("MEM_PWD"),rset.getString("MEM_EMAIL"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(rset);
		close(pstmt);
		return result;
	}
	
//	insert
	public int insert(Connection conn, MemberDto dto) {
		int result = 0;
		String sql = "INSERT INTO MEMBER (MEM_ID,MEM,PWD,MEM_EMAIL) VALUES (?, ?, ?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			//?처리
			pstmt.setString(1, dto.getMemId());
			pstmt.setString(2, dto.getMemPwd());
			pstmt.setString(3, dto.getMemEmail());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(pstmt);
		return result;
	}
//	update
	public int update(Connection conn, MemberDto dto) {
		//TODO
		int result = 0;
		String sql = "";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(pstmt);
		return result;
	}
//	delete
	public int delete(Connection conn, String memId) {
		int result = 0;
		String sql = "DELETE FROM MEMBER WHERE MEM_ID=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			//? 처리
			pstmt.setString(1,  memId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(pstmt);
		return result;
	}
}
