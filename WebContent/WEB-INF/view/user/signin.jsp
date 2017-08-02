<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
<link rel="stylesheet" href="/theviewtiful/resources/css/user.css">
<style type="text/css">
/*로그인 화면*/
#signin-box form{
	display: flex;
	flex-direction: column;
}

#signin-box form input[type=email],#signin-box form input[type=password]{
	margin-top: 5px;
	height: 30px;
	padding: 0 10px;
}
#signin-box form input[type=checkbox]{
	margin-right: 5px;
}

#login-result{
	height: 40px;
}

#signin-box p{
	margin-top: 10px;
	flex-flow: 1;
	text-align: center;
}
</style>
</head>
<body>
<div id="nav-main">
<%@include file="../include/header.jsp" %>
<div id="main">
        <div class="user-box" id="signin-box">
            <h1>로그인</h1>
            <p>로그인하면 더뷰티풀의 다양한 기능을 이용할 수 있습니다!</p>
            <form action="signin-data" method="post">
                <input type="email" placeholder="이메일" name="email">
                <input type="password" placeholder="비밀번호" name="password"><br>
                <div><input type="checkbox"><span>자동로그인</span></div>
                <div id="login-result"></div>
                <input type="submit" value="로그인">
            </form>
            <p>아직 회원이 아니신가요? <a href="signup" class="link"> 회원가입</a><br>
                <a href="password-reset" class="link">비밀번호를 잊으셨나요?</a></p>
        </div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>