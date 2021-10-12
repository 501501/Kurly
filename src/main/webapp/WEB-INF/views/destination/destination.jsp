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
	<h2>배송지 관리</h2>
	<span>배송지에 따라 상품 정보가 달라질 수 있습니다.</span>
	
	<button class="btn" id="newAddressAdd">새 배송지 추가</button>
	
	<!-- 부모창에서 전달할 값 (hidden) -->	
	<input name="address_post" id="address_post" type="text" hidden="hidden" />
	<input name="addr2" id="addr2" type="text" readonly="readonly" hidden="hidden" />

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
			<label class="skin_checkbox" data-delivery-post="${dto.address_post}">
				<input type="radio" name="check_type"
					<c:if test="${dto.check_type eq 'y'}">checked="checked"</c:if>>
			</label>
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
		<td><button class="modify" data-delivery-post="${dto.address_post}">수정</button></td>
	</tr>
	</c:forEach>
	</table>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
	<script type="text/javascript" src="../../resources/js/destination.js"></script>

</body>
</html>