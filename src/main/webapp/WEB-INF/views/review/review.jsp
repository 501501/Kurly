<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<h3>상품 후기</h3>
	<div>
		후기 작성 시 사진후기 100원, 글후기 50원을 적립해드립니다.<br>
		- 퍼플, 더퍼플은 2배 적립 (사진 200원, 글 100원)<br>
		- 주간 베스트 후기로 선정 시 5,000원을 추가 적립<br>
		* 후기 작성은 배송 완료일로부터 30일 이내 가능합니다.
	</div>
	
	<div>
		<ul>
			<li>
				<a id="viewBefore">작성가능 후기</a>
			</li>
			<li>
				<a id="viewAfter">작성 완료 후기</a>
			</li>
		</ul>
	</div>
	
	<div id="viewBeforeList" class="before_view">
	</div>
	
	<div id="viewAftereList" class="after_view">
	</div>
</body>
<script type="text/javascript" src="../resources/js/review.js"></script>
</html>