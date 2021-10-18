<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<c:forEach items="${reviews}" var="review">
		<li>
			<div>상품 번호 ${review.goodsNo}</div>
			<div>${review.title}</div>
			<div>${review.contents}</div>
			<div>${review.regDate} 작성</div>
		</li>
	</c:forEach>