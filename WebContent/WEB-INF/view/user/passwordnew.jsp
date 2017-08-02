 <%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
<link rel="stylesheet" href="/theviewtiful/resources/css/user.css">
<style type="text/css">
#passwordnew{
	width: 465px;
}
#passwordnew form{
	display:flex;
	flex-direction:column;
	justify-content: center;
	align-items: center;
}
#passwordnew label{
	width: 100px;
}

#passwordnew .row .col{
	font-size: 13px;
}
input[type=password]{
	margin-right: 5px;
	width:220px;
	height: 30px;
}
</style>
</head>
<body>
<div id="nav-main">
<%@include file="../include/header.jsp" %>
<div id="main">
    <div class="user-box" id="passwordnew">
        <h1>새 비밀번호</h1>
        <form action="">
            <div class="row">
                <label>비밀번호</label>
                <input name="password" type="password">
                <div class="col">
                    <div>영문, 숫자 포함 8자 이상</div>
                    <div id="check-complex">resultmsg</div>
                </div>
            </div>
            <div class="row">
                <label>비밀번호 확인</label>
                <input type="password">
                <div class="col">
                    <div>영문, 숫자 포함 8자 이상</div>
                    <div id="recheck">resultmsg</div>
                </div>
            </div>
            <input type="submit" value="확인">
        </form>
    </div>

</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>