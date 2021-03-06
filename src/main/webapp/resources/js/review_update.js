/**
 * review_update.js
 */

/* 이미지 x 버튼 클릭 이벤트 */
// id 인덱스 값
var count = 1;
// 삭제할 파일 배열
var fileNums = [];

$(".del_ck").click(function(){
	/* 프론트 : 이미지 삭제 */
	$(this).parent().remove();
	
	// fileNum
	let num = (this).getAttribute("data-file-num");
	// 배열 추가
	fileNums.push(num);
	
	var img_count = $(".del_ck").length;
	var length = $(".input_imgs").length;
	var flag = true;
	
	for(var len=0; len<length; len++) {
		target = document.getElementsByClassName('input_imgs')[len];
		//console.log(target.value);
		// 공백 체크
		if(target.value == "") {
			flag = false;
		} else {
			img_count ++;
		}
	}
	
	if (flag == true) {
		var files = '<span class="inner_photo">';
		files += '<input type="file" name="files2" accept="image/*" class="input_imgs input_img';
		files += count + 1;
		files += '">';
		files += '<span class="del_btn" id="del_btn';
		files += count + 1;
		files += '">x</span>';
		files += '</span>';
		$("#fileAddResult").append(files);
		count++;
	}
	
	// 이미지 수 삽입
	document.getElementsByClassName("num")[1].innerHTML = img_count;
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

/* 글자수 세기 */
var content = $("#fieldCmt").val();
document.getElementsByClassName("num")[0].innerHTML = content.length;

$("#fieldCmt").keyup(function(){
	content = $(this).val();
	document.getElementsByClassName("num")[0].innerHTML = content.length;
});

/* 기존 이미지 수 */
var img_count = $(".del_ck").length;
document.getElementsByClassName("num")[1].innerHTML = img_count;

/* 첫 번째 이미지 삭제 버튼 */
$("#del_btn1").hide();
$(".photo_add").change(function(){
	let val = $("#input_img1").val();
	console.log(val);
	
	if (val != "") {
		$("#del_btn1").show();
	}
});

/* 이미지 삭제 버튼 */
$(".photo_add").change(function(){
	
	var flag = true;
	var length = $(".input_imgs").length;
	
	img_count = $(".del_ck").length;
	
	for(var len=0; len<length; len++) {
		target = document.getElementsByClassName('input_imgs')[len];
		//console.log(target.value);
		// 공백 체크
		if(target.value == "") {
			flag = false;
		} else {
			img_count += 1;
		}
	}
	
	// input tag hidden
	$(".input_imgs").hide();
	
	if (flag == true && img_count < 8) {
		var files = '<span class="inner_photo">';
		files += '<input type="file" name="files2" accept="image/*" class="input_imgs input_img';
		files += count + 1;
		files += '">';
		files += '<span class="del_btn" id="del_btn';
		files += count + 1;
		files += '">x</span>';
		files += '</span>';
		$("#fileAddResult").append(files);
		count += 1;
	}
	
	// 이미지 수 삽입
	document.getElementsByClassName("num")[1].innerHTML = img_count;
	
	/* 이미지 삭제 버튼 show, hide */
	var del_length = $(".del_btn").length;	
	
	for(var i=1; i<=del_length; i++) {
		$(".del_btn").eq(i).show();
		
		if (i == del_length-1) {
			$(".del_btn").eq(i).hide();
		}
	}
});

/* 이미지 삭제 버튼 */
$(".photo_add").on('click', '.del_btn', function(){
	$(this).parent().remove();
	count--;
	
	// 삭제한 input tag의 클래스명
	let delClassName = $(this).prev().attr("class");
	let strArray = delClassName.split(' ');
	delClassName = strArray[1];
	
	let imgTag =document.getElementsByTagName("img");
	for(i=0; i<imgTag.length; i++){
		if (imgTag[i].getAttribute("class") == delClassName) {
			imgTag[i].parentNode.removeChild(imgTag[i]);
		}
	}
	
	var flag = true;
	var length = $(".input_imgs").length;
	// 이미지 수 count
	var img_count = $(".del_ck").length;

	for(var len=0; len<length; len++) {
		target = document.getElementsByClassName('input_imgs')[len];
		//console.log(target.value);
		// 공백 체크
		if(target.value == "") {
			flag = false;
		} else {
			img_count += 1;
		}
	}
	
	if (flag == true && count < 8) {
		var files = '<span class="inner_photo">';
		files += '<input type="file" name="files2" accept="image/*" class="input_imgs input_img';
		files += count + 1;
		files += '">';
		files += '<span class="del_btn">x</span>';
		files += '</span>';
		$("#fileAddResult").append(files);
		count++;
	}
	// 이미지 수 삽입
	document.getElementsByClassName("num")[1].innerHTML = img_count;
});


/* 이미지 미리보기 */
$(".photo_add").on('change', '.input_imgs', function(event){
	let className = this.getAttribute('class')	
	let strArray = className.split(' ');
	let imgClassName = strArray[1];
	
	let imgTag =document.getElementsByTagName("img");
	for(i=0; i<imgTag.length; i++){
		// 이미지 미리보기 : 이미 존재하는 경우 삭제
		if (imgTag[i].getAttribute("class") == imgClassName) {
			imgTag[i].parentNode.removeChild(imgTag[i]);
		}
	}
	setThumbnail(event, imgClassName);
});

function setThumbnail(event, imgClassName) {
	var reader = new FileReader();
	reader.onload = function(event) {
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		img.setAttribute("class", imgClassName);
		
		/*var span = document.createElement("span");
		span.setAttribute("class", "del_btn");
		span.setAttribute("id", );
		span.innerText = "x";*/
		
		document.querySelector("span#image_container").appendChild(img);
		//document.querySelector("div#image_container").appendChild(span);
	};
	reader.readAsDataURL(event.target.files[0]);
}