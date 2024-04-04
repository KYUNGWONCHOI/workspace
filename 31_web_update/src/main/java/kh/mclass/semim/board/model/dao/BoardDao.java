package kh.mclass.semim.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static kh.mclass.jdbc.common.JdbcTemplate.close;

import kh.mclass.semim.board.model.dto.BoardDto;

public class BoardDao {
//	select list - all
	public List<BoardDto> selectAllList(Connection conn) {
		List<BoardDto> result = null;
		String sql = "SELECT BOARD_ID,SUBJECT,CONTENT,WRITE_TIME,LOG_IP,BOARD_WRITER,READ_COUNT FROM BOARD";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = new ArrayList<BoardDto>();
				do {
					BoardDto dto = new BoardDto(rset.getInt("BOARD_ID")
							,rset.getString("SUBJECT")
							,rset.getString("CONTENT")
							,rset.getString("WRITE_TIME")
							,rset.getString("LOG_IP")
							,rset.getString("BOARD_WRITER")
							,rset.getInt("READ_COUNT"));
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
	public BoardDto selectOne(Connection conn, Integer boardId) {
		BoardDto result = null;
		String sql = "SELECT BOARD_ID,SUBJECT,CONTENT,WRITE_TIME,LOG_IP,BOARD_WRITER,READ_COUNT FROM BOARD WHERE BOARD_ID=?";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardId);
			rset = pstmt.executeQuery();
			//ResultSet 처리
			if(rset.next()) {
				result = new BoardDto(rset.getInt("BOARD_ID")
						,rset.getString("SUBJECT")
						,rset.getString("CONTENT")
						,rset.getString("WRITE_TIME")
						,rset.getString("LOG_IP")
						,rset.getString("BOARD_WRITER")
						,rset.getInt("READ_COUNT"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(rset);
		close(pstmt);
		return result;
	}
	
//	insert
	public int insert(Connection conn, BoardDto dto) {
		int result = 0;
		String sql = "INSERT INTO BOARD VALUES (BOARD_ID,SUBJECT,CONTENT,WRITE_TIME,LOG_IP,BOARD_WRITER,READ_COUNT FROM BOARD)"
						+"VALUES (SEQ_BOARD_ID.nextval,?,?,default,?,?,fault)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			//?처리
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getLogIp());
			pstmt.setString(4, dto.getBoardWriter());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(pstmt);
		return result;
	}
//	update
	public int update(Connection conn, BoardDto dto) {
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
	public int delete(Connection conn, Integer boardId) {
		int result = 0;
		String sql = "DELETE FROM BOARD WHERE MEM_ID=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			//? 처리
			pstmt.setInt(1,  boardId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(pstmt);
		return result;
	}
}
