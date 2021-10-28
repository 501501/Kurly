/**
 * faq.js
 */

let len = $(".title").length;
let titles = document.getElementsByClassName('title');

for(i=0; i<len; i++){
	let num = titles[i].getAttribute('data-faq-num');
	$.get('../ajax/faq_select?num=' + num, function(data) {
		data = data.trim();
		$("#selectResult" + num).html(data);
	});
}

$(".title").click(function(){
	let num = (this).getAttribute('data-faq-num');
	if ($("#selectResult" + num).is(":visible")) {
		$("#selectResult" + num).hide();
	} else {
		$("#selectResult" + num).show();
	}
})