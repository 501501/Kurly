$(document).ready(function () {
    $('.bxslider').bxSlider({
        mode: 'horizontal',
        speed: 300,
        pager: false,
        moveSlides: 1,
        auto: true,
        autoHover: true,
        controls: true,
        touchEnabled: false
    });
});


$(function(){
    var main = $('.bxslider, .bx-wrapper .bx-controls-direction');
    var mainBtn = $('.bx-wrapper .bx-controls-direction');

    $(function(){
        mainBtn.css('opacity', '0')
        main.mouseover(function(){
            mainBtn.css('opacity', '1').css('transition', '0.5s')
        })
        main.mouseout(function(){
            mainBtn.css('opacity', '0').css('transition', '0.5s')
        })
    })
})




/*

가로 방향 수평 슬라이드 mode: 'horizontal',

이동 속도를 설정 speed: 500,

현재 위치 페이징 표시 여부 설정  pager: false,

슬라이드 이동시 개수 moveSlides: 1,
 
슬라이드 너비 slideWidth: 100,
 
최소 노출 개수minSlides: 4,
 
최대 노출 개수 maxSlides: 4,

슬라이드간의 간격 slideMargin: 5,

자동 실행 여부 auto: true,
 
마우스 호버시 정지 여부 autoHover: true,

이전 다음 버튼 노출 여부 controls: false
*/