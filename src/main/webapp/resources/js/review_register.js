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

//var a = document.getElementById('input_imgs').files[0].name;
//console.log(a);


var count = 1;
$(".photo_add").click(function(){
	
	if(count > 1) {
		var length = $(".input_imgs").length;
		
		for(var len=1; len<=length; len++) {
			target = document.getElementsByClassName('input_imgs');
			console.log(target);
			//console.log(target.value);
		}
	}

/*	if (count > 1) {
		for(var len=1; len<=length; len++) {
		target = document.getElementsByClassName('input_imgs');
		console.log(target.input_img[len]);
		}
	}*/
	
	
	if (count < 8) {
		var files = '<span class="inner_photo">';
		files += '<input type="file" name="files2" class="input_imgs" id="input_img';
		files += count+1;
		files += '">';
		files += '<span class="del_btn">x</span>';
		files += '</span>';
		
		$("#fileAddResult").append(files);
		//document.getElementsByClassName("num")[1].innerHTML = count;
		count += 1;
	}
	
});


$(".photo_add").on('click', '.del_btn', function(){
	$(this).parent().remove();
	count -= 1;
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
