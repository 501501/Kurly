<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

	<c:if test="${not empty member}">
		<h2>Login에 성공하셨습니다</h2>
		<a href="./members/myInfoCheck" class="btn_myInfo">개인정보수정</a>
		<a href="./members/logout" class="btn_logout">로그아웃</a>
		<a href="./mypage/destination?id=${member.id}" class="btn_destination">배송지 관리</a>
	</c:if>
	
	<c:if test="${empty member}">
		<h2>Login하기 전 Page입니다</h2>
		<a href="./members/login" class="btn_login">로그인</a>
	</c:if>

<h1>고객센터</h1>
<a href="./board/list"><h3>공지사항</h3></a>
<a href="./service/faq"><h3>자주하는 질문</h3></a>
<a href="./mypage/mypage_qna"><h3>1:1 문의</h3></a>
<a href="./mypage/bulk_order"><h3>대량주문 문의</h3></a>
<a href="./mypage/offer"><h3>상품 제안</h3></a>
<a href="./mypage/echo_packing"><h3>에코포장 피드백</h3></a>
</body>
</html>
