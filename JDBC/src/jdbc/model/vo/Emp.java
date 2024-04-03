package jdbc.model.vo;

import java.io.Serializable;
import java.sql.Date;


public class Emp implements Serializable{
	private static final long serialVersionUID = 4334711408945700517L;
	
	private int empno;
	private String empname;
	private String job;
	private Date hiredate;
	private double sal;
	private double comm;
	private int deptno;
	private String mgr;
	
	public Emp() {
		super();
	}

	public Emp(int empno, String empname, String job, Date hiredate, double sal, double comm, int deptno, String mgr) {
		super();
		this.empno = empno;
		this.empname = empname;
		this.job = job;
		this.hiredate = hiredate;
		this.sal = sal;
		this.comm = comm;
		this.deptno = deptno;
		this.mgr = mgr;
	}

	@Override
	public String toString() {
		return "Emp [empno=" + empno + ", empname=" + empname + ", job=" + job + ", hiredate=" + hiredate + ", sal="
				+ sal + ", comm=" + comm + ", deptno=" + deptno + ", mgr=" + mgr + "]";
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getEmpname() {
		return empname;
	}

	public void setEmpname(String empname) {
		this.empname = empname;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public Date getHiredate() {
		return hiredate;
	}

	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}

	public double getSal() {
		return sal;
	}

	public void setSal(double sal) {
		this.sal = sal;
	}

	public double getComm() {
		return comm;
	}

	public void setComm(double comm) {
		this.comm = comm;
	}

	public int getDeptno() {
		return deptno;
	}

	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}

	public String getMgr() {
		return mgr;
	}

	public void setMgr(String mgr) {
		this.mgr = mgr;
	}
	
	

}
