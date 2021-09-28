/**
 * qna_register.js
 */
 
let files = '<div>';
files = files + '<input type="file" name="files">';
files = files + '<button type="button" class="del">업로드 삭제</button></div>';

let count = 1;

$("#fileAdd").click(function(){
	if (count<5) {
		count++;
		$("#fileAddResult").append(files);
	} else {
		alert("업로드는 최대 5개까지만 지원합니다.");
	}
});

$("#fileAddResult").on('click', '.del', function(){
	$(this).parent().remove();
	count--;
});

$("#email_ck_hidden").click(function(){
	if ($("#email_ck_hidden").is(':checked')) {
		$("#email_ck").val('y');
	} else {
		$("#email_ck").val('n');
	}
});

$("#phone_ck_hidden").click(function(){
	if ($("#phone_ck_hidden").is(':checked')) {
		$("#phone_ck").val('y');
	} else {
		$("#phone_ck").val('n');
	}
});
