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
	<h1>자주하는 질문</h1>
	<table id="tbl">
		<tr>
			<th>번호</th>
			<th>카테고리</th>
			<th>제목</th>
		</tr>
		<c:forEach items="${faq}" var="dto">
			<tr>
				<td>${dto.num}</td>
				<td>${dto.category}</td>
				<td><span class="title" data-faq-num="${dto.num}">${dto.title}</span></td>
			</tr>
			<tr id="selectResult${dto.num}">
			</tr>
		</c:forEach>
	</table>
	<div>
		
	</div>
	
	<script type="text/javascript" src="../resources/js/faq.js"></script>
</body>
</html>