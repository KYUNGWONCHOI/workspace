<%@page import="kh.mclass.jdbc.model.vo.Salgrade"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salgradelist</title>
</head>
<body>
salgradeList
<br>
${data1 }
<br>
<%

	List<Salgrade> volist = (List<Salgrade>)request.getAttribute("data1");
	String data2 = (String)request.getAttribute("data2");
	Integer data3 = (Integer)request.getAttribute("data3");

	for(Salgrade vo : volist){
%>
<%=vo.getGrade() %> | <%=vo.getHisal() %> | <%=vo.getLosal() %>
<br>
<%
}
%>
<br>

</body>
</html>