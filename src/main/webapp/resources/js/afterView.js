/**
 * afterView.js
 */

/* afterView 클릭 후, detail View 클릭 전 이미지 요청 */
var images = $(".review_image");
for (let image of images) {
	let num = (image.getAttribute('data-review-num'));
	//console.log(num);

	$.ajax({
		type: "GET",
		url: "../ajax/review_image",
		data: { num: num },
		async: false,
		success: function(data) {
			data = data.trim();
			$('#review_image' + num).html(data);
		}
	});
}


/* afterView 내용 클릭 */
$(".detailView").click(function() {
	// review 글 번호
	let num = (this).getAttribute("data-review-num");
	//console.log(num);

	// 클릭 전인 경우
	if ($("#after" + num).length == 0) {
		// 클릭 전 태그 숨기고
		$("#before" + num).hide();
		// 클릭 후 태그 요청
		$.ajax({
			type: "GET",
			url: "../ajax/review_select",
			data: { num: num },
			async: false,
			success: function(data) {
				data = data.trim();
				$("#select" + num).html(data);
			}
		});

	// 클릭 후인 경우
	} else {
		// 클릭 전 태그 보이고
		$("#before" + num).show();
		// 클릭 후 태그 삭제
		$("div").remove('#after' + num);
	}
});