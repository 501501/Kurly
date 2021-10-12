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
	<a href="./goods_cart/insert?product_id=${goods.product_id}">장바구니 추가</a>
	

</body>
</html>