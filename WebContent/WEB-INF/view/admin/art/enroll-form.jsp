<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
form{
	display: flex;
	flex-direction: column;
	width: 380px;
}
label{
	display: flex;
	justify-content: space-between;
	margin-bottom: 5px;
}
label input{
	width: 245px;
}
</style>
</head>
<body>
<%@ include file="../include/header-include.jsp" %>
<h1>관리자 작품등록 페이지</h1>
<c:if test="${adminInfo.enrollArtRight eq 1}">

<form action="/theviewtiful/admin/art/enroll" enctype="multipart/form-data" method="post">
<label>
작품명
<input name="artworkName" type="text">
</label>
<label>
작가
<input name="artistName" type="text">
</label>
<label>
작품가격
<input name="artworkPrice" type="number">
</label>
<label>
권리증 단위가격
<input name="unitPrice"	type="number">
</label>
<label>
판매종료일자
<input name="endData" type="date">
</label>
<label>
이미지파일
<input name="artworkImgFile" type="file">
</label>
<div>
<p>작품등록자 : ${adminInfo.adminId }</p><input type="submit" style="width: 130px;" value="등록">
</div>
</form>
</c:if>
<c:if test="${adminInfo.enrollArtRight ne 1 }">
작품등록권한이 없습니다.
</c:if>
</body>
</html>