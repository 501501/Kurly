<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>에코포장 피드백</h1>
	<c:set var="rownum" value="${fn:length(list)}"></c:set>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>분류</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${list}" var="dto" begin="0" end="${rownum}" varStatus="r">
			<tr class="select" data-list-num="${dto.num}">
				<td>${rownum-r.index}</td>
				<td>[${dto.category}]</td>
				<td>${dto.title}</td>
				<td>작성자 ID</td>
				<td>${dto.regDate}</td>
			</tr>
			<tr id="selectResult${dto.num}" colspan="5"></tr>
			</c:forEach>
		</tbody>
	</table>

	<button id="write_btn">글쓰기</button>
	
	<script type="text/javascript" src="../resources/js/echo.js"></script>
</body>
</html>