<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<div id="bar" onclick="toggleBar()">
	<i class="material-icons">menu</i>
</div>
<header>
	<nav id="header-nav">
		<div id="home-menu" class="g1">
			<a href="/theviewtiful/home" class="home">더뷰티풀</a> <a
				href="/theviewtiful/auction/item-list">auction</a> <a
				href="/theviewtiful/consign">consign</a> <a
				href="/theviewtiful/market">market</a> <a href="#">about</a>
			<div id="search">
				<i class="material-icons mr10">search</i> <input type="search"
					placeholder="검색">
			</div>
		</div>
		<div id="user-menu" class="g3">
			<a href="/theviewtiful/user/signup" class="mr10">회원가입</a>
			<a href="/theviewtiful/user/signin" >로그인</a> 
		</div>
	</nav>
</header>