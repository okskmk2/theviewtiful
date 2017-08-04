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
<hgroup>
    <h1>주문/결제</h1>
    <h3>주문하실 작품을 결제해 주세요.</h3>
</hgroup>
<form method="post" action="item-purchase.do">
    <h4>주문상품</h4>
    <table>
        <tr>
            <th>상품/옵션정보</th>
            <th>상품금액</th>
        </tr>
        <tr>
            <td>
                <div>
                    <img/>
                    <h1>${작품명}</h1>
                </div>
                <span>${작품명} 소유권(${소유권금액}</span>
                <span>${상품단가}원</span><span>${구매수량}</span><span>(js 결과)원</span>
            </td>
            <td><span>${상품금액}원</span></td>
        </tr>
    </table>
    <a href="item-detail.do?id=''">상품 수정하기</a>
    <h4>구매자 정보</h4>
    <table>
        <tr>
            <th>주문자</th>
            <td>${주문자이름}</td>
        </tr>
        <tr>
            <th>휴대폰</th>
            <td>${주문자휴대폰번호}</td>
        </tr>
        <tr>
            <th>이메일</th>
            <td>${주문자이메일}</td>
        </tr>
    </table>
    <h4>결제 정보</h4>
    <table>
        <tr>
            <th>주문금액</th>
            <th>배송비(추가요금)</th>
            <th>할인금액</th>
            <th>결제 예정금액</th>
        </tr>
        <tr>
            <td>${주문금액}원</td>
            <td>${배송비(추가요금)}원</td>
            <td>${할인금액}원</td>
            <td>${결제 예정금액}원</td>
        </tr>
    </table>
    <h4>결제 방법</h4>
    <table>
        <tr>
            <td><input type="checkbox">무통장입금</td>
        </tr>
        <tr>
            <td>
                <div>
                    <h4>입금은행</h4><select><option>기업은행</option><option>농협은행</option><option>하나은행</option></select>
                </div>
                <div>
                    <h4>입금기한</h4> ${입금기한}</div>
                <div>
                    <h4>무통장입금 이용안내</h4>
                    <ul>
                        <li>입금 시 주문자 이름과 상관없이 금액만 일치하면 정상 입금처리 됩니다.</li>
                        <li>반드시 입금기한 내에 정확한 결제금액을 입금해주세요.</li>
                        <li>입금 기한이 지나면 주문은 자동취소 되므로 다시 주문해주세요.</li>
                        <li>자동화 기기에서는 카드를 통해 이체해 주시기 바랍니다.<br>(일부 기기에서는 현금, 통장 이체 제한됨)</li>
                        <li>매진, 판매 종료로 인해 주문취소가 될 수 있으며 취소 시 안내문자가 발송됩니다.</li>
                        <li>무통장입금 결제를 취소하실 경우 전체 취소 후 다시 주문해 주세요.</li>
                    </ul>
                </div>
                <div>
                    <h4>현금영수증</h4>
                    <h5>무통장 입금 완료 후 2일 이내 발급</h5>
                    <input name="현금영수증" type="radio" value="개인소득공제용"><input name="현금영수증" type="radio" value="사업자증빙용"><input name="현금영수증" type="radio" value="신청안함">
                    <span>휴대폰번호</span><input><input><input>
                    <p>신청 안함을 선택하신 경우에도 현금영수증이 자진 발급됩니다.</p>
                </div>
            </td>
        </tr>
    </table>
    <input type="submit" value="결제하기">
</form>
</div>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>
