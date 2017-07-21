﻿<div id="item-detail-container">
    <div>
        <div id="img-container">
            <img />
        </div>
        <div id="item-controller">
            <div>${판매상태:판매예정, 판매 중, 판매 종료}</div>
            <a href="addfavitem.do?id=''">알림받기</a>
            <div id="item-chart-container">
                <canvas id="item-chart">
                    (원그래프 - js로 구현)
                </canvas>
                <div>
                    <p>
                        총 판매금액 ${총판매금액}원<br>
                    </p>
                    <p>판매 단위 ${판매단위}원</p>
                </div>
            </div>
            <div id="purchase-item-panel">
                <div>
                    <span id="cnt"></span>개 구매
                </div>
                <div>(숫자선택)</div>
                <a href="purchase.do?id=''&cnt=''">구매하기</a>
            </div>
        </div>
        <div>
            <img alt="${제품소개제목}" />
        </div>
        <div>
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
        <div>
            <h2>전시공간</h2>
            <p>${장소명칭(장소주소)</p>
            <img alt="장소대표이미지" />
            <div>(네이버 api 맵)</div>
        </div>
        <div></div>
    </div>
</div>