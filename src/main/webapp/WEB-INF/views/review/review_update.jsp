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
	.photo > img {
		width: 80px;
		height: 80px;
	}
</style>
</head>
<body>
	<div>
		<h2>후기 수정</h2>
	</div>
	<form id="frm" action="./update" method="post" enctype="multipart/form-data">
	<input type="text" value="${dto.orderNum}" name="orderNum" hidden="hidden">
	<input type="text" value="${dto.goodsNo}" name="goodsNo" hidden="hidden">
	<input type="text" value="${member.id}" name="id" hidden="hidden">
	<input type="text" value="${param.num}" name="num" hidden="hidden">
	
	<div>
		<input type="text" value="${dto.productName}" hidden="hidden" name="productName">
		${dto.productName}
	</div>

		<table class="tbl">
			<caption style="display: none;">후기 작성 입력 상자</caption>
			<colgroup>
				<col style="width: 110px;">
				<col style="width: auto;">
			</colgroup>
			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" placeholder="제목을 입력해주세요." name="title" value="${dto.title}">
					</td>
				</tr>

				<tr>
					<th>후기작성</th>
					<td>
						<div>
							<textarea id="fieldCmt" rows="15" cols="60" name="contents"
								placeholder="자세한 후기는 다른 고객의 구매에 많은 도움이 되며,&#13;&#10;일반식품의 효능이나 효과 등에 오해의 소지가 있는 내용을 작성 시 검토 후 비공개 조치될 수 있습니다.&#13;&#10;반품/환불 문의는 1:1문의로 가능합니다.">${dto.contents}</textarea>
							<p class="txt_count">
								<span class="num">0</span> 자 / 최소 10자
							</p>
						</div>
					</td>
				</tr>

				<tr>
					<th>사진등록</th>
					<td>
						<!-- 다중 이미지 미리보기 -->
						<div>
							<div class="imgs_wrap"></div>
						</div>

						<div class="photo_add">
							<span class="inner_photo">
								<input type="file" class="input_imgs" id="input_img1" name="files2" /> 
								<span class="del_btn" id="del_btn1">x</span>
							</span>
							
							<span id="fileAddResult">
							</span>
						</div>
						
						
							<!-- 등록된 사진 -->
							<c:forEach items="${dto.files}" var="f">
								<c:if test="${not empty f.oriName}">
									<span class="photo">
										<img src="../review_down?fileName=${f.fileName}">
										<span class="del_ck" data-file-num="${f.fileNum}">x</span>
									</span>
								</c:if>
							</c:forEach>


						<div class="file_count">
							<p class="txt_count">
								<span class="num">0</span> 장 / 최대 8장
							</p>
						</div>
						<p class="photo_notice">구매한 상품이 아니거나 캡쳐 사진을 첨부할 경우, 통보없이 삭제 및
							적립 혜택이 취소됩니다.</p>
					</td>
				</tr>
			</tbody>
		</table>

		<button type="button" id="btnSubmit">등록하기</button>
	</form>
	
	<script type="text/javascript" src="../../resources/js/review_update.js"></script>
</body>
</html>