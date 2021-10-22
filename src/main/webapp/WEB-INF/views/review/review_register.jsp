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
	<div>
		<h2>후기 작성</h2>
	</div>
	<form id="frm" action="./review_register" method="post" enctype="multipart/form-data">
	<input type="text" value="${param.orderNum}" name="orderNum" hidden="hidden">
	<input type="text" value="${param.goodsNo}" name="goodsNo" hidden="hidden">
	<input type="text" value="${member.id}" name="id" hidden="hidden">
	
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
					<td><input type="text" placeholder="제목을 입력해주세요." name="title">
					</td>
				</tr>

				<tr>
					<th>후기작성</th>
					<td>
						<div>
							<textarea id="fieldCmt" rows="15" cols="60" name="contents"
								placeholder="자세한 후기는 다른 고객의 구매에 많은 도움이 되며, 일반식품의 효능이나 효과 등에 오해의 소지가 있는 내용을 작성 시 검토 후 비공개 조치될 수 있습니다. 반품/환불 문의는 1:1문의로 가능합니다."></textarea>
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
	
	<script type="text/javascript" src="../resources/js/review_register.js"></script>
</body>
</html>