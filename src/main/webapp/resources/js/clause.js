/**
 *  이용약관 js
 */
 
 /** 이용약관 전체동의 기능*/

$(document).ready(function(){
    $('.checkAll').click(function(){
        if($('.checkAll').prop('checked')){
            $('.cbx').prop('checked', true);
        } else {
            $('.cbx').prop('checked', false);
        }
    });

    $('.cbx').click(function(){
        if($('.check-view:checked').length == 7){
            $('.checkAll').prop('checked', true);
        } else {
            $('.checkAll').prop('checked', false);
        }
    });

    $('#cbx-com').click(function(){
        if($('#cbx-com').prop('checked')){
            $('.market-check').prop('checked', true);
        } else {
            $('.market-check').prop('checked', false);
        }
    });

    $('.market-check').click(function(){
        if($('.dot:checked').length == 2){
            $('#cbx-com').prop('checked', true);
        } else {
            $('#cbx-com').prop('checked', false);
        }
    });
});	