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
	<h1>대량주문 문의</h1>
	<form id="frm" action="./bulk_order" method="post">
		<label for="name"><h3>신청하는 분 이름</h3></label> 
		<input type="text" id="name" name="name" placeholder="신청하는 분 이름을 입력해주세요."> 
		
		<label for="phone"><h3>신청하는 분 연락처</h3></label> 
		<input type="text" id="phone" name="phone" placeholder="'-'없이 숫자만"> 
		
		<label for="email"><h3>신청하는 분 이메일</h3></label> 
		<input type="email" id="email" name="email" placeholder="kurly@example.com">
		<div>이메일 주소를 작성해주시면 원활한 소통이 가능합니다.</div>
		
		<label for="pickupDate"><h3>수령 희망일</h3></label> 
		<input type="date" id="pickupDate" name="pickupDate">
		<div>
		수령 희망일이 명확하지 않은 경우, 가장 빠른 예상 일자를 선택바랍니다.<br>
		대량 주문은 모두 택배로 배송되며, 희망 수령일은 화/수/목/금/토요일 중 선택 가능합니다.(일/월요일 제외)
		</div>
		
		<label for="address"><h3>배송지</h3></label>
		<input type="radio" name="address" checked="checked" value="several">여러 곳으로 수령
		<input type="radio" name="address" value="one">한 곳으로 수령
		
		<label for="inquiry"><h3>문의 사항</h3></label>
		<textarea rows="10" cols="70" name="inquiry"></textarea>
		<div>원활한 상담을 위해 상품명, 수량, 상담전화 희망 시간 등을 적어주세요.</div>
		
		<h3>주의사항</h3>
		<div>아래 경우 배송이 불가합니다.</div>
		<p>
			-제주도 및 도서산간, 상품에 따른 배송 이외지역의 경우 <br>
			-수령 배송지가 명확하지 않을 경우
		</p>
		
		<h2>약관 동의</h2>
		<hr>
		<input type="checkbox" class="vi"> 개인정보 수집·이용 동의(필수)
		<span>약관보기></span>
		
		<br>
		<br>
		<div>
			<button type="button" id="btn">문의하기</button>
		</div>
	</form>
	<script type="text/javascript" src="../resources/js/bulk.js"></script>
</body>
</html>