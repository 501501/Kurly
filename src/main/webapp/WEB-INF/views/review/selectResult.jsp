<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${list}" var="dto" begin="0" varStatus="idx">
	<ul>
		<li>${dto.productName}</li>
		<li>${dto.productNum}개 구매</li>
		<li>${dto.shippingDate} 배송완료</li>
		<li>
			<c:if test="${dto.reviewCk eq 'n'}">
				<button type="button" class="btn" data-goods-no="${dto.goodsNo}">후기쓰기</button>
			</c:if>
		</li>
	</ul>
</c:forEach>