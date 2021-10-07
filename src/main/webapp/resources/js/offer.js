/**
 * offer.js
 */

$("#write_btn").click(function(){
	location = "./offer_register";
});

/*qna list 중 클릭한 글 번호 받아오기*/
let item = document.querySelector('.select');
$(".select").click(function() {
	let num = (this).getAttribute('data-list-num');
	console.log(num);
	$.get('../ajax/offer_select?num='+num, function(data){
		data = data.trim();
		console.log(data);
		$("#selectResult"+num).html(data);
	})
});