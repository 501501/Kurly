/**
 * qna_register.js
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

$("#order_inquiry").click(function(){
	openWin();
});

function openWin() {
	
	var _width = '550';
    var _height = '300';
 
    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
    var _left = Math.ceil(( window.screen.width - _width )/2);
    var _top = Math.ceil(( window.screen.height - _height )/2); 
 
    window.open('../order/orderNum', 'popup-test', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top );
}