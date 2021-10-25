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

//초기 input file 삭제 버튼 숨기기
window.onload = function(){
	$("#del_btn1").hide();
}

/* 이미지 태그 추가 */
var count = 1;
$(".photo_add").change(function(){	
	var flag = true;
	var length = $(".input_imgs").length;
	// 이미지 수 count
	var img_count = 0;

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
	
	if (flag == true && count < 8) {
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
	
	/* 이미지 삭제 버튼 show, hide */
	var del_length = $(".del_btn").length;	
	for(var i=0;i<del_length;i++) {
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
	var img_count = 0;

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
		
		document.querySelector("div#image_container").appendChild(img);
		//document.querySelector("div#image_container").appendChild(span);
	};
	reader.readAsDataURL(event.target.files[0]);
}