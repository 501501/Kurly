/**
 * faq.js
 */

let count = 0;

$(".title").click(function(){
	//클릭한 faq의 num 받아오기
	let num = (this).getAttribute('data-faq-num');
	//console.log(num);

	if($("#td"+num).length == 0){
		$.get('../ajax/faq_select?num='+num, function(data){
		data = data.trim();
		$("#selectResult"+num).html(data);
		})
	} else {
		$('td').remove('#td'+num);
	}
});

$("#sel").change(function(){
	$("#frm").submit();
});

/* 로그인 안한 경우 alert */
$(".control").click(function(){
	let id = this.getAttribute('data-member-id');
	if(id == "") {
		alert("로그인하셔야 본 서비스를 이용하실 수 있습니다");
	}
});