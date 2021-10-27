<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<tr>
	<td>${param.orderNum}</td>
	<td>${dto.shippingDate}</td>
	<td>${dto.productName} 외 ${fn:length(list)-1}건</td>
	<td>${fn:length(list)}개</td>
	<td>${dto.price}원</td>
	<td><input type="radio" name="ck" class="ck" data-order-num="${param.orderNum}"></td>
</tr>