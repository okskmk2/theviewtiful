<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<a>The Viewtiful</a><a>작품보기</a><a>권리증마켓</a><a>판매신청</a><a>임대신청</a> <span>
		<i class="fa fa-search" aria-hidden="true"></i><input type="search"
		placeholder="검색">
	</span>
	<c:choose>
		<c:when test="${empty cus_info}">
			<a>회원가입</a>
			<a>로그인</a>
		</c:when>
		<c:otherwise>
			<a>알림</a>
			<a><i class="fa fa-user-circle" aria-hidden="true"></i>${cus_info.cus_nm }</a>
		</c:otherwise>
	</c:choose>
</header>