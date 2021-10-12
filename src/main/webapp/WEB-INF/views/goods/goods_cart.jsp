<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<script>
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
        장바구니가 비었습니다.
    </c:when>
    
    <c:otherwise>

        <form id="form1" name="form1" method="post"
        action="#">
            <table border="1" width="400px">
                <tr>
                    <th>상품명</th>
                    <th>단가</th>
                    <th>수량</th>
                    <th>금액</th>
                    <th>&nbsp;</th>
                </tr>

            <c:forEach var="row" items="${map.list}">
                <tr align="center">
                    <td>${row.product_name}</td>
                    
                    <td><fmt:formatNumber value="${row.price}"
                            pattern="#,###,###" /></td>
                            <!-- fmt:formatNumber 태그는 숫자를 양식에 맞춰서 문자열로 변환해주는 태그 -->
                            <!-- 여기선 금액을 표현할 때 사용 -->
                            <!-- ex) 5,000 / 10,000 등등-->
                            
                    <td><input type="number" name="amount" 
                        style="width:30px;"
                        value="<fmt:formatNumber value="${row.amount}"
                            pattern="#,###,###" />">
                    <!-- 물건의 개수 (amount)를 fmt태그를 사용해서 패턴의 형식에 맞춰서 문자열로 변환 -->
                    <!--1,000 / 5,000 등등  -->
                    
                            <input type="hidden" name="cart_id"
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
</body>
</html>