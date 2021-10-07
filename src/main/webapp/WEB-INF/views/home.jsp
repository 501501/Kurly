<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	</c:if>
	
	<c:if test="${empty member}">>
		<h2>Login하기 전 Page입니다</h2>
		<a href="./members/login" class="btn_login">로그인</a>
	</c:if>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
