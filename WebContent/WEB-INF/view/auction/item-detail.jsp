<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<title>홈페이지</title>
<%@include file="../include/head-include"%>
<link rel="stylesheet" href="/theviewtiful/resources/css/auction.css">
<script src="/theviewtiful/resources/vendor/chartjs/chartjs260.js"></script>
<script src="/theviewtiful/resources/vendor/chartjs/utils.js"></script>
<script src="/theviewtiful/resources/js/auction-item-detail.js"></script>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<div id="main">
		<div id="item-detail-container">
			<div class="row">
				<div id="img-container">
					<img src="/theviewtiful/resources/images/mille.jpg" />
				</div>
				<div id="item-controller">
					<div>판매상태:판매예정, 판매 중, 판매 종료</div>
					<a href="addfavitem.do?id=''" class="btn">알림받기</a>
					<div id="item-chart-container">
						<canvas id="item-chart"></canvas>
						<div>
							<p>총 판매금액 : 280,000,000원</p>
							<p>판매단위 : 50,000원</p>
						</div>
					</div>
					<div id="purchase-item-container">
						<input type="number" class="g3" min="1"> <a
							href="purchase.do?id=''&cnt=''" class="btn g1">구매하기</a>
					</div>
				</div>
			</div>
			<hr>
			<div id="item-detail-desc">
				<img src="/theviewtiful/resources/images/mille.jpg" />
				<div class="row">
					<h2>제공혜택</h2>
					<table>
						<tr>
							<th>#</th>
							<th>혜택</th>
							<th>장소</th>
						</tr>
						<!-- 	(jstl c:foreach start) -->
						<tr>
							<td>${index}</td>
							<td>${item.benefit}</td>
							<td>${item.place}</td>
						</tr>
						<!-- 			(jstl c:foreach end) -->
					</table>
				</div>
				<div class="row">
					<h2>전시공간</h2>
					<p>장소명칭(장소주소)</p>
					<img alt="장소대표이미지" id="place"/>
					<div>(네이버 api 맵)</div>
				</div>
				<div></div>
			</div>
		</div>
	</div>
	<%@include file="../include/footer.jsp"%>
</body>
</html>