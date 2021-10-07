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