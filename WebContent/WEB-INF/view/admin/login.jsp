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
<h1>관리자 로그인 페이지</h1>
<c:choose>
<c:when test="${empty adminInfo }">
<form action="/theviewtiful/admin/login" method="post">
<input name="adminId">
<input name="adminPassword" type="password">
<input type="submit">
</form>
</c:when>
<c:otherwise>
<jsp:forward page="/admin/home"/>
</c:otherwise>
</c:choose>
</body>
</html>