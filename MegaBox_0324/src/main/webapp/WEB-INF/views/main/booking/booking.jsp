<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>MEET PLAY SHARE, 메가박스</title>
	<!-- 
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	 -->
	<link href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link href="${pageContext.request.contextPath}/resource/css/reset.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resource/css/mini.core.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resource/css/booking/mini.booking.layout.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resource/css/common/mini.header.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resource/css/common/mini.topnav.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resource/css/booking/mini.booking.sec2.css" rel="stylesheet">
</head>

<body>
	<div class="wrap-header">
		<header>
			<%@include file="/WEB-INF/views/main/common/header.jsp"%>
			<%@include file="/WEB-INF/views/main/booking/booking-topnav.jsp"%>
		</header>
	</div>
	<div class="wrap-main">
		<section class="wrap-main sec1">
			<%@include file="/WEB-INF/views/main/booking/booking-sec1.jsp"%>
		</section>
		<section class="wrap-main sec2">
			<%@include file="/WEB-INF/views/main/booking/booking-sec2.jsp"%>
		</section>
	</div>
	<div class="wrap-footer">
		<footer>
			<%@include file="/WEB-INF/views/main/common/footer.jsp"%>
		</footer>
	</div>
	<!-- 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	 -->
</body>

</html>