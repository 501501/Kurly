<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 리뷰 작성 후 내용 select -->

<!-- 이미지 -->
<div id="after${dto.num}">
	<span>
		<c:forEach items="${dto.files}" var="f">
			<c:if test="${not empty f.oriName}">
				<img src="./review_down?fileName=${f.fileName}">
			</c:if>
		</c:forEach>
	</span>
	
	<br>
	
	<!-- 글 내용 -->
	<span>${dto.contents}</span>
	
	<!-- 삭제, 수정 버튼 -->
	<div>
		<!--  도움 버튼 (수정 예정) -->
		<button>도움이 돼요 0</button>
		<a class="del_btn" data-review-num="${dto.num}">삭제하기</a>
		<a class="upd_btn" data-review-num="${dto.num}">수정하기</a>
	</div>
</div>

<script type="text/javascript">
/* 삭제 버튼 클릭 */
$(".del_btn").click(function() {
	let num = (this).getAttribute("data-review-num");
	//console.log(num);
	check = confirm("작성한 후기를 정말로 삭제하시겠습니까?\n삭제 시 복구가 불가능합니다.");
	
	// 확인 클릭 시 
	if(check) {
		location.href = "./mypage_review/delete?num="+num;
	}
});

/* 수정 버튼 클릭 */
$(".upd_btn").click(function() {
	let num = (this).getAttribute("data-review-num");
	location.href = "./mypage_review/update?num="+num;
});
</script>