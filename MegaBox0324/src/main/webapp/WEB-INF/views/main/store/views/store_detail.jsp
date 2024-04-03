<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
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
<link
	href="${pageContext.request.contextPath}/resource/css/store/resource/css/store_detail.css"
	rel="stylesheet">
<title>상품 정보</title>
<script src="https:/code.jquery.com/jquery-3.7.1.js"></script>
<script>
	$(loadedHandler);
	function loadedHandler() {
		$(".plus").on("click", plusTotal);
		$(".minus").on("click", minusHandler);
	}
	// 수량 추가
	function plusTotal() {
		$("input.num").val(
				Number.parseInt($("input.num").val()) + Number.parseInt(1));
		$("div.total").html(
				Number.parseInt(16000) * Number.parseInt($("input.num").val())
						+ '원');

	};
	// 수량 차감
	function minusHandler() {
		if ($("input.num").val() > 0) {
			$("input.num").val(
					Number.parseInt($("input.num").val()) - Number.parseInt(1));
			// console.log($("price"));
			$("div.total").html(
					Number.parseInt(16000)
							* Number.parseInt($("input.num").val()) + '원');
		} else {
			return;
		}
	}
</script>
</head>

<body>

	<%@include file="/WEB-INF/views/main/common/header.jsp"%>
	<%@include file="/WEB-INF/views/main/store/views/store_topnav.jsp"%>


	<section class="detail container">
		<div class="inner-warp">
			<h2 class="tit">[송도 돌비 시네마 오픈] 돌비패스 패키지</h2>
			<div class="detail flex-box">
				<div class="left">
					<!-- <p> -->
					<img
						src="${pageContext.request.contextPath}/resource/css/store/resource/img/megapass.jpg"
						alt="">
					<!-- </p> -->
				</div>
				<div class="right">
					<div class="goods-info">
						<div class="line">
							<p class="tit">
								<span>사용극장</span> <span class="txt">송도</span>
							</p>
						</div>
						<div class="line">
							<p class="tit">
								<span>유효기간 : </span> <span>2024.01.30 ~ 20255.03.03 사용가능</span>
							</p>
						</div>
						<div class="line">
							<p class="tit">
								<span></span>판매수량 <span>0/300한정 | 1회 2개 구매가능 | 1인 2개 구매가능</span>
							</p>
						</div>
						<div class="line">
							<p class="tit">
								<span>구매 후 취소 : </span> <span>구매 후 취소가 불가한 상품입니다.</span>
							</p>
						</div>
						<div class="line price">
							<div class="no">
								<p>수량/금액</p>
							</div>
							<div class="count">
								<button type="button" class="minus">-</button>
								<input type="text" name="" id="" class="num" value="1">
								<button type="button" class="plus">+</button>
							</div>
							<div class="sum">
								<div class="total">
									16000<span>원</span>
								</div>
							</div>
						</div>
						<div class="line submit">
							<button type="submit">구매</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="wrap-footer">
		<footer>
			<%@include file="/WEB-INF/views/main/common/footer.jsp"%>
		</footer>
	</div>
</body>

</html>