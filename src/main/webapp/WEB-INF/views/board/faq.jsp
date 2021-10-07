<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자주하는 질문</h1>
	<!-- 카테고리별 검색 -->
	<form action="./faq" method="get" id="frm">
		<select name="kind" id="sel">
			<option value="k0"
				<c:if test="${param.kind eq 'k0'}">
					selected="selected"
				</c:if>>선택
			</option>
			
			<option value="k1"
				<c:if test="${param.kind eq 'k1'}">
					selected="selected"
				</c:if>>회원문의
			</option>
			
			<option value="k2"
				<c:if test="${param.kind eq 'k2'}">
					selected="selected"
				</c:if>>주문/결제
			</option>
			
			<option value="k3"
				<c:if test="${param.kind eq 'k3'}">
					selected="selected"
				</c:if>>취소/교환/반품
			</option>
			
			<option value="k4"
				<c:if test="${param.kind eq 'k4'}">
					selected="selected"
				</c:if>>배송문의
			</option>
			
			<option value="k5"
				<c:if test="${param.kind eq 'k5'}">
					selected="selected"
				</c:if>>쿠폰/적립금
			</option>
			
			<option value="k6"
				<c:if test="${param.kind eq 'k6'}">
					selected="selected"
				</c:if>>서비스 이용 및 기타
			</option>
		</select>
	
	<table id="tbl">
		<tr>
			<th>번호</th>
			<th>카테고리</th>
			<th>제목</th>
		</tr>
		<c:forEach items="${faq}" var="dto">
			<tr>
				<td>${dto.num}</td>
				<td>${dto.category}</td>
				<td><span class="title" data-faq-num="${dto.num}">${dto.title}</span></td>
			</tr>
			<tr id="selectResult${dto.num}">
			</tr>
		</c:forEach>
	</table>
	
	<!-- paging -->
	<div class="pagediv">
		<a class="page-link" href="./faq?kind=${pager.kind}&search=${pager.search}" aria-label="Previous">
			<span aria-hidden="true">&laquo;</span>
		</a> 
		
		<a class="page-link" href="./faq?pn=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}" aria-label="Previous"> 
			<span aria-hidden="true">&lt;</span>
		</a>
		
		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
			<a class="page-link" href="./faq?pn=${n}&kind=${pager.kind}&search=${pager.search}">${n}</a>
		</c:forEach>
		
		<a class="page-link" href="./faq?pn=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
			<span aria-hidden="true">&gt;</span>
		</a>
		
		<a class="page-link" href="./faq?pn=${pager.totalPage}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
			<span aria-hidden="true">&raquo;</span>
		</a>
		</div>

	<!-- 제목 검색 -->
	<hr>
	<input type="text" name="search">
	<button type="submit">검색</button>
	</form>
	
	<script type="text/javascript" src="../resources/js/faq.js"></script>
</body>
</html>