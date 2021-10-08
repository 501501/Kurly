/**
 * notice.js
 */
/* 로그인 안한 경우 alert */
$(".control").click(function(){
	let id = this.getAttribute('data-member-id');
	if(id == "") {
		alert("로그인하셔야 본 서비스를 이용하실 수 있습니다");
	}
});