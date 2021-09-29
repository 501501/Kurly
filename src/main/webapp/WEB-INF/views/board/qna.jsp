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
	<h1>1:1 문의</h1>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>카테고리</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${list}" var="dto">
			<tr class="select" data-list-num="${dto.num}">
				<td>${dto.num}</td>
				<td>${dto.category}</td>
				<td><a href="./select?num=${dto.num}">${dto.title}</a></td>
				<td>작성자 ID</td>
				<td>${dto.regDate}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

	<button id="write_btn">글쓰기</button>
	
	<script type="text/javascript" src="../resources/js/qna.js"></script>
</body>
</html>