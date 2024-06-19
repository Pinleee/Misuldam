<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />
<link href="${pageContext.request.contextPath}/css/Payment.css" rel="stylesheet" />

<div class="subCont">
   <div class="catagWrap">
       <div class="catagCont">
           <h3 data-aos="fade-right" data-aos-duration="1000">위시리스트</h3>

           <div class="menuList">
               <div class="topUtil">
                   <div class="total">총 <span>6</span>건</div>
               </div>
               <ul class="menuCont">
                   <li>
                       <img src="../images/prod01.jpg" alt="제품이미지" />
                       <button class="wishBtn" onClick="location.href='<%= request.getContextPath() %>/payment/Cart.jsp'"><i class="fas fa-heart wish-icon"></i></button>
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
                   </li>
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