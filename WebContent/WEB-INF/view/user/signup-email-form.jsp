<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
</head>
<body>
<div id="nav-main">
<%@include file="../include/header-nav.jsp" %>
<div id="main">
        <h1>회원가입 (이메일)</h1>
        	<div style="margin: 0 auto">
        <div id="picture-upload">
            <div id="picture-preview">(사진미리보기)</div>
            <button id="upload">업로드</button>
            <button id="delete">삭제</button>
        </div>
        <form action="signup-email-data" method="post" >
       	<div style="width: 300px; ">
            <label for="">이메일
            <input name="email" type="email">
            </label>
            <label for="">비밀번호
            <input name="password" type="password">
            </label>
            <label>비밀번호확인
            <input type="password">
            </label>
            <label for="">닉네임
            <input name="nickname">
            </label>
       	</div>
            <input type="checkbox"><span>이용약관 및 개인정보 취급방침에 동의합니다.</span><br>
            <input type="submit" value="가입하기">
        </form>
    </div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>