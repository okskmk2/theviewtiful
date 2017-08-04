<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
<link rel="stylesheet" href="/theviewtiful/resources/css/???.css">
<style type="text/css">
???
</style>
</head>
<body>
<div id="nav-main">
<%@include file="../include/header.jsp" %>
<div id="main">
<div>
	<h2>공지사항</h2>
	<a>목록</a>
	<article>
		<h3>[이벤트] 친구추천 프로모션</h3>
		<span>${작성일자'yyyy-mm-dd'}</span>
		<article></article>
	</article>
	<div>
		<div>
			<div>다음글</div>
			<div>다음글이 없습니다.</div>
		</div>
		<div>
			<div>이전글</div>
			<div>[공지]카카오톡 상담 창구 오픈</div>
		</div>
	</div>
	<a>목록</a>
</div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>