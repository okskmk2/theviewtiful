<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
<link rel="stylesheet" href="/theviewtiful/resources/css/user.css">
<style type="text/css">
/*회원가입 화면  */
#signup-box p{
	margin-top: 140px;
	text-align: center;
}
#signup-box .btn{
	text-align: center;
}
</style>
</head>
<body>
<div id="nav-main">
<%@include file="../include/header.jsp" %>
<div id="main">
        <div class="user-box" id="signup-box">
            <h1>회원가입</h1>
            <a href="signup-email-form" class="btn">이메일 회원가입</a>
            <div>
                <p>
                    이미 회원이신가요? <a href="signin-form" class="link">로그인</a><br>
                    <a href="password-reset" class="link">비밀번호를 잊으셨나요?</a>
                </p>
            </div>
        </div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>