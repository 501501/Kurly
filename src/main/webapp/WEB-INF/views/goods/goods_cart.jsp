<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
 	input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
</style>
<script type="text/javascript">
$(function(){

    $("#btnList").click(function(){
        location.href="../goods_list";
    });

    $("#btnDelete").click(function(){
        if(confirm("장바구니를 비우시겠습니까?")){
            location.href="./deleteAll?userId=${map.userId}";
        }
    });
});
</script>
</head>
<body>
<h2>장바구니</h2>
<c:choose>
    <c:when test="${map.count == 0 }">
        장바구니에 담긴 상품이 없습니다
    </c:when>
    
    <c:otherwise>
		
		<div>
			<input type="checkbox" id="cbxAll" name="cbxAll" class="cbxSelect"/>
			<label for="cbxAll">전체선택</label> 
			<span>&nbsp;&nbsp;</span> <a href="#none" class="btn_delete">선택삭제</a>
		</div>
		<hr/>
		
        <form id="form1" name="form1" method="post"
        action="#">
            <table border="1" width="400px">
                <tr>
                	<th>선택</th>
                    <th>상품명</th>
                    <th>단가</th>
                    <th>수량</th>
                    <th>금액</th>
                    <th>&nbsp;</th>
                </tr>

            <input type="text" id="hiddenVal" value="${fn:length(map.list)}" hidden="hidden" />
            <input type="text" id="userIdVal" value="${map.userId}" hidden="hidden" />  
            
            <c:forEach var="row" items="${map.list}" varStatus="status">
                <tr align="center">
                	<td>
                		<input type="checkbox" id="cbx_${status.index}" class="cbxSelect cbxMinor" />
                	</td>
                
                    <td>${row.product_name}</td>
                    
                    <td><fmt:formatNumber value="${row.price}"
                            pattern="#,###,###" /></td>
                            
                    <td>
						<div>
							<button type="button" class="btn minus off" data-item-id="${row.product_id}" data-opt="decrease"
							onclick="minusAmount(${row.cart_id})">-</button>
							
							<input type="number" style="width:20px;" value="${row.amount}" class="num" id="stepperCounter" />
							
							<button type="button" class="btn plus" data-item-id="${row.product_id}" data-opt="increase"
							onclick="plusAmount(${row.cart_id})">+</button>
						</div>
						
                            <input type="hidden" name="cart_id" id="cart_id${status.index}"
                            value="${row.cart_id}">                             
                    </td>
                    <td><fmt:formatNumber value="${row.money}"
                            pattern="#,###,###" /></td>
                    <td><a href="./deleteOne?cart_id=${row.cart_id}">[삭제]</a>
                    </td>
                </tr>
            </c:forEach>
                <tr>
                    <td colspan="5" align="right">
                        장바구니 금액 합계 :
                        <fmt:formatNumber value="${map.sumMoney}"
                            pattern="#,###,###" /><br>
                        배송료 : ${map.fee}<br>
                        총합계 : <fmt:formatNumber value="${map.sum}"
                            pattern="#,###,###" />
                    </td>
                </tr>
            </table>
            <button id="btnUpdate">수정</button>
            <button type="button" id="btnDelete">장바구니 비우기</button>
        </form>
    </c:otherwise>
</c:choose>
<button type="button" id="btnList">상품목록</button>

<script type="text/javascript">

	$(document).ready(function(){
		// 전체 체크박스 클릭 시 작동
		$('#cbxAll').click(function(){
			if($('#cbxAll').prop('checked')) {
				$('.cbxSelect').prop('checked', true);
			} else {
				$('.cbxSelect').prop('checked', false);
			}
		});
		
		// 전체 체크박스 선택 중 하위 체크박스 하나가 풀렸을 때 전체 체크 해제
		$('.cbxSelect').click(function(){
			if($('.cbxMinor:checked').length == $('#hiddenVal').val()){
				$('#cbxAll').prop('checked', true);
			} else {
				$('#cbxAll').prop('checked', false);
			}
		});
	});

</script>

<script type="text/javascript" src="../../resources/js/goods_cart.js"></script>
</body>
</html>