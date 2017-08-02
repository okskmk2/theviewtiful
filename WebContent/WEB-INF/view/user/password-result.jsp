<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
<link rel="stylesheet" href="/theviewtiful/resources/css/user.css">
<style type="text/css">
.user-box #info{
	margin-bottom: 70px;
	text-align: center;
}
.user-box #btns{
	display: flex;
	justify-content: center;
}

.user-box .btn{
	margin-right: 10px;
}
#result{
	margin-top:20px;
	text-align: center;
}
</style>
</head>
<body>
<div id="nav-main">
<%@include file="../include/header.jsp" %>
<div id="main">
    <div class="user-box">
        <div id="info">
            <h1>이메일이 발송되었습니다.</h1>
            <p style="font-size: large;">이메일을 통해 비밀번호를 다시 설정해주세요.</p>
        </div>
        <div id="btns"><a href="resend-email" class="btn">재발송하기</a><a href="signin" class="btn">로그인하기</a>
        </div>
            <div id="result"></div>
    </div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>