<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<h1>적립금</h1>
	
	<div>
		<button type="button" id="test_review">리뷰포인트적립테스트</button>
		<button type="button" id="test_purchase">구매포인트적립테스트</button>
		<button type="button" id="test_usePoint" value="">적립금사용하기테스트</button>
		<div id="test_totalPoint" style="margin: 15px;">${emoney}</div>
	</div>
	
	<table>
		<thead>
			<tr>
				<td>날짜</td>
				<td>내용</td>
				<td>유효기간</td>
				<td>금액</td>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.reg_date}</td>
					<td>${list.memo}</td>
					<td>${list.exp_date}</td>
					<c:if test="${list.status eq 'Y'}">
						<td>${list.emoney}</td>
					</c:if>	
					<c:if test="${list.status eq 'N'}">
						<td>+${list.emoney}</td>
					</c:if>	
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<script type="text/javascript">
		$('#test_review').click(function(){
			$.ajax({
				url : './review_emoney',
				type : 'POST',
				data : {
					userId : 't1',
					product_name : '냉장고'
				},
				success : function(result){
					var rs = result.trim();
					if(rs != 2){
						alert('실패용');
					} else {
						alert('성공');
						location.reload();
					}
				}
			});
		});
		
		$('#test_purchase').click(function(){
			$.ajax({
				url : './purchase_emoney',
				type : 'POST',
				data : {
					userId : 't1',
					totalPay : 70000,
					order_number : 10,
					product_name : '선풍기'
				},
				success : function(result){
					var rs = result.trim();
					if(rs != 2){
						alert('실패용');
					} else {
						alert('성공');
						location.reload();
					}
				}
			});
		});
		
		$('#test_usePoint').click(function(){
			$.ajax({
				url : './use_emoney',
				type : 'POST',
				data : {
					userId : 't1',
					use_point : 1300,
					order_number : 10,
				},
				success : function(result){
					var rs = result.trim();
					if(rs != 2){
						alert('실패용');
					} else {
						alert('성공');
						location.reload();
					}
				}
			});
		});

	</script>
</body>
</html>