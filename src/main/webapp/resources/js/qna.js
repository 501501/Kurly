/**
 * qna.js
 */
 
$("#write_btn").click(function(){
	location = "./mypage_qna_register";
});

/*qna list 중 클릭한 글 번호 받아오기*/
let item = document.querySelector('.select');
$(".select").click(function() {
	console.log(item.getAttribute('data-list-num'));
});