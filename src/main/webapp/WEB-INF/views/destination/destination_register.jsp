<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>샛별배송 지역입니다.</h2>
	<div>
		<span>매일 아침, 문 앞까지 신선함을 전해드려요</span>
	</div>
	
	<form id="frm" method="post" action="./form">
		<div>
			<input type="text" id="roadAddr" name="roadAddr" readonly="readonly" />
			<button type="button" id="btn_searchAgain">재검색</button>
		</div>
		<div>
			<input type="text" id="restAddr" name="restAddr" placeholder="나머지 주소를 입력해주세요" />
		</div>
		<div>
			<input type="text" id="fullAddr" name="address_loca" hidden="hidden" />
			<input type="text" id="postAddr" name="address_post" hidden="hidden" />
			<input type="text" id="id" name="id" value="${member.id}" hidden="hidden" />
 		</div>
		
		<div>
			<input type="text" id="isDefault" name="default_type" hidden="hidden">
			<input type="checkbox" id="isDefaultHidden"> 기본 배송지로 저장
		</div>
		
		<!-- hidden value -->
		<div>
			<input type="text" value="" name="name" id="name" hidden="hidden">
			<input type="text" value="" name="phone_num" id="phone_num" hidden="hidden">
			<input type="text" value="배송유형" name="shipping_type" id="shipping_type" hidden="hidden">
			<input type="text" value="n" name="check_type" id="check_type" hidden="hidden">
		</div>
		
		<div>
			<button type="button" id="btn_storage">저장</button>
		</div>
	</form>
	
	<div>
		<span>샛별배송 지역 중 배송불가 장소 안내</span>
		<br>
		<span>관공서/학교/병원/시장/공단지역/산간지역/백화점 등</span>
	</div>
	
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="../../resources/js/destination_register.js"></script>
</body>
</html>