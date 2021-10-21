/**
 * review_register.js
 */

/* 등록하기 버튼 클릭 이벤트 */
$("#btnSubmit").click(function(){
	$("#frm").submit();
});

/* 글자수 세기 */
$("#fieldCmt").keyup(function(){
	var content = $(this).val();
	document.getElementsByClassName("num")[0].innerHTML = content.length;
});

/* 이미지 태그 추가 */
var count = 1;
$(".photo_add").change(function(){
	var flag = true;
	console.log(flag);
	
	var length = $(".input_imgs").length;
	console.log("len1: "+length);
	
	for(var len=0; len<length; len++) {
		target = document.getElementsByClassName('input_imgs')[len];
		console.log(target.value);
		// 공백 체크
		if(target.value == "") {
			flag = false;
			break;
		}
	}
	
	if (flag == true && count < 8) {
		var files = '<span class="inner_photo">';
		files += '<input type="file" name="files2" class="input_imgs" id="input_img';
		files += count + 1;
		files += '">';
		files += '<span class="del_btn">x</span>';
		files += '</span>';
		$("#fileAddResult").append(files);
		count++;
	}
	
	length = $(".input_imgs").length;
	console.log("len2: "+length);
	
	console.log(flag);
});

/* 이미지 삭제 버튼 */
$(".photo_add").on('click', '.del_btn', function(){
	$(this).parent().remove();
	count--;
	
	var flag = true;
	var length = $(".input_imgs").length;

	for(var len=0; len<length; len++) {
		target = document.getElementsByClassName('input_imgs')[len];
		console.log(target.value);
		// 공백 체크
		if(target.value == "") {
			flag = false;
			break;
		}
	}
	
	if (flag == true && count < 8) {
		var files = '<span class="inner_photo">';
		files += '<input type="file" name="files2" class="input_imgs" id="input_img';
		files += count + 1;
		files += '">';
		files += '<span class="del_btn">x</span>';
		files += '</span>';
		$("#fileAddResult").append(files);
		count++;
	}
	
	length = $(".input_imgs").length;
});


/* 이미지 미리보기 */
/*var sel_files = [];

$(document).ready(function() {
	$(".input_imgs").on("change", handleImgsFilesSelect);
});

function handleImgsFilesSelect(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);

	filesArr.forEach(function(f) {
		if (!f.type.match("image.*")) {
			alert("확장자는 이미지 확장자만 가능합니다.");
			return;
		}

		sel_files.push(f);

		var reader = new FileReader();
		reader.onload = function(e) {
			var img_html = "<img src=\"" + e.target.result + "\" />";
			$(".imgs_wrap").append(img_html);
		}
		reader.readAsDataURL(f);
	});
}*/
