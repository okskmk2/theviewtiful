<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include" %>
<link rel="stylesheet" href="/theviewtiful/resources/css/auction.css">
</head>
<body>
<%@include file="../include/header-nav.jsp" %>
<div id="main">
    <article class="auction-item">
        <div><img src="/theviewtiful/resources/images/mille.jpg" />
            <div class="countdown-panel">
                <h5>LIVE BIDDING OPENING IN:</h5>
                <div class="row">
                	<div class="g1">00<br>DAYS</div>:
                	<div class="g1">18<br>HRS</div>:
                	<div class="g1">49<br>MIN</div>:
                	<div class="g1">30<br>SEC</div>
                </div>
            </div>
        </div>
        <section class="item-desc">
            <section>
                <h4>밀레</h4>
                <p>밀레그림</p>
            </section>
            <section>
                <h4>투자 시작 일자</h4>
                <p>2017.07.17 2:00PM</p>
            </section>
            <section>
                <h4>총 작품 금액 : 9,300,000,000원</h4>
                <p>작품 구매 단위 : 50,000원</p>
            </section>
	        <a href="item-detail" class="btn">구매하기</a>
        </section>
    </article>
<%-- 
    <c:forEach items="${itemList}" var="item">
    <article class="auction-item">
        <div><img src="${item.imageUrl}" />
            <div class="countdown-panel">
                <h5>LIVE BIDDING OPENING IN:</h5>
                <div>(카운트다운)</div>
            </div>
        </div>
        <section class="item-desc">
            <section>
                <h4>${item.artistName}</h4>
                <p>${item.artName}</p>
            </section>
            <section>
                <h4>투자 시작 일자</h4>
                <p>${item.investStartDt}</p>
            </section>
            <section>
                <h4>총 작품 금액 : ${item.totalAm}원</h4>
                <p>작품 구매 단위 : ${item.unitAm}원</p>
            </section>
        </section>
        <a href="item-purchase?id={작품아이디}" class="btn">구매하기</a>
    </article>
    </c:forEach>
     --%>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>