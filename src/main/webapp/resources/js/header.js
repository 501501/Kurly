$(function () {
    $('.btn_top_bnr').click(function () {
        $('.bnr_header').css('margin-top', '-45px').css('transition', '0.3s')
    })
})


$(function () {
    var menu = $('.menu1 a');

    menu.mouseover(function () {
            menu.removeClass('on');
            $(this).addClass('on');
        })
        .mouseout(function () {
            menu.removeClass('on');
        });
})

$(function () {
    var menu = $('.menu1, .gnb_sub');

    menu.mouseover(function () {
            $('.gnb_sub').css('display', 'block')
        })
        .mouseout(function () {
            $('.gnb_sub').css('display', 'none')
        });
})



$(function () {
    var menu = $('.gnb_menu li');

    menu.mouseover(function () {
            $('.gnb_sub').css('width', '438px').css('transition', '0.5s')
        })
        .mouseout(function () {
            $('.gnb_sub').css('width', '219px').css('transition', '0.5s')
        });
})


$(function () {
    var menu = $('#recommend_o');

    menu.mouseover(function () {
        $('.gnb_sub').css('width', '730px')
    })
})

$(function () {
    var menu = $('.gnb_menu li')

    menu.mouseover(function () {
            menu.removeClass('current');
            $(this).addClass('current');
        })
        .mouseout(function () {
            menu.removeClass('current');
        });
})


$(function () {
    $('.inp_search').on('keyup', function () {
        $('.btn_delete').css('opacity', '1')
    })
})


$(function () {
    var search = $('.inp_search')

    search.click(function () {
        search.removeClass('focus');
        $(this).addClass('focus');
    })

    $('.inp_search').blur(function () {
        search.removeClass('focus');
    });
})


$(function () {
    var lnb = $("#gnb").offset().top;
    $(window).scroll(function () {
        var window = $(this).scrollTop();

        if (lnb <= window) {
            $("#gnb").addClass("gnb_stop");
        } else {
            $("#gnb").removeClass("gnb_stop");
        }
    })
})