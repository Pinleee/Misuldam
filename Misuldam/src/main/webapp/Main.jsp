<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />

<div class="mainCont">
                
    <div class="visualWrap">
        <video class="video" autoplay muted loop>
            <source type="video/mp4" src="${pageContext.request.contextPath}/images/test.mp4" >
        </video>
        <h2 class="visualTxt" data-aos="zoom-out" data-aos-duration="3000">아름다움과 술을 담다.</h2>
    </div>

    <div class="assortWrap">
        <div class="assortInner">
            <h3 data-aos="fade-right" data-aos-duration="1000">전통주란?</h3>
            <h4 data-aos="fade-right" data-aos-duration="1500" data-aos-delay="700">과거부터 이어져오는 양조법으로 만든 술로, 전통적인 양조법을 계승 및 보존하여 빚는 술</h4>
            
            <div class="assortCont">
                <ul class="assortDepth">
                    <li class="dep01 active">탁주</li>
                    <li class="dep02">약 · 청주</li>
                    <li class="dep03">증류주</li>
                    <li class="dep04">과실주</li>
                </ul>
                <ul class="assortList">
                    <li class="depC01">
                        <div class="asImg"><img src="${pageContext.request.contextPath}/images/assort02.jpg" alt="탁주 이미지" /></div>
                        <p>우리나라 고유한 술로 맑은술을 떠내지 아니하고 그대로 걸러 짠 술로 빛깔이 흐린것이 특징이다.<br />쌀이나 밀에 누룩을 첨가하여 발효시켜 만든다.<br /> 쌀 막걸리의 경우 쌀을 깨끗이 씻어 고두밥을 지어 식힌 후, 누룩과 물을 넣고 수일 간 발효시켜 체에 거르는 과정을 통해 만들어진다.우리나라 고유한 술로 맑은술을 떠내지 아니하고 그대로 걸러 짠 술로 빛깔이 흐린것이 특징이다.<br />
                            <br /><br />발효할 때에 알코올 발효와 함께 유산균 발효가 이루어진다. 막걸리의 알코올 도수는 4~18% 정도로 다양하다. 찹쌀·멥쌀·보리·밀가루 등을 쪄서 식힌 다음 누룩과 물을 섞고 일정한 온도에서 발효시켜 술 지게미를 걸러 만든다. 이때 술지게미를 거르지 않고 밥풀을 띄운 것을 동동주라고 한다.</p>
                    </li>
                    <li class="depC02">
                        <div class="asImg"><img src="${pageContext.request.contextPath}/images/assort01.jpg" alt="약청주 이미지" /></div>
                        <p>청주(淸酒, Cheongju)는 곡식으로 만드는 한국의 전통주로, 곡식 가루를 뭉쳐 곰팡이와 효모를 번식시킨 누룩으로 쌀을 당화 발효시켜 만든다.<br /> 맑은술(clear wine) 또는 징주(澄酒)라고도 한다. 쌀알갱이와 쌀가루가 섞여 있는 발효 직후의 원주를 정제하여 맑은 부분만 떠낸 것이며, 탁한 상태 그대로 마시는 것은 탁주(濁酒)라고 한다.<br />
                            <br /><br />약주나 약술로 불리기도 하는데 이는 조선시대 금주령이 내려지자 특권층들이 약제로 위장하여 마셨기 때문으로 추측된다.<br />알코올 도수는 13~18%다. 포도주처럼 식사를 하며 반주로 들기 적합한 술이다. 요리에 요긴하다는 점도 비슷한데, 고기의 누린내와 생선의 비린내를 제거해 요리의 풍미를 돋우는 역할을 한다.</p>
                    </li>
                    <li class="depC03">
                        <div class="asImg"><img src="${pageContext.request.contextPath}/images/assort03.jpg" alt="증류주 이미지" /></div>
                        <p>증류주(蒸溜酒)는 발효된 술을 다시 증류해서 만든 술로, 알코올 도수가 높다는 점이 일반적인 특징이다. 전 세계 각 나라 각 지역마다 여러 종류의 증류주가 존재한다.<br />증류식 소주는 크게보면 일반적인 형태인 소주(정확히 말하면 순곡소주)와 각종 부재료를 순곡소주에 첨가한 약소주, 이렇게 2종류로 나누어진다.
                            <br /><br /><br />술은 알코올과 물을 주성분으로 하는데 알코올의 끓는점은 약 78.325°C이며 물의 끓는점은 약 100°C이다. 따라서 술을 가열하면 알코올이 증발하게 된다. 술을 만들 때 증기를 모으고 액체를 배출하면 원래 술보다 알코올 도수가 높은 술이 만들어지는데 이것이 증류주이다. 증류주는 그대로 마시거나 원통형의 나무통 등에서 숙성시킨 후에 마신다.</p>
                    </li>
                    <li class="depC04">
                        <div class="asImg"><img src="${pageContext.request.contextPath}/images/assort04.jpg" alt="과실주 이미지" /></div>
                        <p>과실주(果實酒)는 과일을 이용하여 발효시켜 만든 술을 의미한다. 포도·사과·체리·매실 등으로 만든다. 당분이 많은 술로 과일을 으깨어 그 즙을 발효시켜 4년 이상 숙성시킨다. 알코올이 8∼12% 정도 들어 있으며, 숙성한 과실주는 붉은색·흰색·분홍색을 띤다. 차게 해서 마시거나, 실내 온도 정도로 맞추어 마시는 것이 좋다.<br />
                            <br /><br />과일을 재료로 해서 만든 술. 과일이나 과즙을 발효하여 만든 술과 술에 과일을 담그거나 섞어 만든 것으로 나뉜다. '과실주', '과일술'이라고도 한다.<br />영어로는 Wine이라고 한다. Wine이라는 말은 원래는 포도주를 일컫지만 영어에서는 과일을 발효한 술 전반에 확장되어 쓰이고, 심지어는 막걸리까지 Rice Wine이라 하기도 한다</p>
                    </li>
                </ul>
            </div>
        </div>
     </div><!-- //assortWrap -->
        
  		<div class="prodWrap">
              <div class="prodCont">
                  <h3 data-aos="fade-right" data-aos-duration="1000">전통주 메뉴</h3>
                  <h4 data-aos="fade-right" data-aos-duration="1500" data-aos-delay="700">미술담에서 판매하는 Best Menu를 확인하세요.</h4>
                  
                  <ul class="prodSlide">
                      <li>
                          <img src="${pageContext.request.contextPath}/images/prod01.jpg" alt="술이미지" />
                          <h5>제주샘주 니모메11도 375ml<br /> 제주 감귤 전통주</h5>
                      </li>
                      <li>
                          <img src="${pageContext.request.contextPath}/images/prod02.jpg" alt="술이미지" />
                          <h5>양촌양조 양촌 우렁이쌀 청주 14도 <br />500ml 무농약쌀 무감미료</h5>
                      </li>
                      <li>
                          <img src="${pageContext.request.contextPath}/images/prod03.jpg" alt="술이미지" />
                          <h5>골목식당 골목생막걸리 12도350ml <br />백종원대표공동개발</h5>
                      </li>
                      <li>
                          <img src="${pageContext.request.contextPath}/images/prod04.jpg" alt="술이미지" />
                          <h5>술샘 꿀샘 16 벌꿀주 375ml</h5>
                      </li>
                      <li>
                          <img src="${pageContext.request.contextPath}/images/prod05.jpg" alt="술이미지" />
                          <h5>배금도가 찹쌀생막걸리 12도 <br />500ml 무감미료</h5>
                      </li>
                      <li>
                          <img src="${pageContext.request.contextPath}/images/prod06.jpg" alt="술이미지" />
                          <h5>영덕주조 도원결의 40도 360ml <br />복숭아 증류주</h5>
                      </li>
                      <li>
                          <img src="${pageContext.request.contextPath}/images/prod07.jpg" alt="술이미지" />
                          <h5>한강주조 무감미료 나루 생막걸리 <br />6도 800ml 경복궁쌀</h5>
                      </li>
                  </ul>
              </div>
          </div>
    

</div><!-- //mainCont -->



<jsp:include page="/include/Footer.jsp" />