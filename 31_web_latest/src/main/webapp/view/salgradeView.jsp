<%@page import="kh.mclass.jdbc.model.vo.Salgrade"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Salgrade List</title>
</head>
<body>
<br>
<%
	List<Salgrade> sal = (List<Salgrade>)request.getAttribute("data");
	
	for(Salgrade vSal : sal){
%>
<br>
<%=vSal.getGrade() %> | <%=vSal.getLosal() %> | <%=vSal.getHisal() %>
<br>
<% 
}
%>

</body>
</html>