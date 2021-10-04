<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>myInfoCheck 비밀번호 재확인 Page</h1>
	
	<form method="post" name="frm" id="frm" action="myInfo">
		<div class="mb-3">
			<input type="text" id="id" name="id" size="20" value="${member.id}" placeholder="아이디를 입력해주세요"/>
		</div>
		<div class="mb-3">
			<input type="password" id="pw" name="pw" size="20" value placeholder="비밀번호를 입력해주세요"/>
		</div>
		<div class="mb-3">
			<button type="submit" class="btn_type1">
				<span type="txt_type">확인</span>
			</button>
		</div>		
	</form>
	
</body>
</html>