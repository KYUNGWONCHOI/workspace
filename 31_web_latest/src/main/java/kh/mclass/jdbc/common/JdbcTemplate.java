package kh.mclass.jdbc.common;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JdbcTemplate {
	//Connection 생성 및 close
	//트랜잭션 메서드
	
	private JdbcTemplate() {}
	
	public static Connection getConnection() {
		Properties prop = new Properties(); //Properties 생성
		Connection conn = null;
		try {
			String currentPath = JdbcTemplate.class.getResource("").getPath(); 
			//driver.properties 파일은 같은 path 에 넣고 JdbcTemplate 클래스로부터 정대 경로를 가져옴 
			prop.load(new FileReader(currentPath + "driver.properties"));
			//prop 객체에 driver.properties 파일 로드
			Class.forName(prop.getProperty("jdbc.driver"));
			//properties 사용
			conn = DriverManager.getConnection(prop.getProperty("jdbc.url"), prop.getProperty("jdbc.username"), prop.getProperty("jdbc.password"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void autoCommit(Connection conn, boolean autocommit) {
		try {
			if(conn != null) conn.setAutoCommit(false);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection conn) {
		try {
			if(conn != null) conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn) {
		try {
			if(conn != null) conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			if(stmt != null) stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		try {
			if(rset != null) rset.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn) {
		try {
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
