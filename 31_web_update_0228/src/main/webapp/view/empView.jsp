<%@page import="kh.mclass.jdbc.model.vo.Emp"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emplist</title>
</head>
<body>
<br>
Emplist
<br>
====================
<br>
<%= request.getAttribute("data1") %>
<br>
====================
<br>
<%= request.getAttribute("data2") %>
<br>
====================
<br>
<%= request.getAttribute("data3") %>
<br>
====================
<br>
<%
	List<Emp> volist = (List<Emp>)request.getAttribute("data1");
	String data2 = (String)request.getAttribute("data2");
	Integer data3 = (Integer)request.getAttribute("data3");

	for(Emp vo : volist){
%>
<%=vo.getEname() %> | <%=vo.getComm() %> | <%=vo.getEmpno() %> | <%=vo.getJob() %>
<br>
<%
}
%>
<br>
<h1>EL (Expression Language 표현언어로 표현만 가능. for,if,변수선언 등 제어문 없음.)</h1>
<br>
${data1.get(0).ename} | ${data1.get(0).comm}| ${data1.get(0).empno}| ${data1.get(0).job} 
<br>


==================================
</body>
</html>