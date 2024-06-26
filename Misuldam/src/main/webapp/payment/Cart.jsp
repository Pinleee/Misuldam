<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />
<link href="${pageContext.request.contextPath}/css/Payment.css" rel="stylesheet" />
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
              <c:forEach var="cart" items="${cartlist}">
                <tbody>
                    <tr class="cart__list__detail">
                        <td><button class="cart-minus"><i class="fas fa-minus-circle"></i></button></td>
                        <td><img src="${pageContext.request.contextPath}/images/product/${cart.product.image}"></td>
                        <td>
                        	 <c:choose>
	                           	<c:when test="${cart.product.category_id == 1}">
				       				<a>탁주</a>
				       			</c:when>
				       			<c:when test="${cart.product.category_id == 2}">
				       				<a>약 · 청주</a>
				       			</c:when>
				       			<c:when test="${cart.product.category_id == 3}">
				       				<a>증류주</a>
				       			</c:when>
				       			<c:when test="${cart.product.category_id == 4}">
				       				<a>과실주</a>
				       			</c:when>
				       			<c:when test="${cart.product.category_id == 5}">
				       				<a>기타주류</a>
				       			</c:when>
                           </c:choose>
                            <p class="pro_name">${cart.product.productName }</p>
                            <sapn class="price"><fmt:formatNumber value="${cart.product.productPrice}" type="number" minFractionDigits="0" maxFractionDigits="0"/>원</sapn>
                        </td>
                        <td class="cart__list__option">
                            <p>제품명 : <span>${cart.product.productName }</span></p>
                            <input type="button" onclick='count("minus")' value='-'/>
                            <div class="count-box">0</div>
                            <input type="button" onclick='count("plus")' value='+'/>
                        </td>
                        <td><span class="price">14,500원</span><br>
                        </td>
                        <td>무료</td>
                    </tr>
                </tbody>
               </c:forEach>
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