<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<h1>적립금</h1>
	
	<table>
		<thead>
			<tr>
				<td>날짜</td>
				<td>내용</td>
				<td>유효기간</td>
				<td>금액</td>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.reg_date}</td>
					<td>${list.memo}</td>
					<td>${list.exp_date}</td>
					<td><span>+</span>${list.emoney}</td>			
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>