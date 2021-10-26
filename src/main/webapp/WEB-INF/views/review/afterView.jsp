<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${reviews}" var="review">
	<li>
		<div>
			<!-- 상세페이지 주소 추가 -->
			<a href="#">${review.productName}</a>
		</div>
		<hr>
		<div class="detailView" data-review-num="${review.num}">
			<span>${review.title}</span>
			<span class="regDate">${review.regDate}</span>
			
			<!-- 클릭 전 -->
			<div id="before${review.num}">
				<span class="review_image" id="review_image${review.num}" data-review-num="${review.num}">이미지</span>
				<span>${review.contents}</span>
			</div>
			
			<!-- 클릭 후 -->
			<div id="select${review.num}">
			</div>
		</div>
		<hr>
	</li>
</c:forEach>

<script type="text/javascript" src="../resources/js/afterView.js"></script>