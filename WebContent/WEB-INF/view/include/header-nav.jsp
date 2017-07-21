<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<div id="bar" onclick="toggleBar()">
	<i class="material-icons">menu</i>
</div>
<nav id="header-nav">
	<a href="/theviewtiful/home"><i class="material-icons">home</i></a>
	<div id="home-menu">
		<a href="/theviewtiful/auction/item-list">auction</a> <a
			href="/theviewtiful/consign">consign</a> <a
			href="/theviewtiful/market">market</a>
	</div>
	<div id="search">
		<input type="search" placeholder="search">
			<i class="material-icons">search</i>
	</div>
	<div id="user-menu">
		<a href="/theviewtiful/user/signin">로그인</a>
		<a href="/theviewtiful/user/signup">회원가입</a></div>
</nav>
