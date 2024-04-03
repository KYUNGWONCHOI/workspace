<%@page import="kh.mclass.jdbc.model.vo.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EmpList</title>
</head>
<body>
Hello
<br>
${empData }
<c:forEach items="${empData }" var="vo" >
${vo.ename } | ${vo.empno } | ${vo.job } | ${vo.comm }
<br>
</c:forEach>
<br>
<%
	List<Emp> data1 = (List<Emp>)request.getAttribute("empData");
%>
<%
	for(Emp vo : data1){
%>
<%=vo.getEname() %> | <%=vo.getComm() %> | <%=vo.getEmpno() %>
<br>
<%
}
%>
<br>
<c:if test="${empty empData}">
empty
</c:if>
<br>
</body>
</html>

