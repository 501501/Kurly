/**
 * 
 */
 var defaultValue = 1;
 $('#finalAmount').val(defaultValue);
 
 function upNumber(){
	defaultValue++;
	let num1 = $('#finalAmount').val(defaultValue);
	$('#transferAmount').val(num1);
}

function downNumber(){
	if(defaultValue != 1){
		defaultValue--;
		 let num2 = $('#finalAmount').val(defaultValue);
		 $('#transferAmount').val(num2);
	} else {
		let num3 = $('#finalAmount').val(defaultValue);
		$('#transferAmount').val(num3);
	}
}

$('#goCart').click(function(){
	
		$('#cartForm').submit();
	
})