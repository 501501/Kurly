<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div>${dto.productName} 외 ${fn:length(list)-1} 건</div>
<div>
	<dl>
		<dt>주문번호</dt>
		<dd>${dto.orderNum}</dd>
	</dl>
	<dl>
		<dt>결제금액</dt>
		<dd>${dto.price}</dd>
	</dl>
	<dl>
		<dt>주문상태</dt>
		<dd>배송완료</dd>
	</dl>
</div>

<div class="order_status">
	<span class="inner_status">
		<a href="../mypage/mypage_qna">1:1 문의</a>
	</span>
</div>