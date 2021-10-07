<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	
	<form method="post" name="frm" id="frm" action="login">
		<div class="mb-3">
			<input type="text" id="id" name="id" size="20" value placeholder="아이디를 입력해주세요"/>
		</div>
		<div class="mb-3">
			<input type="password" id="pw" name="pw" size="20" value placeholder="비밀번호를 입력해주세요"/>
		</div>
		
		<div>
			<a href="./find_id">아이디 찾기</a>
			<a href="./find_pwd">비밀번호 찾기</a>
		</div>
		
		<div class="mb-3">
			<button type="submit" class="btn_type1">
				<span type="txt_type">로그인</span>
			</button>
		</div>		
		<a href="./join" class="btn_2">회원가입</a>
	</form>
	
	
	


	<!-- <script type="text/javascript" src="../resources/js/login.js"></script> -->
</body>
</html>