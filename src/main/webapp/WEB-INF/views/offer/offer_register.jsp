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
<form action="./offer_register" method="post" enctype="multipart/form-data">
	
	<h3>제목</h3>
	  <select name="category">
	    <option value="0">선택해주세요.</option>
	    <option value="신선식품">신선식품</option>
	    <option value="정육/달걀">정육/달걀</option>
	    <option value="가공식품">가공식품</option>
	    <option value="양념/반찬">양념/반찬</option>
	    <option value="Home Dining">Home Dining</option>
	    <option value="Deli/Bakery">Deli/Bakery</option>
	    <option value="Daily+">Daily+</option>
	    <option value="기타">기타</option>
	  </select>
	
	<label for="title"></label>
	<input type="text" id="title" name="title">
	
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

<script type="text/javascript" src="../resources/js/offer_register.js"></script>
</body>
</html>