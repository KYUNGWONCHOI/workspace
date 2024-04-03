package megabox.common;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class Template {
	
	public static Connection getConnection() {
		Connection con = null;
		Properties prop = new Properties();
		try {
			String currentPath = Template.class.getResource("./").getPath();
			prop.load(new FileReader(currentPath + "driver.properties"));
			Class.forName(prop.getProperty("jdbc.driver"));
			con = DriverManager.getConnection(prop.getProperty("jdbc.url"), prop.getProperty("jdbc.name"), prop.getProperty("jdbc.password"));
		} catch (SQLException | IOException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;		
	}
	
	public static void autocommit(Connection con, boolean autocommit) {
			try {
				if(con != null) {con.setAutoCommit(autocommit);
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public static void commit(Connection con) {
		
			try {
				if(con != null) {con.commit();
				} 
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
	public static void rollback(Connection con) {
		try {
			if(con != null) {con.rollback();
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection con) {
		try {
			if(con != null) {con.close();}
		} catch (SQLException e) {
			}
		}
	public static void close(Statement stmt) {
		try {
			if(stmt!= null)stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			if(rs != null) rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}