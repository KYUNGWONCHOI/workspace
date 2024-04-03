<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEET PLAY SHARE, 메가박스</title> 

<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/mini.core.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/theater/theater.css">

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

</head>


<body>
	<%@include file="/WEB-INF/views/main/common/header.jsp"%>
	<div class="container">
		<h3>전체 극장</h3>

		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">서울</li>
			<li class="tab-link" data-tab="tab-2">경기</li>
			<li class="tab-link" data-tab="tab-3">인천</li>
			<li class="tab-link" data-tab="tab-4">대전/충청/세종</li>
			<li class="tab-link" data-tab="tab-5">부산/대구/경남</li>
			<li class="tab-link" data-tab="tab-6">광주/전라</li>
			<li class="tab-link" data-tab="tab-7">강원</li>
			<li class="tab-link" data-tab="tab-8">제주</li>
		</ul>

		<div id="tab-1" class="tab-content current">
			<ul>
				<li>강남</li>
				<li>강동</li>
				<li>더 부티크 목동현대백화점</li>
			</ul>
		</div>

		<div id="tab-2" class="tab-content">
			<li>고양스타필드</li>
			<li>김포</li>
		</div>

		<div id="tab-3" class="tab-content">
			<li>송도</li>
			<li>청라</li>
		</div>

	</div>

	<div class="container">
		<div class='cover'>
			<div>
				<h3>극장 이벤트</h3>
			</div>
			<div>
				<h5>더 보기</h5>
			</div>
		</div>
	</div>

	<a1 href="https://www.megabox.co.kr/event/detail?eventNo=15071"> <img
		src="https://img.megabox.co.kr/SharedImg/event/2024/03/07/vL2fnmphECVBqp2p5YEC2rCnzdY1ovbl.jpg"
		alt="진행중인 이벤트가 없습니다"> </a1>

	<a2 href="https://www.megabox.co.kr/event/detail?eventNo=15122"> <img
		src="https://img.megabox.co.kr/SharedImg/event/2024/03/14/zKRrh8sImPxAG4WWEXdJeNMzvm9IslN6.jpg"
		alt="진행중인 이벤트가 없습니다"> </a2>


	</div>
	<div class="container">
		<h3>극장 공지사항</h3>

		<div class="table-wrap"></div>
		<colgroup>
			<col style="width: 150px;">
			<col>
			<col style="width: 150px;">
			<col style="width: 120px;">
		</colgroup>

		<thead>
			<tr>
				<th scope="col">극장</th>
				<th scope="col">제목</th>
				<th scope="col">지역</th>
				<th scope="col">등록일</th>
			</tr>
		</thead>

		<tbody>
			<table class="board-list">
				<tr>
					<td>코엑스</td>
					<th scope="row"><a
						href="https://www.megabox.co.kr/support/notice/detail?artiNo=11060&bbsNo=9"
						title="[코엑스]시사회 진행에 따른 고객 안내(3/22) 상세보기">[코엑스]시사회 진행에 따른 고객 안내
							(3/22)</a></th>
					<th>서울</th>
					<th>2024.03.18</th>
				</tr>

				<tr>
					<td>대전유성</td>
					<th scope="row"><a
						href="https://www.megabox.co.kr/support/notice/detail?artiNo=11053&bbsNo=9"
						title="[대전유성]전기설비 법정 정기 검사로 인한 정전 안내 상세보기">[대전유성]전기설비 법정 정기
							검사로 인한 정전 안내</a></th>
					<th>대전/충청/세종</th>
					<th>2024.03.11</th>
				</tr>

				<tr>
					<td>별내</td>
					<th scope="row"><a
						href="https://www.megabox.co.kr/support/notice/detail?artiNo=11050&bbsNo=9"
						title="[별내]상영관 전체 리뉴얼 공사 진행 안내 (3/11부터~)" 상세보기>[별내]상영관 전체 리뉴얼
							공사 진행 안내 (3/11부터~)</a></th>
					<th>경기</th>
					<th>2024.03.05</th>
				</tr>

				<tr>
					<td>검단</td>
					<th scope="row"><a
						href="https://www.megabox.co.kr/support/notice/detail?artiNo=11049&bbsNo=9"
						title="[검단]상영관 로비 리뉴얼 공사로 인한 영업 일시중단 안내 (3/11~3/13)">[검단]상영관
							로비 리뉴얼 공사로 인한 영업 일시중단 안내 (3/11~3/13)</a></th>
					<th>인천</th>
					<th>2024.03.04</th>
				</tr>

				<tr>
					<td>상암월드컵경기장</td>
					<th scope="row"><a
						href="https://www.megabox.co.kr/support/notice/detail?artiNo=11047&bbsNo=9"
						title="[상암월드컵경기장]24년 3월 축구경기일 주차장 이용 안내">[상암월드컵경기장]24년 3월
							축구경기일 주차장 이용 안내</a></th>
					<th>서울</th>
					<th>2024.03.04</th>
				</tr>
				</tbody>
			</table>
	</div>

	<script>

        $(document).ready(function () {
            $('ul.tabs li').click(function () {
                var tab_id = $(this).attr('data-tab');

                $('ul.tabs li').removeClass('current');
                $('.tab-content').removeClass('current');

                $(this).addClass('current');
                $("#" + tab_id).addClass('current');
    </script>

</body>
</html>