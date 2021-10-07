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
	<h1>아이디 찾기</h1>

	<form id="frm" method="post" action="find_id">
		<div>
			<label for="name">이름</label>
			<input type="text" name="name" class="" placeholder="고객님의 이름을 입력해주세요" size="10" />
		</div>
		<div>
			<label for="emailWrite">이메일</label>
			<input type="text" name="email" class="" placeholder="가입 시 등록하신 이메일 주소를 입력해주세요" size="15"/>
		</div>
		
		<div>
			<button type="submit" id="btn_findId">확인</button>
		</div>
	</form>

</body>
</html>