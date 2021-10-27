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
	<div>문의하실 주문 번호를 선택하세요.</div>
	<c:forEach items="${orderNums}" var="orderNum" varStatus="status">
		<input hidden="hidden" class="orderNums" id="orderNum${status.index}" value="${orderNum}">
	</c:forEach>
	
	<table>
		<tr>
			<td>주문번호</td>
			<td>주문일자</td>
			<td>상품명</td>
			<td>수량</td>
			<td>주문금액</td>
			<td>선택</td>
		</tr>

		<c:forEach items="${orderNums}" var="orderNum">
			<tbody id="selectResult${orderNum}"></tbody>
		</c:forEach>
	</table>
</body>

<script type="text/javascript">
	let len = $(".orderNums").length;
	
	for(i=0; i<len; i++) {
		let orderNum = $("#orderNum"+i).val();
		
		$.ajax({
			url: "../ajax/order_num",
			type: "GET",
			data: {orderNum : orderNum},
			async: false, 
			success : function(data){
				data = data.trim();
				$("#selectResult"+orderNum).html(data);
			}
		});
	}
	
	$(".ck").click(function(){
		let orderNum = (this).getAttribute('data-order-num');
		opener.document.getElementById("orderNum").value = orderNum;
		self.close();
	})
</script>
</html>