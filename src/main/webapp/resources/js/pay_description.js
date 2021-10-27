/**
 * 
 */

	alert($('#sumMoneySpan').html());


 $('#useEmoney').click(function(){
	$('#sumSpan').html($('#sumSpan').html()-$('#emoneyBox').val());
	$('#useEmoney_amount').html($('#emoneyBox').val());
	$('#use_point').val($('#emoneyBox').val())
});