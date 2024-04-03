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
가나다
<br>
${data1 }
<br>
=====
${data2 }
<br>
<%
	List<Dept> volist = (List<Dept>)request.getAttribute("data1");
	
	for(Dept vo : volist){
%>
<%=vo.getDeptno() %> | <%=vo.getDname() %> | <%=vo.getLoc() %>
<br>
<%
}
%>
<br>

=====
</body>
</html>