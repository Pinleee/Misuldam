<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />

<div class="subCont">
   <div class="detailWrap">
       <div class="detailCont">
           <div class="detailProd">
               <div class="imgWrap">
                   <img src="../images/detail01.jpg" alt="제품이미지" />
               </div>
               <div class="detailTxt">
                   <h3>제주샘주 니모메11도 375ml 제주 감귤 전통주</h3>
                   <div class="reviewLink">
                       <a href="">64개 리뷰보기</a>
                   </div>
                   <p class="price">9,000<span>원</span></p>
                   <div class="delivery">
                       <h5>배송비</h5>
                       <div class="rDeli">
                           <p>3,000원 / 주문시결제(선결제)</p>
                           <p>30,000원 이상 구매시 무료배송</p>
                       </div>
                   </div>
                   <div class="certiCont">
                       <div class="badge"><span>19</span></div>
                       <p>이 상품은 관계 법령에 따라 19세 이상 성인인증을 하셔야 구매 가능합니다.</p>
                   </div>
                   <div class="volume">
                       <input type='button' onclick='count("minus")' value='-'/>
                       <div id='volumeTotal'>0</div>
                       <input type='button' onclick='count("plus")' value='+'/>
                   </div>
                   <div class="detailBtn">
                       <button class="shoppingBag">장바구니 담기</button>
                       <button class="shoppingNow">바로 구매하기</button>
                   </div>
               </div>
           </div>

           <div class="prodExplan">
               <h4>상품정보</h4>
               <p>국가는 농지에 관하여 경자유전의 원칙이 달성될 수 있도록 노력하여야 하며, 농지의 소작제도는 금지된다. 정당은 그 목적·조직과 활동이 민주적이어야 하며, 국민의 정치적 의사형성에 참여하는데 필요한 조직을 가져야 한다.
                   재의의 요구가 있을 때에는 국회는 재의에 붙이고, 재적의원과반수의 출석과 출석의원 3분의 2 이상의 찬성으로 전과 같은 의결을 하면 그 법률안은 법률로서 확정된다.
                   모든 국민은 인간으로서의 존엄과 가치를 가지며, 행복을 추구할 권리를 가진다. 국가는 개인이 가지는 불가침의 기본적 인권을 확인하고 이를 보장할 의무를 진다.
                   대통령은 조국의 평화적 통일을 위한 성실한 의무를 진다. 대통령으로 선거될 수 있는 자는 국회의원의 피선거권이 있고 선거일 현재 40세에 달하여야 한다.</p>
           </div>

           <div class="reviewWrap">
               <div class="reviewTop"><h3>리뷰</h3></div>
               <ul class="reviewList">
                   <li>
                       <div class="reviewId">ID : <span>alkfds</span></div>
                       <div class="reviewTxt">
                           <p>처음 마셔보는 제품인데 일단 패키지 부터가 너무 상큼하고 귀여워서 기대하고 구입했어요! 마셔보고 괜찮으면 재구입해보려구요.</p>
                       </div>
                   </li>
                   <li>
                       <div class="reviewId">ID : <span>01afa2</span></div>
                       <div class="reviewTxt">
                           <p>국가는 농지에 관하여 경자유전의 원칙이 달성될 수 있도록 노력하여야 하며, 농지의 소작제도는 금지된다. 정당은 그 목적·조직과 활동이 민주적이어야 하며, 국민의 정치적 의사형성에 참여하는데 필요한 조직을 가져야 한다.</p>
                       </div>
                   </li>
                   <li>
                       <div class="reviewId">ID : <span>8afs4d54</span></div>
                       <div class="reviewTxt">
                           <p>선물용으로 구매했어요 맛은 잘모르겠지만 배송도 빠르고 언제나 만족스럽습니다 다음주문또 할게요</p>
                       </div>
                   </li>
                   <li>
                       <div class="reviewId">ID : <span>asdfad</span></div>
                       <div class="reviewTxt">
                           <p>이자카야에서 먹어보고 넘 맛나서 구매했어요. 바로 재구매했네요. 차갑게 마시면 진짜 좋아요</p>
                       </div>
                   </li>
                   <li>
                       <div class="reviewId">ID : <span>hahedeh</span></div>
                       <div class="reviewTxt">
                           <p>첨에 먹을때 윽..뭐지 해서 한잔먹고 냉장고 킵해뒀다가 오늘 한병다 클리어했네요 술술 들어가고 한잔먹고 냉장숙성해서 그런지 첫잔보다 부드럽게 잘 먹었오요</p>
                       </div>
                   </li>
                   <li>
                       <div class="reviewId">ID : <span>kmuuy</span></div>
                       <div class="reviewTxt">
                           <p>술 좋아하시는 분에게 선물드렸는데 너무 좋아하셨어요! 전통주 맛볼 수 있어 좋은 것 같아요~</p>
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
    

</div><!--//subCont-->

<jsp:include page="/include/Footer.jsp" />