<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<h1>주문서 페이지입니다</h1>
	
	<div>
		<div>주문상품</div>
		<hr>
		<div id="ordProducts" style="text-align:center;"></div>
		<hr>		
	</div>
	
	<br><br>
	<div>
	
		<div>주문자 정보</div>
		<hr>
		<table>
			<tr>
				<td>보내는 분</td>
				<td style="text-align:center;">${member.name}</td> 
			</tr>
			
			<tr>
				<td>휴대폰</td>
				<td>${member.phone_num}</td>
			</tr>
			
			<tr>
				<td>이메일</td>
				<td>${member.email}</td>
			</tr>
		</table>
	</div>
	
	<br><br>
	
	<div>
		<div>배송 정보</div>
		<hr>
		<table>
			<tr>
				<td>배송지</td>
				<td>${destination.address_loca}</td>
				<input type="hidden" id="addrPost" value="${destination.address_post}" />
			</tr>
			
			<tr>
				<td>상세정보</td>
				<td>${member.name}, ${member.phone_num}</td>
			</tr>
		</table>
	</div>

	<br><br>

	<div>
		<div>쿠폰 / 적립금</div>
		<hr>
		<table>
			<tr>
				<td>적립금 적용</td>
				<td>
					<input type="text" value="" id="emoneyBox" />
				</td>
			</tr>
		</table>
	</div>

	<br><br>

	<div>
		<div>결제금액</div>
		<hr>
		 <tr>
         	<td colspan="5" align="right">
            	<div id="sumMoney">
	               상품금액 :
	               <fmt:formatNumber value="${sumMoney}"
	               pattern="#,###,###" />
                </div><br>
                    배송비 : ${fee}<br>
                   	결제예정금액 : <fmt:formatNumber value="${sum}"
                    pattern="#,###,###" />
           	</td>
       	</tr>
	</div>
	
	<br><br>
	
	<div>
		<div>결제 수단</div>
		<input type="radio" name="kakao-pay" />
		<label for="kakao-pay">카카오페이(임시버튼)</label>
		<hr>
	</div>
	
	<br><br>
	
	<div>
		<div>개인정보 수집/제공</div>
		<input type="checkbox" name="clause_necessary" value="1"/>
		<label for="clause_necessary">결제 진행 필수 동의</label>
		<hr>
	</div>
	
	<div>
		<button type="button" class="btn_payment" style="margin:auto; display:block">결제하기</button>
	</div>
	
	<form id = "frm" action="./order_end" method="post">
	<div hidden="hidden">
		<c:forEach items="${name}" var="n1">
			<input type="text" name="productName" value="${n1}">
        </c:forEach>
        
		<c:forEach items="${num}" var="n2">
			<input type="text" name="productNum" value="${n2}">
        </c:forEach>
        <input type="number" id="totalSum" name="price" value="${sum}" hidden="hidden">
	</div>
	</form>

	<script type="text/javascript">
	var arr = new Array();

	<c:forEach var="goods" items="${cartList}" varStatus="i">
		arr.push({
			name:"${goods.product_name}"
		});
	</c:forEach>
		
	var firstItem = arr[0].name;
	var length = arr.length;
		$('#ordProducts').html(firstItem + '외 '+(length-1)+'개상품을 주문합니다.');
	
	$(".btn_payment").click(function(){
		$("#frm").submit();
	});
</script>
</body>
</html>