/**
 * qna_update.js
 */

let files = '<div>';
files = files + '<input type="file" name="files2">';
files = files + '<button type="button" class="del">';
files = files + '업로드 삭제</button>';
files = files + '</div>';

let count = $(".del").length;

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

$("#update").click(function(){
	if ($("#email_ck_hidden").is(':checked')) {
		$("#email_ck").val('y');
	} else {
		$("#email_ck").val('n');
	}
});

$("#update").click(function(){
	if ($("#phone_ck_hidden").is(':checked')) {
		$("#phone_ck").val('y');
	} else {
		$("#phone_ck").val('n');
	}
});

let del_ck = $(".del_ck");

$("#update").click(function(){
	var d_length = document.getElementsByClassName("del_ck").length;
	
	for(var i=0;i<d_length;i++) {
		if(document.getElementsByClassName("del_ck")[i].checked == true) {
			let fileNum = document.getElementsByClassName("del_ck")[i].getAttribute('data-file-num');
			console.log(fileNum);
			
			$.get('../../ajax/qna_fileDelete?fileNum='+fileNum, function(result){
				result = result.trim();
				console.log(result);
			})
		}
	}
});
