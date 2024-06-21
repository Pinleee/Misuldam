<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />
<link href="${pageContext.request.contextPath}/css/Payment.css" rel="stylesheet" />

<div class="subCont">
   <div class="catagWrap">
       <div class="catagCont">
           <h3 data-aos="fade-right" data-aos-duration="1000">장바구니</h3>

           <div class="menuList">
               <div class="topUtil">
                   <div class="total">총 <span>2</span>건</div>
               </div>
               	<section class="cart">
        <div class="cart__information">
            <ul>
                <li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
                <li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
            </ul>
        </div>
        <table class="cart__list">
            <form>
                <thead>
                    <tr>
                        <td></td>
                        <td colspan="2">상품정보</td>
                        <td>옵션</td>
                        <td>상품금액</td>
                        <td>배송비</td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="cart__list__detail">
                        <td><button class="cart-minus"><i class="fas fa-minus-circle"></i></button></td>
                        <td><img src="${pageContext.request.contextPath}/images/assort03.jpg"></td>
                        <td><a href="#">증류주</a>
                            <p class="pro_name">일품진로 (17도)</p>
                            <sapn class="price">14,500원</sapn>
                        </td>
                        <td class="cart__list__option">
                            <p>제품명 : 일품진로 (17도) / 1개</p>
                            <button class="cart__list__optionbtn">주문조건 추가/변경</button>
                        </td>
                        <td><span class="price">14,500원</span><br>
                        </td>
                        <td>무료</td>
                    </tr>
                    <tr class="cart__list__detail">
                        <td style="width: 2%;"><button class="cart-minus"><i class="fas fa-minus-circle"></i></button></td>
                        <td style="width: 13%;">
                            <img src="${pageContext.request.contextPath}/images/assort03.jpg">
                        </td>
                        <td style="width: 27%;"><a href="#">증류주</a>
                            <p class="pro_name">일품진로 (23도)</p>
                            <span class=" price">28,500원</span>
                        </td>
                        <td class="cart__list__option" style="width: 27%;">
                            <p>제품명 : 일품진로 (23도) / 2개</p>
                            <button class="cart__list__optionbtn">주문조건 추가/변경</button>
                        </td>
                        <td style="width: 15%;"><span class="price">57,500원</span><br>
                        </td>
                        <td style="width: 15%;">무료</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3"></td>
                        <td></td>
                        <td>배송비 포함:</td>
                        <td>75,000원</td>
                    </tr>
                </tfoot>
            </form>
        </table>
        <div class="cart__mainbtns">
            <button class="cart__bigorderbtn left">쇼핑 계속하기</button>
            <button class="cart__bigorderbtn right" onClick="location.href='<%= request.getContextPath() %>/payment/Payment.jsp'">주문하기</button>
        </div>
    </section>

               
            </div>
        </div>
    </div>
    

</div><!--/subCont-->

<jsp:include page="/include/Footer.jsp" />