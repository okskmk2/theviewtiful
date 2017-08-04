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
    <h1>구매하신 상품의 결제가 예약되었습니다.</h1>
    <h2>입금기한 내에 상품이 판매종료, 품절될 경우 예약이 자동으로 취소됩니다.</h2>
    <table>
        <tr>
            <th>입금금액</th>
            <td style="color:red">${입금금액}원</td>
        </tr>
        <tr>
            <th>입금은행</th>
            <td>${입금은행}<a>인터넷뱅킹 바로가기<span>&gt;</span></a></td>
        </tr>
        <tr>
            <th>계좌번호</th>
            <td>${계좌번호} <span>(주)더뷰티풀</span></td>
        </tr>
        <tr>
            <th>입금기한</th>
            <td>${입금기한}까지</td>
        </tr>
    </table>
    <table>
        <tr>
            <th>주문금액</th>
            <th>배송비</th>
            <th>할인금액</th>
            <th>총 결제 금액</th>
        </tr>
        <tr>
            <td><span>${주문금액}</span>원</td>
            <td>N/A</td>
            <td>
                <div>${작품명}</div>
                <span>${할인금액}</span>원</td>
            <td>
                <div><span>포인트 사용</span><span>-${포인트사용액}원</span></div>
                <div><span>무통장입금</span><span><span>${입금예정액}</span>원</span>
                </div>
            </td>
        </tr>
    </table>
    <a></a>
    <a></a>
</div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>
