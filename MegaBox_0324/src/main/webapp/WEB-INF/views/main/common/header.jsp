<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <link href="${pageContext.request.contextPath}/resource/css/reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/mini.core.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/common/mini.header.css" rel="stylesheet">
</head>
<body>
    <div class="wrap-header">
        <header id="header">
            <h1 class="ci">
                <a href="http://localhost:8080/megabox/main" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
            </h1>

            <div class="util-area">
                <div class="left-link">
                    <a href="#" title="VIP LOUNGE">VIP LOUNGE</a>
                    <a href="#" title="멤버십">멤버십</a>
                    <a href="#" title="고객센터">고객센터</a>
                </div>
                <div class="right-link">
                    <a href="#" title="로그인"><button type="button" id="login">로그인</button></a>
                    <a href="#" title="회원가입">회원가입</a>
                    <a href="http://localhost:8080/megabox/booking" title="빠른예매">빠른예매</a>
                </div>
            </div>
            <div class="link-area">
                <a href="#" class="menu-icon" title="사이트맵">사이트맵</a>
                <a href="#" class="search-icon" title="검색">검색</a>
                <a href="http://localhost:8080/megabox/booking" class="cal-icon" title="예매">예매</a>
                <a href="#" class="person-icon" title="mypage">mypage</a>
            </div>
            <nav id="gnb">
                <ul class="nav-menu">
                    <li><a href="http://localhost:8080/megabox/movie" class="nav-movie" title="영화">영화</a></li>
                    <li><a href="http://localhost:8080/megabox/booking" class="nav-ticket" title="예매">예매</a></li>
                    <li><a href="http://localhost:8080/megabox/theatre" class="nav-theater" title="영화관">영화관</a></li>
                    <li><a href="#" class="nav-event" title="이벤트">이벤트</a></li>
                    <li><a href="http://localhost:8080/megabox/store" class="nav-store" title="스토어">스토어</a></li>
                    <li><a href="#" class="nav-benefit" title="혜택">혜택</a></li>
                </ul>
            </nav>
            
        </header>
    </div>
    <div class="wrap-modal">
        <div class="modal-login">
            <div class="top-bar">
                <span>로그인</span>
                <button type="button" class="close-login">X</button>
            </div>
            <div class="main-login">
                <input type="text" name="id" placeholder="아이디">
                <input type="password" name="pw" placeholder="비밀번호">
                <button type="button" name="login-submit">로그인</button>
            </div>
        </div>
    </div>
    
</body>
<script>
$(loadedHandler);
function loadedHandler(){
	$("#login").on("click", loginHandler);
	$(".close-login").on("click", loginCloseHandler);
	$(".wrap-modal").on("click", loginCloseHandler);
}

function loginHandler(){
	$(".wrap-modal").css("display", "block");
}

function loginCloseHandler(){
	if((event.target == $(".wrap-modal").get(0))
			||
			(event.target == $(".close-login").get(0))
			){
		$(".wrap-modal").css("display", "none");
	}
}
</script>

</html>