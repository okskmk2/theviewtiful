<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include.jsp" %>
</head>
<body onresize="resize()">
<%@include file="../include/nav-include.jsp" %>
<div id="auction-list">
    (jstl - c:foreach start)
    <article class="auction-item">
        <div><img src="${itemimage}" />
            <div class="countdown-panel">
                <h5>LIVE BIDDING OPENING IN:</h5>
                <div>(카운트다운)</div>
            </div>
        </div>
        <section class="item-desc">
            <section>
                <h4>${아티스트 이름}</h4>
                <p>${작품명}</p>
            </section>
            <section>
                <h4>투자 시작 날짜</h4>
                <p>${투자 시작 날짜}</p>
            </section>
            <section>
                <h4>총 작품 금액 : ${총작품금액}원</h4>
                <p>작품 구매 단위 : ${작품구매단위}원</p>
            </section>
        </section>
        <a href="item-purchase.do?id=${작품아이디}">구매하기</a>
    </article>
    (jstl - c:foreach end)
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>