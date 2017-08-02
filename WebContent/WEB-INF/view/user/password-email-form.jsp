<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
<link rel="stylesheet" href="/theviewtiful/resources/css/user.css">
</head>
<body>
<div id="nav-main">
<%@include file="../include/header.jsp" %>
<div id="main">
    <div>
        <header>
            <h1>[더뷰티풀]새로운 비밀번호를 설정해주세요.</h1>
            <p>보낸사람 : info@theviewtiful.com</p>
        </header>
        <div>(로고)</div>
        <p>더뷰티풀의 새 비밀번호를 설정하려면, 아래 버튼을 눌러주세요.<br>24시간 이내에 변경해주세요.</p>
        <a href="password-reset?">비밀번호 재설정하기</a>
    </div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>