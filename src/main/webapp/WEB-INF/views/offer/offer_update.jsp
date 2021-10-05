<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
img {
	width:30px;
	height: 30px;
}
</style>
</head>
<body>
	<h1>수정</h1>
	<form action="./update?num=${param.num}" method="post"
		enctype="multipart/form-data">
		
		<h3>제목</h3>
		<select name="category">
			<option value="0">선택해주세요.</option>
			<option value="신선식품"
				<c:if test="${dto.category eq '신선식품'}">
					selected="selected"
				</c:if>>신선식품
			</option>
			
			<option value="정육/달걀"
				<c:if test="${dto.category eq '정육/달걀'}">
					selected="selected"
				</c:if>>정육/달걀
			</option>
			
			<option value="가공식품"
				<c:if test="${dto.category eq '가공식품'}">
					selected="selected"
				</c:if>>가공식품
			</option>
			
			<option value="양념/반찬"
				<c:if test="${dto.category eq '양념/반찬'}">
					selected="selected"
				</c:if>>양념/반찬
			</option>
			
			<option value="Home Dining"
				<c:if test="${dto.category eq 'Home Dining'}">
					selected="selected"
				</c:if>>Home Dining
			</option>
			
			<option value="Deli/Bakery"
				<c:if test="${dto.category eq 'Deli/Bakery'}">
					selected="selected"
				</c:if>>Deli/Bakery
			</option>
			
			<option value="Daily+" 
				<c:if test="${dto.category eq 'Daily+'}">
					selected="selected"
				</c:if>>Daily+
			</option>
			
			<option value="기타" 
				<c:if test="${dto.category eq '기타'}">
					selected="selected"
				</c:if>>기타
			</option>
		</select> 
		
		<label for="title"></label> 
		<input type="text" id="title" name="title" value="${dto.title}"> 
		
		<input type="hidden" id="phone_ck" name="phone_ck"> 
		<label for="contents"><h3>내용</h3></label>
		<textarea rows="10" cols="50" id="contents" name="contents">${dto.contents}</textarea>
	
		<label for="files"><h3>이미지</h3></label> 
		<input type="file" id="files" name="files2" class="del">
		<button type="button" id="fileAdd">업로드 추가</button>

		<c:forEach items="${dto.files}" var="f">
			<c:if test="${not empty f.oriName}">
				<span class="del">
					<input type="checkbox" class="del_ck" data-file-num="${f.fileNum}">삭제
					<img src="../offer_down?fileName=${f.fileName}">
				</span>
			</c:if>
		</c:forEach>

		<div id="fileAddResult">
		</div>

		<br>
		<div>- 파일은 최대 5개까지 업로드가 지원됩니다.</div>

		<button type="submit" id="update">저장</button>
	</form>

	<script type="text/javascript" src="../../resources/js/offer_update.js"></script>
</body>
</html>