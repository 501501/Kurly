<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>비밀번호 찾기 결과 Page</h1>
	
	<c:if test="${not empty member}">
		<form id="frm" method="post" action="find_pw">
			<p>이메일로 인증 완료후 비밀번호를 재발급 받으세요!</p>
			<br>
			<span>
				입력하신 ${member.email} 으로 인증번호가 발송되며, 인증 후 비밀번호가 재발급됩니다. 전송량이 많은 경우 
				이메일 전송이 지연될 수 있습니다.
			</span>
			<div>
				<input type="text" name="id" value="${member.id}" hidden="hidden" />
				<input type="text" name="email" value="${member.email}" hidden="hidden" />
				<input type="text" name="name" value="${member.name}" hidden="hidden" />
				<input type="text" name="dot" value="dot" hidden="hidden" />			
			</div>
			
			<div>
				<button type="button" id="btn_verification">인증번호 받기</button>
			</div>
		</form>
	</c:if>
	
<script type="text/javascript">
	$('#btn_verification').click(function(){
		console.log('${member.pw}');
		alert('인증번호가 고객님의 메일주소로 전송 되었습니다.');
		$(this).submit();
	});
</script>		
</body>
</html>