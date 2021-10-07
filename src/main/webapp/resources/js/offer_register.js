/**
 * offer_register.js
 */
 
let files = '<div>';
files = files + '<input type="file" name="files2">';
files = files + '<button type="button" class="del">';
files = files + '업로드 삭제</button>';
files = files + '</div>';

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

