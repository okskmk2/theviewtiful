<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
<nav>
<ul>
<li><a>The Viewtiful</a></li>
<li><a>작품보기</a></li>
<li><a>권리증마켓</a></li>
<li><a>판매신청</a></li>
<li><a>임대신청</a></li>
</ul>
	<span>
		<i class="fa fa-search" aria-hidden="true"></i><input type="search"
		placeholder="검색">
	</span>
	<ul>
	<c:choose>
		<c:when test="${empty cus_info}">
			<li><a>회원가입</a></li>
			<li><a>로그인</a></li>
		</c:when>
		<c:otherwise>
			<li><a>알림</a></li>
			<li><a><i class="fa fa-user-circle" aria-hidden="true"></i>${cus_info.cus_nm }</a></li>
		</c:otherwise>
	</c:choose>
	</ul>
	</nav>
</header>