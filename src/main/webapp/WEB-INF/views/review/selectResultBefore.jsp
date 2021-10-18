<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${list}" var="dto">
	<!-- 후기 작성 전 -->
	<c:if test="${dto.reviewCk eq 'n'}">
		<li>
			<div>${dto.productName}</div>
			<div>${dto.productNum}개 구매</div>
			<div>${dto.shippingDate}배송완료</div>
			<div>
				<a href="./review_register?goodsNo=${dto.goodsNo}&orderNum=${dto.orderNum}">후기쓰기</a>
			</div>
		</li>
	</c:if>
</c:forEach>