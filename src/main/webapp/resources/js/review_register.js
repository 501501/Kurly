/**
 * review_register.js
 */

/* 등록하기 버튼 클릭 이벤트 */
$("#btnSubmit").click(function(){
	$("#frm").submit();
});

/* 글자수 세기 */
$("#fieldCmt").keyup(function(){
	var content = $(this).val();
	document.getElementsByClassName("num")[0].innerHTML = content.length;
});

/* 파일 추가, 파일수 세기 */
let count = 1;
let files = '<span class="btn_upload">';
files += '<input type="file" name="files2" class="file_upload">';
files += '<span>';
files += 'x';
files += '</span>';
files += '</span>';

$(".photo_add").change(function(){
	if (count < 8) {
		$(".photo_add").append(files);
		document.getElementsByClassName("num")[1].innerHTML = count;
		count += 1;
	}
});
