<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>비밀번호 찾기</h1>
	
	<form id="frm" method="post" action="find_pwd">
		<div>
			<label for="name">이름</label>
			<input type="text" name="name" class=""/>
		</div>
		<div>
			<label for="id">아이디</label>
			<input type="text" name="id" class="" size="10"/>
		</div>
		<div>
			<label for="email">이메일</label>
			<input type="text" name="email" class="" size="15"/>
		</div>
		
		<button type="submit">찾기</button>		
	</form>
</body>
</html>