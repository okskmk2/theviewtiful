<div>
    <h1>자주하는 질문</h1>
    <div>
        <nav id="faq-tab">
            <button>이용방법</button>
            <button>결제/환불</button>
            <button>로그인/계정</button>
            <button>캐시/포인트</button>
            <button>오류</button>
            <button>활용 도움말</button>
        </nav>
        <div class="accordion-container">
            <div id="tab-usehow">
                (jstl c:foreach start)
                <section class="accordion-item">
                    <h2>${질문}</h2>
                    <p>${답}</p>
                </section>
                (jstl c:foreach end)
            </div>
            <div id="tab-purchase">
                (jstl c:foreach start)
                <section class="accordion-item">
                    <h2>${질문}</h2>
                    <p>${답}</p>
                </section>
                (jstl c:foreach end)
            </div>
            <div id="tab-account">
                (jstl c:foreach start)
                <section class="accordion-item">
                    <h2>${질문}</h2>
                    <p>${답}</p>
                </section>
                (jstl c:foreach end)
            </div>
            <div id="tab-point">
                (jstl c:foreach start)
                <section class="accordion-item">
                    <h2>${질문}</h2>
                    <p>${답}</p>
                </section>
                (jstl c:foreach end)
            </div>
            <div id="tab-error">
                (jstl c:foreach start)
                <section class="accordion-item">
                    <h2>${질문}</h2>
                    <p>${답}</p>
                </section>
                (jstl c:foreach end)
            </div>
            <div id="tab-manual">
                (jstl c:foreach start)
                <section class="accordion-item">
                    <h2>${질문}</h2>
                    <p>${답}</p>
                </section>
                (jstl c:foreach end)
            </div>
        </div>
        <div class="pagination">
            (jstl c:foreach start)
            <a href="#?page=${index}">${index}</a> (jstl c:foreach end)
        </div>
        <div>
            <p>원하시는 답변을 찾지 못하셨다면, 문의하기에 문의하여주세요.</p><a href="contact.html">문의하기</a>
        </div>
    </div>
</div>
<script>
    var acc = document.getElementsByClassName("accordion-item");
    var i;

    for (i = 0; i < acc.length; i++) {
        acc[i].onclick = function() {
            this.classList.toggle("active");
            if (this.style.display === "block") {
                this.style.display = "none";
            } else {
                this.style.display = "block";
            }
        }
    }
</script>