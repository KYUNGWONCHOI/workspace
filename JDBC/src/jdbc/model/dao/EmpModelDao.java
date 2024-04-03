package jdbc.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import jdbc.model.vo.Emp;

public class EmpModelDao {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rset = null;
	List<Emp> empList = null;
	Scanner sc = new Scanner(System.in);
	PreparedStatement pstmt = null;

	public List<Emp> select() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE", "scott", "TIGER");
			stmt = conn.createStatement();
			rset = stmt.executeQuery("select * from emp");
			if (conn != null)
			System.out.println("connected");
			if (conn == null)
			System.out.println("not connected");

			empList = new ArrayList<Emp>();
			while (rset.next()) {
				Emp emp = new Emp();

				emp.setEmpno(rset.getInt("empno"));
				emp.setEmpname(rset.getString("ename"));
				emp.setComm(rset.getDouble("Comm"));
				emp.setDeptno(rset.getInt("Deptno"));
				emp.setHiredate(rset.getDate("hiredate"));
				emp.setJob(rset.getString("Job"));
				emp.setSal(rset.getDouble("Sal"));
				emp.setMgr(rset.getString("mgr"));

				empList.add(emp);
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rset != null)rset.close();
				if (stmt != null)stmt.close();
				if (conn != null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}

		return empList;
		

	}
	public void insertEmpPrearedStatement(Emp emp) {
		int result = -1;
		String sql = "insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)"+"values(?,?,?,?,SYSDATE,?,?,?)";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE", "scott", "TIGER");
			
			if (conn != null)
			System.out.println("connected");
			if (conn == null)
			System.out.println("not connected");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, emp.getEmpno());
			pstmt.setString(2, emp.getEmpname());
			pstmt.setString(3, emp.getMgr());
			pstmt.setDouble(6, emp.getSal());
			pstmt.setDouble(7, emp.getComm());
			pstmt.setInt(8, emp.getDeptno());
			
			result = pstmt.executeUpdate();
			
			System.out.println(emp);
			
			result = pstmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void insertEmp(Emp emp) {
		int result = -1;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE", "scott", "TIGER");
			stmt = conn.createStatement();
			rset = stmt.executeQuery("insert into emp "
					+ "(EMPNO,	ENAME, JOB, MGR, "
					+ "  HIREDATE, SAL, COMM, DEPTNO ) "
					+ " values "
					+ "("+emp.getEmpno()+", '"+emp.getEmpname()+"', '"+emp.getJob()+"' , "+emp.getMgr()+","
					+ " SYSDATE, "+emp.getSal()+", "+emp.getComm()+", "+emp.getDeptno()+" )");
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rset != null) rset.close();
				if(stmt != null) rset.close();
				if(conn != null) rset.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	public void deleteEmp() {
		
	}

}
