<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
<link rel="stylesheet" href="/theviewtiful/resources/css/user.css">
<style type="text/css">
.user-box{
	width: 450px;
}
.user-box p{
	text-align: center;
}
.user-box form{
width:100%;
display: flex;
flex-direction: column;
}
.user-box .textinput{
	margin-top:5px;
	margin-bottom:10px;
	height:30px;
	width: 100%;
}
input[type=submit]{
	align-self:flex-end;
}
</style>
</head>
<body onresize="resize()">
<div id="nav-main">
<%@include file="../include/header.jsp" %>
<div id="main">
<div class="user-box">
    <h1>비밀번호 재설정</h1>
    <p>가입하신 이메일 주소를 입력하시면 <br>비밀번호를 새로 만들 수 있는 링크를 이메일로 발송해드립니다.</p>
    <form action="password-reset-data" method="post">
        <input type="email" placeholder="이메일" class="textinput"><br>
        <input type="submit" value="확인">
    </form>
</div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>