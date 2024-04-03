<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${pageContext.request.contextPath}/resource/css/reset.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/core.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resource/css/common/mini.header.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resource/css/common/mini.footer.css"
	rel="stylesheet">


<link
	href="${pageContext.request.contextPath}/resource/css/store/resource/css/layout.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resource/css/store/resource/css/store.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resource/css/store/resource/css/core.css"
	rel="stylesheet">

<title>스토어메인</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>
	<div>
		<%@include file="/WEB-INF/views/main/common/header.jsp"%>
		<%@include file="/WEB-INF/views/main/store/views/store_topnav.jsp"%>
	</div>

	<div>
		<%@include file="/WEB-INF/views/main/store/views/store_index.jsp"%>
	</div>
	<div class="wrap-footer">
		<footer>
			<%@include file="/WEB-INF/views/main/common/footer.jsp"%>
		</footer>
	</div>
</body>
</html>