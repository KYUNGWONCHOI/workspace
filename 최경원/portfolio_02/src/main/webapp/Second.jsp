<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<link href="${pageContext.request.contextPath}/resource/css/second.css" rel="stylesheet">

</head>

<body>
	<div class="wrap">
		<div class="wrap-cont">
			<fieldset>
				<form>
					<div class="box">
						<table>
							<tr>
								<th>아이디</th>
								<td><input type="text" id="id" class="inputline" required
									autofocus></td>

							</tr>
							<tr>
								<td></td>
								<td class="notice id">필수 입력 항목입니다.</td>
							</tr>
							<tr>
								<th>패스워드</th>
								<td><input type="password" id="pw" class="inputline"
									required></td>
							</tr>
							<tr>
								<td></td>
								<td class="notice pw">필수 입력 항목입니다.</td>
								<td class="notice onfocus">영문자 대/소문자 특수문자, 숫자 포함 8 ~ 32자</td>
							</tr>
							<tr>
								<th>패스워드 확인</th>
								<td><input type="password" id="pwcheck" class="inputline"
									required></td>
							</tr>
							<tr>
								<td></td>
								<td class="notice pwcheck">필수 입력 항목입니다.</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="email" id="mail" class="inputline"></td>
							</tr>
							<tr>
								<th>주소</th>
								<td><input type="text" id="add1" class="inputline"></td>
							</tr>
							<tr>
								<th></th>
								<td><input type="text" id="add2" class="inputline"></td>
							</tr>
						</table>
						<div class="submit">
							<input type="submit">
						</div>
					</div>
				</form>
			</fieldset>
		</div>
	</div>

</body>
<script>
	$("#pw").on("focus", function() {
		id = $("#id").val();
		$(".notice.onfocus").css("display", "block");
		if ($("#pw").on("blur", function() {
			$(".notice.onfocus").css("display", "none");
		}))
			;
		if (id == '') {
			$(".notice.id").css("display", "block");
		} else {
			$(".notice.id").css("display", "none");
		}
	});
	$("#pwcheck").on("focus", function() {
		pw = $("#pw").val();
		if (pw == '') {
			$(".notice.pw").css("display", "block");
		} else {
			$(".notice.pw").css("display", "none");
		}
	});
	$("#mail").on("focus", function() {
		pwcheck = $("#pwcheck").val();
		if (pwcheck == '') {
			$(".notice.pwcheck").css("display", "block");
		} else {
			$(".notice.pwcheck").css("display", "none");
		}
	});

	$("#pwcheck").on("blur", function() {
		pwcheck = $("#pwcheck").val();
		console.log(pw);
		if (!(pw == pwcheck)) {
			alert("비밀번호가 일치하지 않습니다.");
			$("#pw").focus();
		}
	});

	// $("#pwcheck").on("blur", function() {
	// id = $("#id").val(); // jQuery로 요소 선택
	// alert(id);
	// console.log(id);
	// });
</script>

</html>