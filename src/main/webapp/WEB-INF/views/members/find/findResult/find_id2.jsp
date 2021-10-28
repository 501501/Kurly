<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<style>
.findId {
 	width: 159px;
    padding: 1878px 100 100 100px;
    font-weight: 700;
    font-size: 14px;
    line-height: 20px;
    vertical-align: top;
    text-align: left;
}
</style>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<c:import url="../../../temp/header.jsp"></c:import>
</head>
<body>
	<h1>아이디찾기 결과 Page</h1>

	<c:if test="${not empty member}">
		<form id="frm" method="get" action="login">
				<div class="findId">
					아이디:${member.id}
					<input type="text" name="id" hidden="hidden" value="${member.id}" />
				</div>				
				<div>
					<button type="submit">로그인 하기</button>	
				</div>
		</form>
	</c:if>
		
	<c:if test="${empty member}">
		<p>
			고객님께서 입력하신 정보가 정확한지 확인 후 다시 시도해주세요.
		</p>
		
		<a href="./login">다시 아이디 찾기</button>
	</c:if>
<c:import url="../../../temp/footer.jsp"></c:import>		
</body>
</html>