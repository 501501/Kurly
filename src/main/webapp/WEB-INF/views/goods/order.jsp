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
	<h1>주문서 페이지입니다</h1>
	
	<div>
		<div>주문상품</div>
		<hr>
		<div id="ordProducts" style="text-align:center;"></div>
		<hr>		
	</div>
	
	<br><br>
	<div>
	
		<div>주문자 정보</div>
		<hr>
		<table>
			<tr>
				<td>보내는 분</td>
				<td style="text-align:center;">${member.name}</td> 
			</tr>
			
			<tr>
				<td>휴대폰</td>
				<td>${member.phone_num}</td>
			</tr>
			
			<tr>
				<td>이메일</td>
				<td>${member.email}</td>
			</tr>
		</table>
	</div>
	
	<br><br>
	
	<div>
		<div>배송 정보</div>
		<hr>
		<table>
			<tr>
				<td>배송지</td>
				<td>${destination.address_loca}</td>
				<input type="hidden" id="addrPost" value="${destination.address_post}" />
			</tr>
			
			<tr>
				<td>상세정보</td>
				<td>${member.name}, ${member.phone_num}</td>
			</tr>
		</table>
	</div>

	<br><br>

	<div>
		<div>쿠폰 / 적립금</div>
		<hr>
	</div>

	<br><br>
	
	<div>
		<div>결제 수단</div>
		<hr>
	</div>
	
	<br><br>
	
	<div>
		<div>개인정보 수집/제공</div>
		<hr>
	</div>
	
	<div>
		<button type="button" style="margin:auto; display:block">결제하기</button>
	</div>


<script type="text/javascript">
	var arr = new Array();

	<c:forEach var="goods" items="${cartList}" varStatus="i">
		arr.push({
			name:"${goods.product_name}"
		});
	</c:forEach>
		
	var firstItem = arr[0].name;
	var length = arr.length;
		$('#ordProducts').html(firstItem + '외 '+(length-1)+'개상품을 주문합니다.');
</script>
</body>
</html>