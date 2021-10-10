/**
 * 
 */
 
function updatePopup(){
	let updatePop 
	= window.open('./destination/update?id='+$('#id').val()+'&adress_location='+$('#loca').html()+'&basic_destination='+$('.basic_BorN').val(), 
		'배송지수정', 'width=700px,height=800px'); 
}

/** './destination/update?id='+$('id').val()+'&adress_location='+$('loca').html()+'&basic_destination='+$('basic_BorN').val() */