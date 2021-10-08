<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>
		공지사항
	</h2>
	<span>컬리의 새로운 소식들과 유용한 정보들을 한 곳에서 확인하세요.</span>
	
	<h2>고객센터</h2>
	<div>
		<ul class="pagediv">
			<li>
				<a href="/kurly/board/list">공지사항</a>
			</li>
			<li>
				<a href="/kurly/service/faq">자주하는 질문</a>
			</li>
			<li>
				<a href="/kurly/mypage/mypage_qna" class="control" data-member-id="${member.id}">1:1 문의</a>
			</li>
			<li>
				<a href="/kurly/mypage/bulk_order">대량주문 문의</a>
			</li>
			<li>
				<a href="/kurly/mypage/offer" class="control" data-member-id="${member.id}">상품 제안</a>
			</li>
			<li>
				<a href="/kurly/mypage/echo_packing" class="control" data-member-id="${member.id}">에코포장 피드백</a>
			</li>
		</ul>
	</div>
	
	<table>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회</th>
	</tr>

	<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.num}</td>
			<td><a href="./view?num=${dto.num}">${dto.title}</a></td>
			<td>${dto.writer}</td>
			<td>${dto.regDate}</td>
			<td>${dto.hits}</td>
		</tr>
	</c:forEach>	
	</table>
	
	<!-- paging -->
	<div class="pagediv">
		<a class="page-link" href="./list?kind=${pager.kind}&search=${pager.search}" aria-label="Previous">
			<span aria-hidden="true">&laquo;</span>
		</a> 
		
		<a class="page-link" href="./list?pn=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}" aria-label="Previous"> 
			<span aria-hidden="true">&lt;</span>
		</a>
		
		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
			<a class="page-link" href="./list?pn=${n}&kind=${pager.kind}&search=${pager.search}">${n}</a>
		</c:forEach>
		
		<a class="page-link" href="./list?pn=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
			<span aria-hidden="true">&gt;</span>
		</a>
		
		<a class="page-link" href="./list?pn=${pager.totalPage}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
			<span aria-hidden="true">&raquo;</span>
		</a>
		</div>
	
	<hr>
	<!-- search -->
	<form action="./list" method="get">
		검색어
		<input type="checkbox" value="name" name="kind"> 이름
		<input type="checkbox" value="title" name="kind"> 제목
		<input type="checkbox" value="contents" name="kind"> 내용
		
		<input type="text" name="search">
		<button type="submit">검색</button>
	</form>
	
	<script type="text/javascript" src="../resources/js/notice.js"></script>
</body>
</html>