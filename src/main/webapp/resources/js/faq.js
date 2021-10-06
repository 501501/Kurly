/**
 * faq.js
 */

let count = 0;

$(".title").click(function(){
	//클릭한 faq의 num 받아오기
	let num = (this).getAttribute('data-faq-num');
	//console.log(num);

	count++;
	
	if(count%2==1){
		console.log(count);	
		$.get('../ajax/faq_select?num='+num, function(data){
		data = data.trim();
		$("#selectResult"+num).html(data);
		})
	} else {
		console.log(count);
		$('td').remove('#td'+num);
	}
});