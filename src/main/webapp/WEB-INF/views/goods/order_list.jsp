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
<h2>주문 내역</h2>
<hr>

<ul>
	<c:forEach items="${ar}" var="orderNum" varStatus="status">
		<input type="text" value="${orderNum}" hidden="hidden" class="orderNums" id="orderNum${status.index}">
		<li id="selectResult${orderNum}"></li>	
	</c:forEach>
</ul>

<script type="text/javascript">
	let length = $(".orderNums").length;
	
	for (i = 0; i < length; i++) {
		// 주문번호
		let orderNum = $("#orderNum"+i).val();
		console.log(orderNum);
		
		$.get('../ajax/order_list?orderNum=' + orderNum, function(data) {
			data = data.trim();
			//console.log(data);
			$("#selectResult" + orderNum).html(data);
		})
	}
</script>
</body>
</html>