<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./mypage_qna_register" method="post" enctype="multipart/form-data">
	
	<h3>제목</h3>
	  <select name="category">
	    <option value="0">선택해주세요.</option>
	    <option value="1">배송지연/불만</option>
	    <option value="2">컬리패스 (무료배송)</option>
	    <option value="3">반품문의</option>
	    <option value="4">A/S문의</option>
	    <option value="5">환불문의</option>
	    <option value="6">주문결제문의</option>
	    <option value="7">회원정보문의</option>
	    <option value="8">취소문의</option>
	    <option value="9">교환문의</option>
	    <option value="10">상품정보문의</option>
	    <option value="11">기타문의</option>
	  </select>
	
	<label for="title"></label>
	<input type="text" id="title" name="title">
	
	<label for="orderNum"><h3>주문번호</h3></label>
	<input type="text" id="orderNum" name="orderNum">
	
	<label for="email"><h3>이메일</h3></label>
	<input type="email" id="email" value="test@email.com" readonly="readonly">
	<input type="checkbox" id="email_ck_hidden" name="email_ck_hidden">
	<input type="hidden" id="email_ck" name="email_ck" value="n">
	
	<label for="phone"><h3>문자메시지</h3></label>
	<input type="text" id="phone" value="010-1111-1111" readonly="readonly">
	<input type="checkbox" id="phone_ck_hidden" name="phone_ck_hidden">
	<input type="hidden" id="phone_ck" name="phone_ck" value="n">
	
	<label for="contents"><h3>내용</h3></label>
	<textarea rows="10" cols="50" id="contents" name="contents"></textarea>
	
	<label for="files"><h3>이미지</h3></label>
	<div id="fileAddResult">
	<input type="file" id="files" name="files2">
	<button type="button" id="fileAdd">업로드 추가</button>
	</div>
	
	<br>
	<div>- 파일은 최대 5개까지 업로드가 지원됩니다.</div>
	
	<button type="submit">저장</button>
</form>

<script type="text/javascript" src="../resources/js/qna_register.js"></script>
</body>
</html>