<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<link href="${pageContext.request.contextPath}/resource/css/first.css" rel="stylesheet">
	
</head>
<body>
    <div class="wrap">
        <div class="wrap-top">
            <div class="top">
                <fieldset>
                    <legend>공지사항 작성하기</legend>
                    <form method="post" action="insert.no">
                        <table class="tblT">
                            <tr>
                                <th>제목</th>
                                <td><input type="text" name="title" placeholder="제목을 입력하세요" class="txt" required></td>                                        
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td><textarea rows="5" name="content" placeholder="내용을 입력하세요" required class="txta"></textarea></td>                                        
                            </tr>
                            <tr>
                                <th>첨부파일</th>
                                <td><input type="file" name="uploadFile"></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td class="sub"><input type="submit"></td>
                            </tr>
                        </table>
                    </form>
                </fieldset>
            </div>
        </div>
        <hr>
        <div class="warp-bottom">
            <div class="bottom">
                <table border="1" class="tblB">
                    <thead>
                        <tr>
                            <th class="thNum">번호</th>
                            <th colspan="2" class="thSub">제목</th>
                            <th class="thWriter">작성자</th>
                            <th class="thDate">작성일</th>
                            <th class="thSearchNum">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>9</td>
                            <td class="dot">공지사항 제목9</td>
                            <td><button type="button">바로가기</td>
                            <td>user01</td>
                            <td>2021-03-29</td>
                            <td>34</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>공지사항 제목6</td>
                            <td><button type="button">바로가기</td>
                            <td>answ445</td>
                            <td>2021-03-12</td>
                            <td>67</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>공지사항 제목3</td>
                            <td><button type="button">바로가기</td>
                            <td>testg12</td>
                            <td>2021-03-01</td>
                            <td>98</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>공지사항 제목2</td>
                            <td><button type="button">바로가기</td>
                            <td>palwe3</td>
                            <td>2021-01-02</td>
                            <td>85</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>공지사항 제목1</td>
                            <td><button type="button">바로가기</td>
                            <td>xml23</td>
                            <td>2020-12-24</td>
                            <td>124</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4">전체공지사항 갯수</td>
                            <td colspan="2">5개</td>
                        </tr>
                    </tfoot>
                </table>
            </div>

        </div>
    </div>
</body>

</html>