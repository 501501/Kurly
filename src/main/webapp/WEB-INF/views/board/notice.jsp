<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>공지사항</h1>
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
</body>
</html>