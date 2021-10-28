/**
 * cart_result.js
 */
 
$.get('../../ajax/get_checked_destination', function(result) {
	result = result.trim();
	console.log(result);
	$("#destination").html(result);
})