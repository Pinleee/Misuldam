<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<jsp:include page="/include/Header.jsp" />

<div class="subCont">
   <div class="catagWrap">
       <div class="catagCont">
       <c:forEach var="cata" items="${productList}" begin="0" end="0">
       		<c:choose>
       			<c:when test="${cata.category_id == 1}">
       				<h3 data-aos="fade-right" data-aos-duration="1000">탁주</h3>
           			<h4 data-aos="fade-right" data-aos-duration="1500" data-aos-delay="700">발효시킨 술덧을 여과하지 않고 제성한 술</h4>
       			</c:when>
       			<c:when test="${cata.category_id == 2}">
       				<h3 data-aos="fade-right" data-aos-duration="1000">약 · 청주</h3>
           			<h4 data-aos="fade-right" data-aos-duration="1500" data-aos-delay="700">발효시킨 술덧을 여과하여 제성한 술</h4>
       			</c:when>
       			<c:when test="${cata.category_id == 3}">
       				<h3 data-aos="fade-right" data-aos-duration="1000">증류주</h3>
           			<h4 data-aos="fade-right" data-aos-duration="1500" data-aos-delay="700">1차로 발효된 양조주를 다시 증류시켜 알코올 도수를 높인 술</h4>
       			</c:when>
       			<c:when test="${cata.category_id == 4}">
       				<h3 data-aos="fade-right" data-aos-duration="1000">과실주</h3>
           			<h4 data-aos="fade-right" data-aos-duration="1500" data-aos-delay="700">과실을 원료로 하여 발효시킨 술</h4>
       			</c:when>
       			<c:when test="${cata.category_id == 5}">
       				<h3 data-aos="fade-right" data-aos-duration="1000">기타주류</h3>
           			<h4 data-aos="fade-right" data-aos-duration="1500" data-aos-delay="700">주세법상 분류된 증류주나 발효주 외의 술</h4>
       			</c:when>
       		</c:choose>
       	</c:forEach>>
           

           <div class="menuList">
               <div class="topUtil">
                   <div class="total">총 <span>89</span>건</div>
                   <div class="searchBtn"><input type="text" placeholder="제품검색"><span class="searchIco"><i class="fas fa-search"></i></span></div>
               </div>
               <ul class="menuCont">
               	<c:forEach var="product" items="${productList}">
               		<a href="<%= request.getContextPath() %>/Detail.fo?productNum=${product.productId}" class="prodList">
               		<li>
               			<img src="${pageContext.request.contextPath}/images/product/${product.image}" alt="제품이미지" />
               			<div class="menuTxt">
                          <%--  <h4>${product.category_id}</h4> --%>
                           <c:choose>
	                           	<c:when test="${product.category_id == 1}">
				       				<h4>탁주</h4>
				       			</c:when>
				       			<c:when test="${product.category_id == 2}">
				       				<h4>약 · 청주</h4>
				       			</c:when>
				       			<c:when test="${product.category_id == 3}">
				       				<h4>증류주</h4>
				       			</c:when>
				       			<c:when test="${product.category_id == 4}">
				       				<h4>과실주</h4>
				       			</c:when>
				       			<c:when test="${product.category_id == 5}">
				       				<h4>기타주류</h4>
				       			</c:when>
                           </c:choose>
                           
                           <h5>${product.productName}</h5>
                           <p>${product.productPrice}</p>
                           <button onClick="location.href='<%= request.getContextPath() %>/insertWish.do?productId=${product.productId}&userId=${sessionScope.userId}'" class="wishBtn"><i class="far fa-heart"></i></button>
                       </div>
               		</li>
               		</a>
               	</c:forEach>
                   <!-- <li>
                       <img src="../images/prod01.jpg" alt="제품이미지" />
                       <div class="menuTxt">
                           <h4>탁주</h4>
                           <h5>제주샘주 니모메11도 375ml 제주 감귤 전통주</h5>
                           <p>9,000</p>
                       </div>
                   </li>
                   <li>
                       <img src="../images/prod02.jpg" alt="제품이미지" />
                       <div class="menuTxt">
                           <h4>탁주</h4>
                           <h5>양촌양조 양촌 우렁이쌀 청주 14도 500ml 무농약쌀 무감미료</h5>
                           <p>9,000</p>
                       </div>
                   </li>
                   <li>
                       <img src="../images/prod03.jpg" alt="제품이미지" />
                       <div class="menuTxt">
                           <h4>탁주</h4>
                           <h5>골목식당 골목생막걸리 12도350ml 백종원대표공동개발</h5>
                           <p>9,000</p>
                       </div>
                   </li>
                   <li>
                       <img src="../images/prod04.jpg" alt="제품이미지" />
                       <div class="menuTxt">
                           <h4>탁주</h4>
                           <h5>술샘 꿀샘 16 벌꿀주 375ml</h5>
                           <p>9,000</p>
                       </div>
                   </li>
                   <li>
                       <img src="../images/prod05.jpg" alt="제품이미지" />
                       <div class="menuTxt">
                           <h4>탁주</h4>
                           <h5>배금도가 찹쌀생막걸리 12도 500ml 무감미료</h5>
                           <p>9,000</p>
                       </div>
                   </li>
                   <li>
                       <img src="../images/prod06.jpg" alt="제품이미지" />
                       <div class="menuTxt">
                           <h4>탁주</h4>
                           <h5>영덕주조 도원결의 40도 360ml 복숭아 증류주</h5>
                           <p>9,000</p>
                       </div>
                   </li> -->
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