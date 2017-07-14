<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="w3-container w3-border">
	<a class="w3-bar-item w3-button">The Viewtiful</a><a
		class="w3-bar-item w3-button">작품보기</a><a class="w3-bar-item w3-button">권리증마켓</a><a
		class="w3-bar-item w3-button">판매신청</a><a class="w3-bar-item w3-button">임대신청</a>
	<span class="w3-bar-item w3-border-left">
		<i class="fa fa-search w3-margin-left" aria-hidden="true"></i><input type="search"
			placeholder="검색" class="w3-bar-item w3-margin-left">
	</span>
	<c:choose>
	<c:when test="${empty cus_info}">
	<a class="w3-bar-item w3-button w3-right">회원가입</a><a
		class="w3-bar-item w3-button w3-right">로그인</a>
	</c:when>
	<c:otherwise>
	<a class="w3-bar-item w3-button w3-right">알림</a><a
		class="w3-bar-item w3-button w3-right"><i class="fa fa-user-circle" aria-hidden="true"></i>${cus_info.cus_nm }</a>
	</c:otherwise>
	</c:choose>
</header>