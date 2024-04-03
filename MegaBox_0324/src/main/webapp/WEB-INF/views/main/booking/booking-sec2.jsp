<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>booking-sec2</title>
<!-- 
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
 -->
<link href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="${pageContext.request.contextPath}/resource/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/mini.core.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/booking/mini.booking.layout.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resource/css/booking/mini.booking.sec2.css" rel="stylesheet">
<script>
$(loadedHandler);
function loadedHandler(){
	$("div.theater-1-2").hide();
	$("div.theater-detail").hide();
	$("div.time-content.list").hide();
	
	// 영화 탭 border
	$("#movie-all-label").css("border-left", "1px solid black");
	$("#movie-all-label").css("border-top", "1px solid black");
	$("#movie-all-label").css("border-right", "1px solid black");
	$("#movie-all-label").css("border-bottom", "1px solid rgba(128, 128, 128, 0.5)");
	
	$("#movie-curation-label").css("border-top", "1px solid rgba(128, 128, 128, 0.5)");
	$("#movie-curation-label").css("border-right", "1px solid rgba(128, 128, 128, 0.5)");
	$("#movie-curation-label").css("border-bottom", "1px solid black");
	
	// 극장 탭 border
	$("#theater-all-label").css("border-left", "1px solid black");
	$("#theater-all-label").css("border-top", "1px solid black");
	$("#theater-all-label").css("border-right", "1px solid black");
	$("#theater-all-label").css("border-bottom", "1px solid rgba(128, 128, 128, 0.5)");
	
	$("#theater-special-label").css("border-top", "1px solid rgba(128, 128, 128, 0.5)");
	$("#theater-special-label").css("border-right", "1px solid rgba(128, 128, 128, 0.5)");
	$("#theater-special-label").css("border-bottom", "1px solid black");
}
</script>
<style>
body > div.wrap-main > section.wrap-main.sec2 > div > div.theater > div.theater-content > div.theater-list > div.theater-1{
	 border-right: 1px solid rgba(128, 128, 128, 0.5);
}
</style>
</head>
<body>
	<div class="booking-sec2">
		<div class="movie">
			<div class="movie-title">
				<h2>영화</h2>
			</div>
			<div class="movie-content">
				<div class="movie-tab">
					<input type="radio" name="movie-tab" id="movie-all">
					<label for="movie-all" id="movie-all-label">전체</label>
					<input type="radio" name="movie-tab" id="movie-curation">
					<label for="movie-curation" id="movie-curation-label">큐레이션</label>
				</div>
				<div class="movie-list">
					<!-- 전체 -->
					<div class="movie-list-all">
						<ul>
							<li><img src="https://img.megabox.co.kr/static/pc/images/common/txt/15_20x20.png"><h3>파묘</h3></li>
							<li><img src="https://img.megabox.co.kr/static/pc/images/common/txt/12_20x20.png"><h3>듄 파트: 2</h3></li>
							<li><img src="https://img.megabox.co.kr/static/pc/images/common/txt/12_20x20.png"><h3>듄 파트: 3</h3></li>
						</ul>
					</div>
					<!-- 큐레이션 -->
					<div class="movie-list-curation">
						<ul>
							<li><img src="https://img.megabox.co.kr/static/pc/images/common/txt/18_20x20.png"><h3>메가박스 특별</h3></li>
						</ul>
					</div>
				</div>
				<div class="movie-select">
					<div class="none">
						<h1>미구현</h1>
					</div>
				</div>
			</div>
		</div>
		<div class="theater">
			<div class="theater-title">
				<h2>극장</h2>
			</div>
			<div class="theater-content">
				<div class="theater-tab">
					<input type="radio" name="theater-tab" id="theater-all"> <label
						for="theater-all" id="theater-all-label">전체</label> <input
						type="radio" name="movie-tab" id="theater-special"> <label
						for="theater-special" id="theater-special-label">특별관</label>
				</div>
				<div class="theater-list">
					<!-- 극장 1열 -->
					<div class="theater-1">
						<div class="theater-1-1">
							<ul>
								<li><input type="radio" name="theater-seoul"
									id="theater-seoul" class="theater-label" data-code="1"> <label for="theater-seoul"
									id="theater-seoulL" data-code="1">서울</label></li>
								<li><input type="radio" name="theater-gyeonggi"
									id="theater-gyeonggi" class="theater-label" data-code="2"> <label for="theater-gyeonggi"
									id="theater-gyeonggiL" class="theater-label gyeonggi" data-code="2">경기</label></li>
								<li><input type="radio" name="theater-incheon"
									id="theater-incheon" class="theater-label" data-code="3"> <label for="theater-incheon"
									id="theater-incheonL" class="theater-label incheon" data-code="3">인천</label></li>
							</ul>
						</div>
						<div class="theater-1-2">
							<ul>
								<li><input type="radio" name="theater-dolby"
									id="theater-dolby" class="theater-label" data-code="101"> <label for="theater-dolby"
									id="theater-dolbyL" class="theater-label dolby" data-code="101">DOLBY CINEMA</label></li>
								<li><input type="radio" name="theater-mega"
									id="theater-mega" class="theater-label" data-code="102"> <label for="theater-mega"
									id="theater-megaL" class="theater-label mega" data-code="102">MEGA | MX4D</label></li>
								<li><input type="radio" name="theater-boutique"
									id="theater-boutique" class="theater-label" data-code="103"> <label for="theater-boutique"
									id="theater-boutiqueL" class="theater-label boutique" data-code="103">THE BOUTIQUE</label></li>
							</ul>
						</div>
					</div>
					<!-- 극장 2열 -->
					<div class="theater-2">
						<div class="theater-detail seoul" data-code="1">
							<ul>
								<li><h3>강남</h3></li>
								<li><h3>강북</h3></li>
								<li><h3>군자</h3></li>
							</ul>
						</div>
						<div class="theater-detail gyeonggi" data-code="2">
							<ul>
								<li><h3>성남</h3></li>
								<li><h3>수원</h3></li>
								<li><h3>의정부</h3></li>
							</ul>
						</div>
						<div class="theater-detail incheon" data-code="3">
							<ul>
								<li><h3>청라</h3></li>
								<li><h3>검암</h3></li>
							</ul>
						</div>
						<div class="theater-detail dolby" data-code="101">
							<ul>
								<li><h3>DOLBY CINEMA 1</h3></li>
								<li><h3>DOLBY CINEMA 2</h3></li>
								<li><h3>DOLBY CINEMA 3</h3></li>
							</ul>
						</div>
						<div class="theater-detail mega" data-code="102">
							<ul>
								<li><h3>MEGA | MX4D 1</h3></li>
								<li><h3>MEGA | MX4D 2</h3></li>
								<li><h3>MEGA | MX4D 3</h3></li>
							</ul>
						</div>
						<div class="theater-detail boutique" data-code="103">
							<ul>
								<li><h3>THE BOUTIQUE 1</h3></li>
								<li><h3>THE BOUTIQUE 2</h3></li>
								<li><h3>THE BOUTIQUE 3</h3></li>
							</ul>
						</div>
					</div>
					<div class="theater-select">
						<div class="none">
							<h1>미구현</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="time">
			<div class="time-title">
				<h2>시간</h2>
			</div>
			<div class="time-select">
			<button type="button" class="prev">
				<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-cld-pre.png">
			</button>
			<button type="button"><h2>14</h2></button>
			<button type="button"><h2>15</h2></button>
			<button type="button"><h2>16</h2></button>
			<button type="button"><h2>17</h2></button>
			<button type="button"><h2>18</h2></button>
			<button type="button"><h2>19</h2></button>
			<button type="button"><h2>20</h2></button>
			<button type="button"><h2>21</h2></button>
			<button type="button"><h2>22</h2></button>
			<button type="button" class="next">
				<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-cld-next.png">
			</button>
			</div>
			<div class="time-content default">
				<div>
					<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-movie-time.png">
				</div>
				<div>
					<h3>영화와 극장을 선택하시면</h3><br><h3>상영시간표를 비교하여 볼 수 있습니다.</h3>
				</div>
			</div>
			<div class="time-content list">
				<ul>
					<li>
						<button>
							<div class="time-content-time">
								<strong>12:45</strong>
								<em>~15:09</em>
							</div>
							<div class="time-content-title">
								<strong>듄 파트: 2</strong>
								<br>
								<em>2D</em>
							</div>
							<div class="time-content-space">
								<div>
									군자<br>1관
								</div>
								<div>
									<strong>0</strong><span>/</span><em>232</em>
								</div>
							</div>
						</button>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<script>
			// 영화 탭 선택
			$("input#movie-all").click(function() {
				$("div.movie-list-all").show();
				$("div.movie-list-curation").hide();
				
				$("#movie-all-label").css("border-left", "1px solid black");
				$("#movie-all-label").css("border-top", "1px solid black");
				$("#movie-all-label").css("border-right", "1px solid black");
				$("#movie-all-label").css("border-bottom", "1px solid rgba(128, 128, 128, 0.5)");
				
				$("#movie-curation-label").css("border-top", "1px solid rgba(128, 128, 128, 0.5)");
				$("#movie-curation-label").css("border-right", "1px solid rgba(128, 128, 128, 0.5)");
				$("#movie-curation-label").css("border-bottom", "1px solid black");
			});
			$("input#movie-curation").click(function() {
				$("div.movie-list-all").hide();
				$("div.movie-list-curation").show();
				
				$("#movie-all-label").css("border-left", "1px solid rgba(128, 128, 128, 0.5)");
				$("#movie-all-label").css("border-top", "1px solid rgba(128, 128, 128, 0.5)");
				$("#movie-all-label").css("border-right", "1px solid black");
				$("#movie-all-label").css("border-bottom", "1px solid black");
				
				$("#movie-curation-label").css("border-top", "1px solid black");
				$("#movie-curation-label").css("border-right", "1px solid black");
				$("#movie-curation-label").css("border-bottom", "1px solid rgba(128, 128, 128, 0.5)");
			});

			// 극장 탭 선택
			$("input#theater-all").click(function() {
				$("div.theater-1-1").show();
				$("div.theater-1-2").hide();
				$("div.theater-detail").hide();
				
				$("#theater-all-label").css("border-left", "1px solid black");
				$("#theater-all-label").css("border-top", "1px solid black");
				$("#theater-all-label").css("border-right", "1px solid black");
				$("#theater-all-label").css("border-bottom", "1px solid rgba(128, 128, 128, 0.5)");
				
				$("#theater-special-label").css("border-top", "1px solid rgba(128, 128, 128, 0.5)");
				$("#theater-special-label").css("border-right", "1px solid rgba(128, 128, 128, 0.5)");
				$("#theater-special-label").css("border-bottom", "1px solid black");
			});
			$("input#theater-special").click(function() {
				$("div.theater-1-1").hide();
				$("div.theater-1-2").show();
				$("div.theater-detail").hide();
				
				$("#theater-all-label").css("border-left", "1px solid rgba(128, 128, 128, 0.5)");
				$("#theater-all-label").css("border-top", "1px solid rgba(128, 128, 128, 0.5)");
				$("#theater-all-label").css("border-right", "1px solid black");
				$("#theater-all-label").css("border-bottom", "1px solid black");
				
				$("#theater-special-label").css("border-top", "1px solid black");
				$("#theater-special-label").css("border-right", "1px solid black");
				$("#theater-special-label").css("border-bottom", "1px solid rgba(128, 128, 128, 0.5)");
			});

			// 극장 세부 선택
			$("input.theater-label").on("click", function(){
				$("div.theater-detail").removeClass("active");
				$("div.theater-detail").hide();
				var code = $(this).attr("data-code");
				$("div.theater-detail[data-code="+code+"]").addClass("active");
				$("div.theater-detail.active").show();
				$("div.theater-detail").removeClass("active");
			});
			
			// 시간대 출력
			$("div.theater-detail").on("click", function(){
				$("div.time-content.default").hide();
				$("div.time-content.list").show();
			});
		</script>
</body>
</html>
