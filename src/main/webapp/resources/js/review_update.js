/**
 * review_update.js
 */

/* 이미지 x 버튼 클릭 이벤트 */
// 삭제할 파일 배열
var fileNums = [];

$(".del_ck").click(function(){
	/* 프론트 : 이미지 삭제 */
	$(this).parent().remove();
	
	// fileNum
	let num = (this).getAttribute("data-file-num");
	//console.log(num);
	// 배열 추가
	fileNums.push(num);
	//console.log(fileNums);
});

/* 등록하기 버튼 클릭 이벤트 */
$("#btnSubmit").click(function() {
	/* 서버 : 이미지 삭제 */
	for (fileNum of fileNums) {
		$.ajax({
			type: "GET",
			url: "../../ajax/review_file_delete",
			data: { fileNum: fileNum },
			success: function(data) {
				data = data.trim();
				//console.log(data);
			}
		});
	}
	
	$("#frm").submit();
});


var count = 1;
$(".photo_add").change(function(){	
	if (count < 8) {
		var files = '<span class="inner_photo">';
		files += '<input type="file" name="files2" class="input_imgs" id="input_img';
		files += count+1;
		files += '">';
		files += '<span class="del_btn">x</span>';
		files += '</span>';
		
		$("#fileAddResult").append(files);
		// 사진 파일 수 count
		// document.getElementsByClassName("num")[1].innerHTML = count;
		count += 1;
	}
	
});


$(".photo_add").on('click', '.del_btn', function(){
	$(this).parent().remove();
	count --;
});