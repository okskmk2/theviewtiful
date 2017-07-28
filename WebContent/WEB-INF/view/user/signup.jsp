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
        <div>
            <h1>회원가입</h1>
            <a href="signup-email-form">이메일 회원가입</a>
            <div>
                <p>
                    이미 회원이신가요? <a href="signin.do" class="link">로그인</a><br>
                    <a href="password-reset.html" class="link">비밀번호를 잊으셨나요?</a>
                </p>
            </div>
        </div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>