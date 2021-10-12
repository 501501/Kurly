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
	<h2>배송지 수정</h2>
	<form id="frm" action="./modify" method="post">
		<!-- 기본 배송지 여부 -->
		<c:if test="${dto.default_type eq 'y'}">
			<div>(기본 배송지)</div>
		</c:if>
		
		<!-- 도로명 주소 -->
		<div id="roadAdd">${roadAdd}</div>
		
		<!-- 상세 주소 -->
		<input type="text" id="detailAdd" value="${detailAdd}">
		
		<!-- 전체 주소 -->
		<input type="text" id="fullAdd" name="address_loca" hidden="hidden">
	
		<div>
			<label for="receiverName">받으실 분</label>
			<input type="text" id="receiverName" name="name" placeholder="이름을 입력해주세요" value="${dto.name}">
		</div>
		
		<div>
			<label for="receiverPhone">휴대폰</label>
			<input type="text" id="receiverPhone" placeholder="번호를 입력해주세요" name="phone_num" value="${dto.phone_num}">
		</div>
		
		<!-- 기본 배송지가 아닌 경우 기본 배송지 설정 체크박스 -->
		<c:if test="${dto.default_type eq 'n'}">
			<div>
				<input type="checkbox" id="isDefaultHidden">기본 배송지로 저장
			</div>
		</c:if>
		
		<!-- 저장 버튼 -->
		<div>
			<button type="button" id="save">저장</button>
		</div>
		
		<!-- 기본 배송지가 아닌 경우 삭제 버튼 -->
		<c:if test="${dto.default_type eq 'n'}">
			<div>
				<button type="button" id="del">삭제</button>
			</div>
		</c:if>
		
		<!-- hidden -->
		<input type="text" name="id" value="${dto.id}" hidden="hidden">
		<input type="text" id="post" name="address_post" value="${dto.address_post}" hidden="hidden">
		<input type="text" name="shipping_type" value="${dto.shipping_type}" hidden="hidden">
		<input type="text" id="isDefault" name="default_type" value="${dto.default_type}" hidden="hidden">
		<input type="text" id="isCheck" name="check_type" value="${dto.check_type}" hidden="hidden">		
	</form>
	<script type="text/javascript" src="../../resources/js/destination_modify.js"></script>
</body>
</html>