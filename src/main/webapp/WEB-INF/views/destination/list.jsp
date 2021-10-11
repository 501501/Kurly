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
	<h2>배송지 관리</h2>
	<span>배송지에 따라 상품 정보가 달라질 수 있습니다.</span>
	<table>
	<tr>
		<td>선택</td>
		<td>주소</td>
		<td>받으실 분</td>
		<td>연락처</td>
		<td>배송유형</td>
		<td>수정</td>
	</tr>
	
	<c:forEach items="${list}" var="dto">
	<tr>
		<td>
			<input type="radio"
				<c:if test="${dto.check_type eq 'y'}">checked="checked"</c:if>>
		</td>
		<td>
			<c:if test="${dto.default_type eq 'y'}">
				<span>(기본 배송지)</span>
			</c:if>
			${dto.address_loca}
		</td>
		<td>${dto.name}</td>
		<td>${dto.phone_num}</td>
		<td>${dto.shipping_type}</td>
		<td><button>수정</button></td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>