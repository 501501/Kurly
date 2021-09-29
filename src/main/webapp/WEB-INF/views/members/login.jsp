<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>로그인</title>
</head>
<body>

	<h1>로그인 페이지</h1>
	
	<form method="post" name="form" id="form" action="/member/login">
		<input type="text" name="id" placeholder="아이디를 입력해주세요">
		<input type="password" name="pw" placeholder="비밀번호를 입력해주세요">
		 
		<button type="submit" class="btn_1">로그인</button>
	</form>
	
	<a href="./join" class="btn_2">회원가입</a>
	


	<script type="text/javascript" src="../resources/js/login.js"></script>

</body>
</html>