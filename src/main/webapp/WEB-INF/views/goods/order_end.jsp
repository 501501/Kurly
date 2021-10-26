<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>주문 완료</h2>
	
	<div>
		<button type="button">주문 상세보기</button>
	</div>
	<div>
		<button type="button" id="btn_home">쇼핑 계속하기</button>
	</div>
</body>

<script type="text/javascript">
	$("#btn_home").click(function(){
		location.href = "../"; 
	});
</script>
</html>