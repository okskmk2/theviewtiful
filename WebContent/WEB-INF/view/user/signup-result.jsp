<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
<link rel="stylesheet" href="/theviewtiful/resources/css/user.css">
<style type="text/css">
/*signup-result  */
#signup-result p{
	text-align: center;
	margin-bottom:30px;
}
</style>
</head>
<body>
<div id="nav-main">
<%@include file="../include/header.jsp" %>
<div id="main">
        <div class="user-box" id="signup-result">
            <h1>회원가입 완료</h1>
            <p>더뷰티풀 회원가입이 완료되었습니다.<br>지금 바로 더뷰티풀이 프리미엄 옥션을 만나보세요.</p>
            <a href="../auction/item-list" class="btn">확인</a>
        </div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>