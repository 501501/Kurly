<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
      table {
        width: 100%;
      }
      table, th, td {
        border: 1px solid #bcbcbc;
      }
    </style>
</head>
<body>
<h2>상품리스트 (테스트용)</h2>

<table>
	<thead>
		<tr>
			<th>상품번호</th>
			<th>상품이름</th>
			<th>상품가격</th>
			<th>상품설명</th>
		</tr>
	</thead>
	<tbody><br>
		<c:forEach var="good" items="${goodsList}">
			<tr align="center">
				<td style="width:10px;">${good.product_id}</td>
				<td style="width:10px;"><a href="./goods_view?product_id=${good.product_id}">${good.product_name}</a></td>
				<td style="width:10px;">${good.price}</td>
				<td style="width:100px;">${good.description}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>	
</body>
</html>