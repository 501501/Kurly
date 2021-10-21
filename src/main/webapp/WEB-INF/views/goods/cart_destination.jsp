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
	<h1>장바구니 배송지변경 팝업</h1>
	<span>배송지에 따라 상품 정보가 달라질 수 있습니다.</span>

	<table>
		<thead>
			<tr>
				<td>선택</td>
				<td>배송 정보</td>
				<td>수정</td>				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="dto">
				<tr>
					<td>
						<label class="skin_checkbox" data-delivery-post="${dto.address_post}">
							<input type="radio" name="check_type" id="changeCheck"
							<c:if test="${dto.check_type eq 'y'}">checked="checked"</c:if>>
						</label>
					</td>			
					<td>
						<c:if test="${dto.default_type eq 'y'}">
							<span>(기본 배송지)</span>
						</c:if>
						${dto.address_loca}
					</td>				
					<td>
						<c:if test="${dto.shipping_type eq 'direct'}">샛별배송</c:if>
						<c:if test="${dto.shipping_type eq 'indirect'}">택배배송</c:if>
					</td>
					<td><button class="modify" data-delivery-post="${dto.address_post}">수정</button></td>				
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<button class="btn" id="newAddressAdd">새 배송지 추가</button>
	
	<!-- 부모창에서 전달할 값 (hidden) -->	
	<input name="address_post" id="address_post" type="text" hidden="hidden"/>
	<input name="addr2" id="addr2" type="text" hidden="hidden"/>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
	<script type="text/javascript" src="../../resources/js/cart_destination.js"></script>
	
</body>
</html>