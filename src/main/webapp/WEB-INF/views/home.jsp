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
	</c:if>
	
	<c:if test="${empty member}">>
		<h2>Login하기 전 Page입니다</h2>
	</c:if>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
