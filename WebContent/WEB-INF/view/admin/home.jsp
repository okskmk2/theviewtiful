<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>관리자 홈페이지</h1>
<nav>
<c:if test="${not empty adminInfo}">
<a href="/theviewtiful/admin/logout">로그아웃</a>
</c:if>
<c:if test="${adminInfo.enrollArtRight eq 1}">
<a href="/theviewtiful/admin/art/enroll-form">옥션페이지에 작품등록하기</a>
</c:if>
</nav>
<div>
<c:if test="${not empty adminInfo}">
${adminInfo.adminId }로 접속중
</c:if>
<c:if test="${empty adminInfo}">
<jsp:forward page="/theviewtiful/admin/login"/>
</c:if>
</div>
<div>
<ul>
</ul>
</div>
<div>
결과 : ${result }
</div>
</body>
</html>