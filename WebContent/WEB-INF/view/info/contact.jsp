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
    <h1>문의하기</h1>
    <p>*표시되어 있는 항목은 필수 입력항목입니다.</p>
    <form id="contact-form" onsubmit="return chkvaild()" action="">
        <table>
            <tr>
                <th>* 문의유형</th>
                <td>
                    <input name="contact-type" type="radio" value="usehow" checked><span>이용방법</span>
                    <input name="contact-type" type="radio" value="error-report"><span>오류신고</span>
                    <input name="contact-type" type="radio" value="purchase"><span>결제</span>
                    <input name="contact-type" type="radio" value="proposal"><span>제안</span>
                    <input name="contact-type" type="radio" value="etc"><span>기타</span>
                </td>
            </tr>
            <tr>
                <th>* 내용</th>
                <td><textarea cols="60" rows="7"></textarea>
                    <div><span id="textcnt"></span><span>/500</span></div>
                </td>
            </tr>
            <tr>
                <th>파일첨부</th>
                <td>
                    <div>
                        <label for="files">첨부하기</label>
                        <input id="files" type="file" style="visibility:hidden;">
                    </div>
                    <p>* 파일 형식은 이미지형식이며 파일당 2MB 첨부가능합니다.</p>
                </td>
            </tr>
            <tr>
                <th>* 답변방법</th>
                <td>
                    <input id="email" type="radio" name="answer-type" value="email" onchange="changetab(event)" checked="checked"><span>이메일</span>
                    <input id="mobile" type="radio" name="answer-type" value="mobile" onchange="changetab(event)"><span>전화</span>
                    <div style="display: block" id="email-container">
                        <input type="email" name="email">
                    </div>
                    <div style="display: none" id="mobile-container">
                        <div id="mobile-inputset">
                            <input id="mobile-1"> - <input id="mobile-2"> - <input id="mobile-3">
                        </div>
                        <div>
                            <span>연락 가능한 시간</span>
                            <select>
                                <option>항상</option>
                                <option>오전(12시 이전)</option>
                                <option>오후(12~18시)</option>
                                <option>저녁(18~19시)</option>
                            </select>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <input type="submit" value="문의하기">
    </form>
</div>
<script>
    function chkvaild() {
        var el_text = document.querySelector("textarea");
        if (!el_text.value) {
            alert("내용이 없습니다.");
            return false;
        }
        if (document.getElementById("email").checked) {
            if (!document.querySelector("input[type=email]").value) {
                alert("이메일을 적어주세요.");
                return false;;
            }
        } else {
            var v1mo = document.getElementById("mobile-1").value;
            var v2mo = document.getElementById("mobile-2").value;
            var v3mo = document.getElementById("mobile-3").value;
            if (!v1mo || !v2mo || !v3mo) {
                alert("연락처를 적어주세요.");
                return false;;
            }
        }
        return true;
    }

    function changetab(event) {
        var id = event.target.id;
        if (id == "mobile") {
            document.getElementById("mobile-container").style.display = "block";
            document.getElementById("email-container").style.display = "none";
            document.getElementById("email").setAttribute("checked", "false");
            document.getElementById("mobile").setAttribute("checked", "true");
        } else {
            document.getElementById("email-container").style.display = "block";
            document.getElementById("mobile-container").style.display = "none";
            document.getElementById("mobile").setAttribute("checked", "false");
            document.getElementById("email").setAttribute("checked", "true");
        }
    }
</script>
</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>