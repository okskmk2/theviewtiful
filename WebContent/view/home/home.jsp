<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<title>홈페이지</title>
<script src="https://use.fontawesome.com/dadc7cfd22.js"></script>
<link href="/theviewtiful/resources/css/style.css" rel="stylesheet">
<script src="/theviewtiful/resources/js/code.js"></script>
</head>
<body onresize="resize()">      
<div id="bar" onclick="toggleBar('bar_target')"><i class="fa fa-bars fa-lg" aria-hidden="true"></i></div>
<nav id="bar_target">
    <a href="home"><i class="fa fa-home" aria-hidden="true"></i></a>
    <div id="home-menu">
        <a href="/theviewtiful/auction">auction</a>
        <a href="/theviewtiful/consign">consign</a>
        <a href="/theviewtiful/market">market</a>
    </div>
    <div id="search">        
        <input type="search" placeholder="search">
        <button><i class="fa fa-search" aria-hidden="true"></i></button>
    </div>
    <div id="user-menu">
        <a href="/theviewtiful/user/signin">로그인</a>
        <a href="/theviewtiful/user/signup">회원가입</a>
    </div>
</nav>
${homeList}        
</body>
</html>