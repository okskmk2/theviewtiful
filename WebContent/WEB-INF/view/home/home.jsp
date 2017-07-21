<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include.html" %>
</head>
<body onresize="resize()">
<div id="nav-main">
<%@include file="../include/header-nav.jsp" %>
<div id="main">
<%@include file="main.jsp" %>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>