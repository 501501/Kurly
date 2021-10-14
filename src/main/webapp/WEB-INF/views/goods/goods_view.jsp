<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>Goods_view Page</h1>
	
	<div>${goods.product_name}</div>
	<div>
		<label for="amount">구매 수량</label>
		<input type="number" name="amount" id="goodsAmount" required value="1" />
	</div>
	<a href="./goods_cart/insert?product_id=${goods.product_id}" id="cart">장바구니 추가</a>
	

<script type="text/javascript">
$('#cart').click(function(){
	var _href = $(this).attr('href');
	$(this).attr('href', _href+'&amount='+$('#goodsAmount').val());
});
</script>
</body>
</html>