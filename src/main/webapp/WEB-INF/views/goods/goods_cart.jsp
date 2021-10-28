<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="마켓컬리 :: 내일의 장보기, 마켓 컬리">
    <meta name="description" content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!">
    <meta property="og:title" content="마켓컬리 :: 내일의 장보기, 마켓컬리">
    <meta property="og:description" content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!">
    <meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo/logo_sns_marketkurly.jpg">
    <meta property="og:url" content="https://www.kurly.com/shop/main/index.php?">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="www.kurly.com">
    <meta name="keywords" content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식">
    <title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../resources/css/reset.css">
    <link rel="stylesheet" href="../../resources/css/cart/cart.css">
    <script src="../../resources/js/jquery-3.4.1.js"></script>
    <script src="../../resources/js/add.js"></script>
<style>
 	input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
</style>
<script type="text/javascript">
$(function(){

    $("#btnList").click(function(){
        location.href="../goods_list";
    });

    $("#btnDelete").click(function(){
        if(confirm("장바구니를 비우시겠습니까?")){
            location.href="./deleteAll?userId=${map.userId}";
        }
    });
});
</script>
<c:import url="../temp/header.jsp"></c:import>
</head>
<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <header id="header" class="fixed-top">
        <script>
            loadHTML("/header.html");
        </script>
    </header>


    <section>

        <div class="tit_page">
            <h2 class="tit">장바구니</h2>
        </div>


        <div id="content">

            <link rel="stylesheet" type="text/css" href="/asset/css/cart/list.bundle.css?ver=1.41.1">
            <link rel="preload" as="script" href="/asset/js/cart/list.bundle.js?ver=1.41.1">
            <h3 class="screen_out">장바구니 상품 목록</h3>

		            <form>
		                <div id="cartItemList" class="only_pc" style="min-height: 563px;">
		                
		                <c:choose>
   							<c:when test="${map.count == 0}">
		                
		                    <div class="empty">
		                        <div class="cart_item no_item">
		                            <div class="cart_select">
		                                <div class="inner_select"><label class="check"><input type="checkbox" name="checkAll"
		                                            disabled="" checked=""><span class="ico"></span>전체선택 (0/0)</label><a
		                                        href="#none" class="btn_delete">선택삭제</a></div>
		                            </div>
		                            <div class="inner_empty"><span class="bg"></span>
		                                <p class="txt">장바구니에 담긴 상품이 없습니다</p>
		                                <div class="btn_submit"><button type="button" class="btn disabled">상품을 담아주세요</button>
		                                </div>
		                            </div>
		
		                            
		                            </div>
		                            <div class="cart_select">
		                                <div class="inner_select"><label class="check"><input type="checkbox" name="checkAll"
		                                            disabled="" checked=""><span class="ico"></span>전체선택 (0/0)</label><a
		                                        href="#none" class="btn_delete">선택삭제</a></div>
		                            </div>
		                        </div>
            				</c:when>
            				
            				<c:otherwise>
            					<div>
									<input type="checkbox" id="cbxAll" name="cbxAll" class="cbxSelect"/>
									<label for="cbxAll">전체선택</label> 
									<span>&nbsp;&nbsp;</span> <input type="button" value="선택삭제" onclick="deleteCbx()" class="btn_delete" />
								</div>
								<hr/>

							    <table border="1" width="400px">
							    	<tr>
							        	<th>선택</th>
							            <th>상품명</th>
							            <th>단가</th>
							            <th>수량</th>
							            <th>금액</th>
							            <th>&nbsp;</th>
							            </tr>
							            <input type="text" id="hiddenVal" value="${fn:length(map.list)}" hidden="hidden" />
							            <input type="text" id="userIdVal" value="${map.userId}" hidden="hidden" />  
            				
            							<c:forEach var="row" items="${map.list}" varStatus="status">
					              		  <tr align="center">
						                	<td>
						                		<input type="checkbox" id="cbx_${status.index}" name="cbx_minor" class="cbxSelect cbxMinor" checked="checked"
						                		value="${row.cart_id}"/>

						                	</td>
						                
						                    <td>${row.product_name}</td>
						                    
						                    <td><fmt:formatNumber value="${row.price}"
						                            pattern="#,###,###" /></td>
						                            
						                    <td>
												<div>
													<button type="button" class="btn minus off" data-item-id="${row.product_id}" data-opt="decrease"
													onclick="minusAmount(${row.cart_id})">-</button>
													
													<input type="number" style="width:20px;" value="${row.amount}" class="num" id="stepperCounter" />
													
													<button type="button" class="btn plus" data-item-id="${row.product_id}" data-opt="increase"
													onclick="plusAmount(${row.cart_id})">+</button>
												</div>
												
						                            <input type="hidden" name="cart_id" id="cart_id${status.index}"
						                            value="${row.cart_id}">                             
						                    </td>
						                    <td><fmt:formatNumber value="${row.money}"
						                            pattern="#,###,###" /></td>
						                    <td><a href="./deleteOne?cart_id=${row.cart_id}">X</a>
						                    </td>
					                	</tr>
                 					</c:forEach>
          						 </table>
            					</c:otherwise>
            			</c:choose>
            
            
            
            
                        <div class="cart_result">
                            <div class="inner_result" style="top: 60px;">
                                <div class="cart_delivery">
                                    <h3 class="tit">배송지</h3>
                                    <div class="no_address" id="destination"><class="emph">배송지를 입력</span>하고<br>배송유형을 확인해 보세요!<a
                                            href="#" class="btn default"><span class="ico"></span>주소 검색</a></div>
                                </div>
                                <div class="amount_view">
                                    <dl class="amount">
                                        <dt class="tit">상품금액</dt>
                                        <dd class="price"><span class="num">${map.sumMoney}</span><span class="won">원</span></dd>
                                    </dl>
                                    <dl class="amount">
                                        <dt class="tit">상품할인금액</dt>
                                        <dd class="price"><span class="num">0</span><span class="won">원</span></dd>
                                    </dl>
                                    <dl class="amount">
                                        <dt class="tit">배송비</dt>
                                        <dd class="price"><span class="num">${map.fee}</span><span class="won">원</span></dd>
                                    </dl>
                                    <dl class="amount lst">
                                        <dt class="tit">결제예정금액</dt>
                                        <dd class="price"><span class="num">${map.sum}</span><span class="won">원</span></dd>
                                    </dl>
                                    <div class="reserve"></div>
                                </div>
                                <div class="btn_submit"><button type="submit" class="btn disabled">주문하기</button>
                                </div>
                                <div class="notice"><span class="txt"><span class="ico">·</span>‘입금확인’ 상태일 때는 주문 내역 상세에서
                                        직접 주문취소가 가능합니다.</span><span class="txt"><span class="ico">·</span>‘입금확인’ 이후 상태에는
                                        고객센터로 문의해주세요.</span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <form id="viewCart" name="frmCart" method="post" action="/shop/order/order.php">
                <input type="hidden" name="mode" value="setOrder">
            </form>
            <script src="/appProxy/appData.php?ver=1.41.1"></script>
            <script src="/asset/js/cart/list.bundle.js?ver=1.41.1"></script>
            <script>
                _cart.showItemList('pc');

                /**
                 * 스크롤 이벤트 : CartContainer.jsx 에서 호출
                 * 스크립트 재시작 요건
                 * 아이템 삭제시
                 * 주소가 변경시
                 * 목록접을때
                 * 위치 값이 달라지는 경우
                 * .off('scroll') 을 사용할수 없음. gnb 때문에
                 */
                function resultPosition() {
                    var objTarget = {};

                    objTarget = {
                        winHeight: $(window).height(),
                        gnbHeight: $('#gnbMenu').height(),
                        moveBox: $('.cart_result').find('.inner_result'),
                        boxHeight: $('.cart_result').find('.inner_result').height(),
                        baseTop: $('#cartItemList').offset().top - $('#gnbMenu').height()
                    }

                    var _position = {
                        scroll: function () {
                            var that = this,
                                num = 0;
                            $(window).scroll(function () {
                                num = $(this).scrollTop().toFixed(0);
                                that.scrollEvent(num);
                            }).scroll();
                            if (num === 0) {
                                that.scrollEvent(num);
                            }
                        },
                        scrollEvent: function (num) {
                            num = num - objTarget.baseTop + objTarget.gnbHeight;
                            var baseHeight = $('#cartItemList').height();
                            var resultBox = baseHeight - objTarget.boxHeight;
                            if (objTarget.boxHeight > objTarget.winHeight || baseHeight <= objTarget
                                .boxHeight) {
                                num = 0;
                                $('#cartItemList').css({
                                    'minHeight': objTarget.boxHeight
                                });
                            }
                            if (num > resultBox) {
                                num = resultBox;
                            }
                            objTarget.moveBox.css({
                                top: num <= 60 ? 60 : num
                            });
                        }
                    }

                    _position.scroll();
                }

                KurlyTracker.setScreenName('cart');

                function reloadAction() {
                    location.reload();
                }
            </script>
        </div>
    </section>

    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("/footer.html");
        </script>
    </footer>

<script type="text/javascript">
	$(document).ready(function(){
		// 전체 체크박스 클릭 시 작동
		$('#cbxAll').click(function(){
			if($('#cbxAll').prop('checked')) {
				$('.cbxSelect').prop('checked', true);
			} else {
				$('.cbxSelect').prop('checked', false);
			}
		});
		
		// 전체 체크박스 선택 중 하위 체크박스 하나가 풀렸을 때 전체 체크 해제
		$('.cbxSelect').click(function(){
			if($('.cbxMinor:checked').length == $('#hiddenVal').val()){
				$('#cbxAll').prop('checked', true);
			} else {
				$('#cbxAll').prop('checked', false);
			}
		});
	});

</script>
<script type="text/javascript">
if($('#cbxMinor').prop('checked', true)){
	$('#cbxAll').prop('checked', true);
}

$('#btn_order').click(function(){
	$("#form1").submit();
});

</script>
<script type="text/javascript" src="../../resources/js/goods_cart.js"></script>
<script type="text/javascript" src="../../resources/js/cart_result.js"></script>
<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>