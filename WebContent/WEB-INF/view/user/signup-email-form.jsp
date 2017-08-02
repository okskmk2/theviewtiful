<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
<link rel="stylesheet" href="/theviewtiful/resources/css/user.css">
<style type="text/css">
/*회원가입(이메일)  */
#signup-email-form h1{
	margin-bottom: 20px;
}

#signup-email-form #picture-upload{
	border: 1px solid #aaa;
	padding: 5px 1px 4px 9px;
	margin: 0 auto 20px;
	width: 300px;
	height: 155px;
	display: flex;
	justify-content: space-between;
}

#signup-email-form #picture-preview{
	border: 1px solid #aaa;
	width: 150px;
	height: 150px;
	border-radius: 50%;
	overflow: hidden;
}

#picture-upload #buttons{
	display: flex;
	align-items: flex-end;
}

#picture-upload button{
	height: 26px;
	margin-right: 5px;
}

#signup-email-form form div.row{
	margin-top: 10px;	
}

#signup-email-form label{
	width: 100px;
}

#signup-email-form #agreement{
	margin-top: 40px;
	margin-right: 5px;
}

#signup-email-form input[type=submit]{
	display: block;
	margin: 50px auto 0;
}
</style>
</head>
<body>
<div id="nav-main">
<%@include file="../include/header.jsp" %>
<div id="main">
<div class="user-box" id="signup-email-form">
        <h1>회원가입 (이메일)</h1>
        <div>
        <form action="signup-email-data" method="post" >
        <div id="picture-upload">
            <div id="picture-preview"><img src="/theviewtiful/resources/images/nouser.png" style="width: 100%"></div>
            <div id="buttons">
            <input type="file" id="upload" style="display: none;">
            <button onclick="document.getElementById('upload').click();return false;">업로드</button>
            <button id="delete">삭제</button>
            </div>
        </div>
       	<div>
       		<div class="row">
            <label for="email">이메일</label>
            <input name="email" type="email" class="textinput">
            <span></span>
       		</div>
            <div class="row">
            <label for="password">비밀번호</label>
            <input name="password" type="password" class="textinput">
            <span></span>
            </div>
			<div class="row">
            <label>비밀번호확인</label>
            <input type="password" class="textinput">
            <span></span>
			</div>            
           	<div class="row">
            <label for="nickname">닉네임</label>
            <input name="nickname" class="textinput">
            <span></span>
           	</div>            
       	</div>
        <input type="checkbox" id="agreement"><span>이용약관 및 개인정보 취급방침에 동의합니다.</span><br>
        <input type="submit" value="가입하기">
        </form>
   		</div>
</div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>