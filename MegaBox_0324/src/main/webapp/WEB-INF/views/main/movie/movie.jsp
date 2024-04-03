<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MEET PLAY SHARE, 메가박스</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/mini.core.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/movie/megabox_movie.css">


<!-- jquery js 파일은 상단에 위치함 -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

</head>

<body>
	<!-- movie -->
	<section class="wrap">
		<div class="wrap-container">
			<div class="movie">

				<!-- 전체영화 -->
				<h1 class="allmovie">전체영화</h1>
				<!-- 탭 -->
				<div class="movie_tab">
					<ul>
						<li class="actlist"><button>박스오피스</button></li>
						<li class="actlist"><button>상영예정작</button></li>
						<li class="actlist"><button>특별상영</button></li>
						<li class="actlist"><button>필름소사이어티</button></li>
						<li class="actlist"><button>클래식소사이어티</button></li>
					</ul>
				</div>
			<!-- 
				영화선택옵션
				<div class="movieopt">
					<div>
						<div class="movoption opt1">
							<div class="onair">
								<label class="switch"> <input type="checkbox"
									class="onairchk"> <span class="onairstr">개봉작만</span>
								</label>
								<div class="onaircount">
									<span class="mcount">n</span><span>개의 영화가 검색되었습니다.</span>
								</div>
							</div>
							<div class="moviesrc">
								<form>
									<input type="text" class="inputt" placeholder="search title">
									<input type="submit" class="inputs" value="submit">
								</form>
							</div>
						</div>
						<div class="movoption opt2">
							<div class="bydate"></div>
							<div class="byabc"></div>
							<div class="moviesrc"></div>
						</div>
					</div>
				</div>
				 -->
				<!-- 차트 -->
				<div class="movie_chart">
					<div class="chart1">
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/1.jpg"
										alt="1">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">1</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_12">12</span><span class="title">극장판
										스파이 패밀리 코드 : 화이트</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 30%</span><span> | </span><span>개봉일 2024.03.20</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data="1"></a><span
										class="likenum">980</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/2.jpg"
										alt="2">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">2</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<%-- <p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">파묘</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 23.4%</span><span> | </span><span>개봉일
									2024.02.22</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="2"></a><span
										class="likenum">1550</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/3.jpg"
										alt="3">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">3</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span> <span class="title">듄:파트2</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 13.4% </span> <span>|</span> <span> 개봉일
									2024.02.28</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="3"></a><span
										class="likenum">999</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/4.jpg"
										alt="4">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">4</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p> --%>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">댓글부대</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 12.8%</span><span> | </span><span>개봉일
									2024.03.27</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="4"></a><span
										class="likenum">980</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/5.jpg"
										alt="5">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">5</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_12">12</span><span class="title">고질라X콩:
										뉴 엠파이어</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 8.7%</span> <span>|</span><span>개봉일 2024.03.27</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="5"></a><span
										class="likenum">540</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/6.jpg"
										alt="6">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">6</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">목스박</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 2.8%</span> <span>|</span><span>개봉일 2024.03.20</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="6"></a><span
										class="likenum">321</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/7.jpg"
										alt="7">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">7</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">밥
										말리:원러브</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 2.4%</span> <span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="7"></a><span
										class="likenum">228</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/8.jpg"
										alt="8">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">8</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">지고이네르바이젠</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.15</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="8"></a><span
										class="likenum">30</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>

						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/9.jpg"
										alt="9">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">9</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">랜드
										오브 배드</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="9"></a><span
										class="likenum">55</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/10.jpg"
										alt="10">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">10</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">가여운
										것들</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.06</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="10"></a><span
										class="likenum">957</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/13.jpg"
										alt="13">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">11</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">메이
										디셈버</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.3%</span><span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="11"></a><span
										class="likenum">395</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/14.jpg"
										alt="14">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">12</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_all">all</span><span class="title">[2024
										시네도슨트]</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.0%</span><span>|</span><span>개봉일 2024.04.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요" data-num="12"></a><span
										class="likenum">9</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
					</div>
					<div class="chart2">
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/5.jpg"
										alt="5">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">5</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_12">12</span><span class="title">고질라X콩:
										뉴 엠파이어</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 8.7%</span> <span>|</span><span>개봉일 2024.03.27</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">540</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/6.jpg"
										alt="6">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">6</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">목스박</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 2.8%</span> <span>|</span><span>개봉일 2024.03.20</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">321</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/7.jpg"
										alt="7">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">7</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">밥
										말리:원러브</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 2.4%</span> <span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">228</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/8.jpg"
										alt="8">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">8</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">지고이네르바이젠</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.15</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">30</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>

						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/1.jpg"
										alt="1">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">1</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_12">12</span><span class="title">극장판
										스파이 패밀리 코드 : 화이트</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 30%</span><span> | </span><span>개봉일 2024.03.20</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">980</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/2.jpg"
										alt="2">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">2</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<%-- <p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">파묘</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 23.4%</span><span> | </span><span>개봉일
									2024.02.22</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">1550</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/3.jpg"
										alt="3">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">3</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span> <span class="title">듄:파트2</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 13.4% </span> <span>|</span> <span> 개봉일
									2024.02.28</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">999</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/4.jpg"
										alt="4">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">4</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p> --%>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">댓글부대</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 12.8%</span><span> | </span><span>개봉일
									2024.03.27</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">980</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>

						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/9.jpg"
										alt="9">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">9</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">랜드
										오브 배드</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">55</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/10.jpg"
										alt="10">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">10</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">가여운
										것들</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.06</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">957</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/13.jpg"
										alt="13">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">11</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">메이
										디셈버</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.3%</span><span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">395</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/14.jpg"
										alt="14">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">12</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_all">all</span><span class="title">[2024
										시네도슨트]</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.0%</span><span>|</span><span>개봉일 2024.04.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">9</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
					</div>
					<div class="chart3">
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/3.jpg"
										alt="3">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">3</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span> <span class="title">듄:파트2</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 13.4% </span> <span>|</span> <span> 개봉일
									2024.02.28</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">999</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/4.jpg"
										alt="4">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">4</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p> --%>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">댓글부대</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 12.8%</span><span> | </span><span>개봉일
									2024.03.27</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">980</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/5.jpg"
										alt="5">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">5</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_12">12</span><span class="title">고질라X콩:
										뉴 엠파이어</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 8.7%</span> <span>|</span><span>개봉일 2024.03.27</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">540</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/6.jpg"
										alt="6">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">6</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">목스박</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 2.8%</span> <span>|</span><span>개봉일 2024.03.20</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">321</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>

						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/1.jpg"
										alt="1">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">1</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_12">12</span><span class="title">극장판
										스파이 패밀리 코드 : 화이트</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 30%</span><span> | </span><span>개봉일 2024.03.20</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">980</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/2.jpg"
										alt="2">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">2</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<%-- <p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">파묘</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 23.4%</span><span> | </span><span>개봉일
									2024.02.22</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">1550</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/7.jpg"
										alt="7">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">7</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">밥
										말리:원러브</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 2.4%</span> <span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">228</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/8.jpg"
										alt="8">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">8</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">지고이네르바이젠</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.15</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">30</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>

						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/9.jpg"
										alt="9">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">9</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">랜드
										오브 배드</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">55</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/10.jpg"
										alt="10">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">10</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">가여운
										것들</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.06</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">957</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/13.jpg"
										alt="13">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">11</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">메이
										디셈버</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.3%</span><span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">395</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/14.jpg"
										alt="14">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">12</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_all">all</span><span class="title">[2024
										시네도슨트]</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.0%</span><span>|</span><span>개봉일 2024.04.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">9</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
					</div>
					<div class="chart4">
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/1.jpg"
										alt="1">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">1</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_12">12</span><span class="title">극장판
										스파이 패밀리 코드 : 화이트</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 30%</span><span> | </span><span>개봉일 2024.03.20</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">980</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/2.jpg"
										alt="2">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">2</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<%-- <p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">파묘</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 23.4%</span><span> | </span><span>개봉일
									2024.02.22</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">1550</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/3.jpg"
										alt="3">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">3</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span> <span class="title">듄:파트2</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 13.4% </span> <span>|</span> <span> 개봉일
									2024.02.28</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">999</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/4.jpg"
										alt="4">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">4</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p> --%>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">댓글부대</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 12.8%</span><span> | </span><span>개봉일
									2024.03.27</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">980</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/5.jpg"
										alt="5">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">5</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_12">12</span><span class="title">고질라X콩:
										뉴 엠파이어</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 8.7%</span> <span>|</span><span>개봉일 2024.03.27</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">540</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/6.jpg"
										alt="6">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">6</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">목스박</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 2.8%</span> <span>|</span><span>개봉일 2024.03.20</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">321</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/7.jpg"
										alt="7">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">7</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">밥
										말리:원러브</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 2.4%</span> <span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">228</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/8.jpg"
										alt="8">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">8</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">지고이네르바이젠</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.15</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">30</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>

						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/9.jpg"
										alt="9">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">9</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">랜드
										오브 배드</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">55</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/10.jpg"
										alt="10">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">10</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">가여운
										것들</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.06</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">957</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/13.jpg"
										alt="13">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">11</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">메이
										디셈버</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.3%</span><span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">395</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/14.jpg"
										alt="14">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">12</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_all">all</span><span class="title">[2024
										시네도슨트]</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.0%</span><span>|</span><span>개봉일 2024.04.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">9</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
					</div>
					<div class="chart5">
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/1.jpg"
										alt="1">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">1</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_12">12</span><span class="title">극장판
										스파이 패밀리 코드 : 화이트</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 30%</span><span> | </span><span>개봉일 2024.03.20</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">980</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/2.jpg"
										alt="2">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">2</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<%-- <p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">파묘</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 23.4%</span><span> | </span><span>개봉일
									2024.02.22</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">1550</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/3.jpg"
										alt="3">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">3</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span> <span class="title">듄:파트2</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 13.4% </span> <span>|</span> <span> 개봉일
									2024.02.28</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">999</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/4.jpg"
										alt="4">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">4</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p> --%>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">댓글부대</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 12.8%</span><span> | </span><span>개봉일
									2024.03.27</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">980</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/5.jpg"
										alt="5">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">5</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_12">12</span><span class="title">고질라X콩:
										뉴 엠파이어</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 8.7%</span> <span>|</span><span>개봉일 2024.03.27</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">540</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/6.jpg"
										alt="6">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">6</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">목스박</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 2.8%</span> <span>|</span><span>개봉일 2024.03.20</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">321</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/7.jpg"
										alt="7">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">7</span>
								</div>
								<div class="theater">
									<p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">밥
										말리:원러브</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 2.4%</span> <span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">228</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>
						<div class="poster">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/8.jpg"
										alt="8">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">8</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">지고이네르바이젠</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.15</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">30</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>
						</div>

						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/9.jpg"
										alt="9">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">9</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">랜드
										오브 배드</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">55</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/10.jpg"
										alt="10">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">10</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_15">15</span><span class="title">가여운
										것들</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.4%</span><span>|</span><span>개봉일 2024.03.06</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">957</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/13.jpg"
										alt="13">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">11</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_18">18</span><span class="title">메이
										디셈버</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.3%</span><span>|</span><span>개봉일 2024.03.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">395</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
						<div class="poster addpst">
							<div>
								<button type="button" class="posterbtn">
									<img
										src="${pageContext.request.contextPath}/resource/image/poster/14.jpg"
										alt="14">
								</button>
							</div>
							<div class="ranktheater">
								<div class="rank">
									<span class="ranknum">12</span>
								</div>
								<div class="theater">
									<%-- <p class="cinema">
										<img
											src="${pageContext.request.contextPath}/resource/image/cinema.png">
									</p>
									<p class="atmos">
										<img
											src="${pageContext.request.contextPath}/resource/image/atmos.png">
									</p> --%>
								</div>
							</div>
							<div class="agetitle">
								<div>
									<span class="age age_all">all</span><span class="title">[2024
										시네도슨트]</span>
								</div>
							</div>
							<div class="ratedate">
								<span>예매율 0.0%</span><span>|</span><span>개봉일 2024.04.13</span>
							</div>
							<div class="infor_btn">
								<button class="goodbtn">
									<label><a href="#" class="hrtimg" title="좋아요"></a><span
										class="likenum">9</span></label>
								</button>
								<button type="button" class="bookbtn"><a href="http://localhost:8080/megabox/booking"><span class="booktxt">예매</span></a></button>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="addbar">
			<button type="button" class="addbtn">
				<span>더보기</span> <img
					src="${pageContext.request.contextPath}/resource/image/ico-btn-more-arr.png">
			</button>
		</div>
	</section>


	<script>
		/* 탭 */
		var tab = $(".movie_tab > ul > li");
		var chart = $(".movie_chart > div");

		chart.css("display", "none");
		chart.eq(0).css("display", "block");

		tab.click(function() {
			var target = $(this);
			var indexNum = target.index();
			var none = $(this)
			chart.css("display", "none");
			chart.eq(indexNum).css("display", "block");
			
			/* 박스오피스에서만 순위 표시 */
			if(!(indexNum == 0)){
				$(".rank").css("display", "none");
			}else {
				$(".rank").css("display", "block");
			}
			
			
			
						
			/*
			if (indexNum == 1) {
				$(".movieopt .opt1").css("display", "none");
				$(".movieopt .opt2").css("display", "block");
			} else {
				$(".movieopt .opt1").css("display", "block");
				$(".movieopt .opt2").css("display", "none");
			}
			*/
		});
		
		tab.click(function() {
			$(".movie_tab > ul >li").removeClass("activetab");
			$(this).addClass("activetab");
			/* 
			var target = $(this);
			var indexNum = target.index();
			var lenght = target.length();
			var none = $(this)
			console.log("=====");
			console.log("=="+lenght);
			for(var i = 0; i< lenght; i++){
				console.log(i);
				if(i == indexNum){
					target.addClass(".activetab");		
				} else
					target.removeClass(".activetab");
			} */
		});
		/* 선택된 탭 표시 */
		/* tab.click(function(){
			var target = $(this);
			var none = $(this).not();
			this.addClass(".activetab");
			none.removeClass(".activetab");
		}); */
		
		
		/* 더보기 */
		var addb = $(".addbtn");
		addb.click(function() {
			console.log("===========");
			$(".addpst").css("display", "block");
			$(".addbar").css("display", "none");
		});

		/* 좋아요 */
		
		var hrt = $(".hrtimg");
		hrt.on("click", function() {
			hrt.toggleClass("likebtn");
		}); 
 
		/* 좋아요 수 */
		var addnum = $(".likenum");
		hrt.on("click", function() {
			console.log(addnum);
			console.log(addnum.val());
		});
		
	</script>
</body>

</html>