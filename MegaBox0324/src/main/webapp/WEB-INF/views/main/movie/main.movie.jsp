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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/movie/megabox_movie.css">
</head>
<body>
	<div class="header">
		<%@include file="/WEB-INF/views/main/common/header.jsp" %>
	</div>
	<div>	
			<%@include file="/WEB-INF/views/main/movie/movienav.jsp"%>
	</div>
	<div>
			<%@include file="/WEB-INF/views/main/movie/movie.jsp"%>
	</div>
	<div class="footer">
		<%@include file="/WEB-INF/views/main/common/footer.jsp" %>
	</div>
	
</body>
</html>