<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h2>배송지 관리</h2>
	<span style="color:gray; font-size:small;">&nbsp; 배송지에 따라 상품 정보가 달라질 수 있습니다.</span>
	
	<table>
		<button type="button" id="new_Address" class="" onclick="address_searching()">+ 새 배송지 추가</button>
		<input type="text" id="post" onFocus="eventFocus();"/> <!-- style="opacity:100; border:0 solid black; width:100px; height:100px;" -->
		<input type="text" id="location" /> <!-- style="opacity:100; border:0 solid black; width:1px; height:1px;" -->
		<thead>
			<tr>
				<th style="font-size:small; width:100;">선택</th>
				<th style="font-size:small;" >기본배송지여부</th>
				<th style="font-size:small;">주소</th>
				<th style="font-size:small;">받으실 분</th>
				<th style="font-size:small;">연락처</th>
				<th style="font-size:small;">배송유형</th>
				<th style="font-size:small;">수정</th>		
			</tr>	
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>
						<input type="checkbox" id="select_Address" class="" value=1 />
					</td>
					<td style="font-size:small; text-align:center;">
						<c:if test="${list.basic_destination eq 'b'}">
							^기본배송지^ <input type="hidden" value="${list.basic_destination}" class="basic_BorN"/>
						</c:if>
						<c:if test="${list.basic_destination ne 'b'}">
							X	<input type="hidden" value="${list.basic_destination}" class="basic_BorN"/>
						</c:if>
					</td>
					<td style="font-size:small; text-align:center;">
						<span id="loca">${list.address_location}</span>
					</td>
					<td style="font-size:small; text-align:center;">${list.receiver_name}</td>
					<td style="font-size:small;">${list.receiver_phone}</td>
					<td style="text-align:center;">${list.delivery_type}</td>
					<td>
						<button type="button" id="btn_Update" class="" onclick="updatePopup()">수정하기</button>
					</td>
				</tr>
			</c:forEach>	
		</tbody>	
	</table>
	
	<input type="text" value="${param.id}" id="id" />



<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
<script type="text/javascript" src="../resources/js/destination_address.js"></script>
<script type="text/javascript" src="../resources/js/destination.js"></script>
<script type="text/javascript">
	
	function eventFocus(){
		$('#post').blur();
		let newDestination = window.open('./destination/form'
				, '신규배송지', 'width=700px,height=800px')		
	}
	
</script>
</body>
</html>