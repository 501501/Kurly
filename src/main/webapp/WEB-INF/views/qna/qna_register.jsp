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
	    <option value="배송지연/불만">배송지연/불만</option>
	    <option value="컬리패스 (무료배송)">컬리패스 (무료배송)</option>
	    <option value="반품문의">반품문의</option>
	    <option value="A/S문의">A/S문의</option>
	    <option value="환불문의">환불문의</option>
	    <option value="주문결제문의">주문결제문의</option>
	    <option value="회원정보문의">회원정보문의</option>
	    <option value="취소문의">취소문의</option>
	    <option value="교환문의">교환문의</option>
	    <option value="상품정보문의">상품정보문의</option>
	    <option value="기타문의">기타문의</option>
	  </select>
	
	<label for="title"></label>
	<input type="text" id="title" name="title">
	
	<label for="orderNum"><h3>주문번호</h3></label>
	<input type="text" id="orderNum" name="orderNum">
	
	<label for="email"><h3>이메일</h3></label>
	<input type="email" id="email" value="${member.email}" readonly="readonly">
	<input type="checkbox" id="email_ck_hidden" name="email_ck_hidden">
	<input type="hidden" id="email_ck" name="email_ck" value="n">
	
	<label for="phone"><h3>문자메시지</h3></label>
	<input type="text" id="phone" value="${member.phone_num}" readonly="readonly">
	<input type="checkbox" id="phone_ck_hidden" name="phone_ck_hidden">
	<input type="hidden" id="phone_ck" name="phone_ck" value="n">
	
	<label for="contents"><h3>내용</h3></label>
	<textarea rows="10" cols="50" id="contents" name="contents"></textarea>
	
	<label for="files"><h3>이미지</h3></label>
	<div id="fileAddResult">
	<input type="file" id="files" name="files2">
	<button type="button" id="fileAdd">업로드 추가</button>
	</div>
	
	<input type="text" name="id" value="${member.id}" hidden="hidden">
	
	<br>
	<div>- 파일은 최대 5개까지 업로드가 지원됩니다.</div>
	
	<button type="submit">저장</button>
</form>

<script type="text/javascript" src="../resources/js/qna_register.js"></script>
</body>
</html>