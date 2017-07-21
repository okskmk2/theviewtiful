<div>
	<h2>공지사항</h2>
	<div>
		<a>전체</a><a>공지</a><a>이벤트</a>
	</div>
	<table>
	<tr><th>번호</th><th>제목</th><th>작성일</th></tr>
		<!-- (jstl c:foreach max 15 start) -->
		<tr></tr>
		<!-- (jstl c:foreach end) -->
	</table>
	<div></div>
	<div>
		<a>&lt;&lt;</a><a>&lt;</a>
		<!--페이지네이션(15개 이하면 배치하지 않는다.)  -->
		(jstl c:foreach max 5 start) 
		<a></a> (jstl c:foreach end) 
		<a>&gt;</a><a>&gt;&gt;</a>
	</div>
</div>