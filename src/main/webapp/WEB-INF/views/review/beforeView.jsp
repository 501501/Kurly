<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list_before">
	<c:forEach items="${orderNums}" var="orderNum">
		<div class="orderList" data-order-num="${orderNum}">주문번호
			${orderNum}</div>
		<div id="selectResultBefore${orderNum}"></div>
	</c:forEach>
</ul>