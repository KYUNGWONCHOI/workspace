<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booking-sec2</title>
<!-- 
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js" integrity="sha256-xLD7nhI62fcsEZK2/v8LsBcb4lG7dgULkuXoXB/j91c=" crossorigin="anonymous"></script>
 -->
<link href="${pageContext.request.contextPath}/resource/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/mini.core.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/booking/mini.booking.layout.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/booking/mini.booking.sec1.css" rel="stylesheet">
<style>
body > div.wrap-main > section.wrap-main.sec1 > div > div.tit-util{
	border-bottom: 1px solid grey;
	margin-bottom: 10px;
}
body > div.wrap-main > section.wrap-main.sec1 > div > div.tit-util > h2{
	margin: 10px auto;
}
</style>
</head>
<body>
	<div class="booking-sec1">
		<div class="tit-util">
			<h2>빠른예매</h2>
		</div>
		<div class="quick">
			<button type="button" class="prev" style="cursor: pointer;">
				<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-cld-pre.png">
			</button>
			<button type="button"><h2>25-오늘</h2></button>
			<button type="button"><h2>26-내일</h2></button>
			<button type="button"><h2>27-수</h2></button>
			<button type="button"><h2>28-목</h2></button>
			<button type="button"><h2>29-금</h2></button>
			<button type="button"><h2>30-토</h2></button>
			<button type="button"><h2>31-일</h2></button>
			<button type="button"><h2>1-월</h2></button>
			<button type="button"><h2>2-화</h2></button>
			<button type="button"><h2>3-수</h2></button>
			<button type="button"><h2>4-목</h2></button>
			<button type="button"><h2>5-금</h2></button>
			<button type="button"><h2>6-토</h2></button>
			<button type="button"><h2>7-일</h2></button>
			<button type="button" class="next" style="cursor: pointer;">
				<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-cld-next.png">
			</button>
		</div>
		<div class="cal">
			<input type="hidden" id="datePicker">
		</div>
	</div>
	<script>
		$(function(){
			$("#datePicker").datepicker({
				showOn: "button",
				buttonImage: "https://img.megabox.co.kr/static/pc/images/common/ico/ico-calendar-w20.png",
				buttonImageOnly: true
			});
		});
	</script>
</body>
</html>