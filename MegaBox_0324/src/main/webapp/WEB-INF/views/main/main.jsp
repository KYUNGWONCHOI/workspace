<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEGABOX</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<link href="${pageContext.request.contextPath}/resource/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/mini.core.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/common/mini.header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/main/mini.mainsection.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/common/mini.footer.css" rel="stylesheet">
</head>
<body>
	<div class="header">
		<%@include file="/WEB-INF/views/main/common/header.jsp" %>
	</div>
	<div class="section">
		<%@include file="/WEB-INF/views/main/main/mainsection.jsp" %>
	</div>	
	<div class="footer">
		<%@include file="/WEB-INF/views/main/common/footer.jsp" %>
	</div>
</body>
</html>