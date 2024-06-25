<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />
<link href="${pageContext.request.contextPath}/css/Payment.css" rel="stylesheet" />
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="subCont">
   <div class="catagWrap">
       <div class="catagCont">
           <h3 data-aos="fade-right" data-aos-duration="1000">위시리스트</h3>

           <div class="menuList">
               <div class="topUtil">
                   <div class="total">총 <span>6</span>건</div>
               </div>
	               <ul class="menuCont">
			<c:forEach var="wish" items="${wishList}">
	                   <li>
	                       <img src="${pageContext.request.contextPath}/images/product/${wish.product.image}" alt="제품이미지" />
	                       <button class="wishBtn" onClick="location.href='<%= request.getContextPath() %>/deleteWish.do?userId=${sessionScope.userId}&productId=${wish.product.productId }'"><i class="fas fa-heart wish-icon"></i></button>
	                       <div class="menuTxt">
	                       <c:choose>
	                           	<c:when test="${wish.product.category_id == 1}">
				       				<h4>탁주</h4>
				       			</c:when>
				       			<c:when test="${wish.product.category_id == 2}">
				       				<h4>약 · 청주</h4>
				       			</c:when>
				       			<c:when test="${wish.product.category_id == 3}">
				       				<h4>증류주</h4>
				       			</c:when>
				       			<c:when test="${wish.product.category_id == 4}">
				       				<h4>과실주</h4>
				       			</c:when>
				       			<c:when test="${wish.product.category_id == 5}">
				       				<h4>기타주류</h4>
				       			</c:when>
                           </c:choose>
	                           <h5>${wish.product.productName}</h5>
	                           <p><fmt:formatNumber value="${wish.product.productPrice}" type="number" minFractionDigits="0" maxFractionDigits="0"/>원</p>
	                       </div>
	                   </li>
			</c:forEach>	
	               </ul>
               <div class="pagination">
                   <ul>
                       <!-- <li><a href="" class="first">첫페이지</a></li> -->
                       <li><a href="" class="prev"><i class="fas fa-caret-left"></i></a></li>
                       <li><a href="" class="active">1</a></li>
                       <li><a href="">2</a></li>
                       <li><a href="">3</a></li>
                       <li><a href="">4</a></li>
                       <li><a href="">5</a></li>
                       <li><a href="" class="next"><i class="fas fa-caret-right"></i></a></li>
                       <!-- <li><a href="" class="last">끝페이지</a></li> -->
                    </ul>
                </div>
            </div>
        </div>
    </div>
    

</div><!--/subCont-->

<jsp:include page="/include/Footer.jsp" />