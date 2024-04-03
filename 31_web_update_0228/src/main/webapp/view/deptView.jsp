<%@page import="kh.mclass.jdbc.model.vo.Dept"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deptlist</title>
</head>
<body>
Dept List CHOI
<br>
가나다
<br>
${data1 }
<br>
=====
${data2 }
<br>
${hey }
<br>
<%
	List<Dept> list = (List<Dept>)request.getAttribute("data1");
	
	for(Dept vo : list){
%>
<%=vo.getDeptno() %> | <%=vo.getDname() %> | <%=vo.getLoc() %>
<br>
<%
}
%>
<br>
${data1.get(1).deptno} | ${data1.get(0).dname} | ${data1.get(3).loc}
<br>
=====
<% int num1 = 11;
int num2 = 22;
%>
<br>
<% int x=5; int y=3; %>
<br>
${10+3 }
<br>

</body>
</html>