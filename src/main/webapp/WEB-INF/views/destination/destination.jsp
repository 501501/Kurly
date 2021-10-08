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
		<input type="text" id="post" style="opacity:100; border:0 solid black; width:1px; height:1px;"/>
		<input type="text" id="location" style="opacity:100; border:0 solid black; width:1px; height:1px;""/>
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
							^기본배송지^
						</c:if>
						<c:if test="${list.basic_destination ne 'b'}">
							X
						</c:if>
					</td>
					<td style="font-size:small; text-align:center;">${list.address_location}</td>
					<td style="font-size:small; text-align:center;">${list.receiver_name}</td>
					<td style="font-size:small;">${list.receiver_phone}</td>
					<td style="text-align:center;">${list.delivery_type}</td>
					<td>
						<button type="button" id="btn_Update" class="">수정하기</button>
					</td>
				</tr>
				
		
			</c:forEach>	
		</tbody>	
	</table>
				
	<input type="text" value="${param.id}" id="id" />



<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
<script type="text/javascript">

		function address_searching(){
			
			new daum.Postcode({
		             oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		 
		                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
		                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
		 
		                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                    extraRoadAddr += data.bname;
		                }
		                // 건물명이 있고, 공동주택일 경우 추가한다.
		                if(data.buildingName !== '' && data.apartment === 'Y'){
		                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                }
		                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                if(extraRoadAddr !== ''){
		                    extraRoadAddr = ' (' + extraRoadAddr + ')';
		                }
		                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
		                if(fullRoadAddr !== ''){
		                    fullRoadAddr += extraRoadAddr;
		                }
		 
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                console.log(data.zonecode);
		                console.log(fullRoadAddr);
		                
		                $("#post").val(data.zonecode);
		                $("#location").val(fullRoadAddr);		                
	 	                $('#post').focus();

		            }
		         }).open();
		}
		
		
		$("#post").on("focus", function() {
			let addDest = window.open('./destination/form', '신규배송지 팝업', 'width=700px,height=800px,scrollbars=yes');
			
			$('#post').blur();
		});

</script>
</body>
</html>