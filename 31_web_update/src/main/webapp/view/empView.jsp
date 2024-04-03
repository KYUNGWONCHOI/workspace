<%@page import="kh.mclass.jdbc.model.vo.Emp"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!
int sum(int a, int b){
	return a+b;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emplist</title>
</head>
<body>
<br>
<br>
====================
<br>
<%
	List<Emp> volist = (List<Emp>)request.getAttribute("data1");
%>
<%

	for(Emp vo : volist){
%>
<%=vo.getEname() %> | <%=vo.getComm() %> | <%=vo.getEmpno() %> | <%=vo.getJob() %>
<br>
<%
	}
%>
<br>
<h1>EL (Expression Language 표현언어로 표현만 가능. for,if,변수선언 등 제어문 없음.)</h1>
<c:forEach begin="1" end="15" step="4" var="i">
${i }<br>
</c:forEach>

<c:if test="${empty data1 }">
empty
</c:if>
<c:choose>
	<c:when test="${empty data1 }">
	empty
	</c:when>
	<c:when test="${data1.size() ==0 }">
	no data
	</c:when>
	<c:otherwise>
		<c:forEach items="${data1 }" var="vo" varStatus="vs">
		${vs.count } ||${vo.ename } | ${vo.comm } | ${vo.empno} | ${vo.job} ${vs.index }<br>
		</c:forEach>
	</c:otherwise>
</c:choose>

<c:forEach items="${data1 }" var="vo">
${vo.ename } ${vo.comm } ${vo.empno} ${vo.job}<br>
</c:forEach>

${data1.get(0).ename} | ${data1.get(0).comm}| ${data1.get(0).empno}| ${data1.get(0).job} 
<br>

==================================
</body>
</html>