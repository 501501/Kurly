/**
 * bulk.js
 */

/*필수 약관 동의 체크*/
$("#btn").click(function(){
	let ck = $(".vi").is(":checked");
	
	if(!ck) {
		alert("약관 동의 필수");
	} 
	
	else {
		$("#frm").submit();
	}
})