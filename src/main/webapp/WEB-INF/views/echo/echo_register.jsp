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
<form action="./echo_register" method="post" enctype="multipart/form-data">
	
	<h3>제목</h3>
	  <select name="category">
	    <option value="0">선택해주세요.</option>
	    <option value="디자인">디자인</option>
	    <option value="사이즈">달걀사이즈</option>
	    <option value="신선도">신선도</option>
	    <option value="완충성">완충성</option>
	    <option value="분리수거">분리수거</option>
	    <option value="포장재제안">포장재제안</option>
	    <option value="기타">기타</option>
	  </select>
	
	<label for="title"></label>
	<input type="text" id="title" name="title">
	
	<label for="productName"><h3>상품명</h3></label>
	<input type="text" id="productName" name="productName">
	
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

<script type="text/javascript" src="../resources/js/echo_register.js"></script>
</body>
</html>