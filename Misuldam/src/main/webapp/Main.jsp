<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/Include/Header.jsp" />

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
                        <p>우리나라 고유한 술로 맑은술을 떠내지 아니하고 그대로 걸러 짠 술로 빛깔이 흐린것이 특징이다.<br />쌀이나 밀에 누룩을 첨가하여 발효시켜 만든다.<br /> 쌀 막걸리의 경우 쌀을 깨끗이 씻어 고두밥을 지어 식힌 후, 누룩과 물을 넣고 수일 간 발효시켜 체에 거르는 과정을 통해 만들어진다.우리나라 고유한 술로 맑은술을 떠내지 아니하고 그대로 걸러 짠 술로 빛깔이 흐린것이 특징이다.<br />
                            <br /><br />발효할 때에 알코올 발효와 함께 유산균 발효가 이루어진다. 막걸리의 알코올 도수는 4~18% 정도로 다양하다. 찹쌀·멥쌀·보리·밀가루 등을 쪄서 식힌 다음 누룩과 물을 섞고 일정한 온도에서 발효시켜 술 지게미를 걸러 만든다. 이때 술지게미를 거르지 않고 밥풀을 띄운 것을 동동주라고 한다.</p>
                    </li>
                    <li class="depC03">
                        <div class="asImg"><img src="../images/assort03.jpg" alt="증류주 이미지" /></div>
                        <p>우리나라 고유한 술로 맑은술을 떠내지 아니하고 그대로 걸러 짠 술로 빛깔이 흐린것이 특징이다.<br />쌀이나 밀에 누룩을 첨가하여 발효시켜 만든다.<br /> 쌀 막걸리의 경우 쌀을 깨끗이 씻어 고두밥을 지어 식힌 후, 누룩과 물을 넣고 수일 간 발효시켜 체에 거르는 과정을 통해 만들어진다.우리나라 고유한 술로 맑은술을 떠내지 아니하고 그대로 걸러 짠 술로 빛깔이 흐린것이 특징이다.<br />
                            <br /><br />발효할 때에 알코올 발효와 함께 유산균 발효가 이루어진다. 막걸리의 알코올 도수는 4~18% 정도로 다양하다. 찹쌀·멥쌀·보리·밀가루 등을 쪄서 식힌 다음 누룩과 물을 섞고 일정한 온도에서 발효시켜 술 지게미를 걸러 만든다. 이때 술지게미를 거르지 않고 밥풀을 띄운 것을 동동주라고 한다.</p>
                    </li>
                    <li class="depC04">
                        <div class="asImg"><img src="../images/assort04.jpg" alt="과실주 이미지" /></div>
                        <p>우리나라 고유한 술로 맑은술을 떠내지 아니하고 그대로 걸러 짠 술로 빛깔이 흐린것이 특징이다.<br />쌀이나 밀에 누룩을 첨가하여 발효시켜 만든다.<br /> 쌀 막걸리의 경우 쌀을 깨끗이 씻어 고두밥을 지어 식힌 후, 누룩과 물을 넣고 수일 간 발효시켜 체에 거르는 과정을 통해 만들어진다.우리나라 고유한 술로 맑은술을 떠내지 아니하고 그대로 걸러 짠 술로 빛깔이 흐린것이 특징이다.<br />
                            <br /><br />발효할 때에 알코올 발효와 함께 유산균 발효가 이루어진다. 막걸리의 알코올 도수는 4~18% 정도로 다양하다. 찹쌀·멥쌀·보리·밀가루 등을 쪄서 식힌 다음 누룩과 물을 섞고 일정한 온도에서 발효시켜 술 지게미를 걸러 만든다. 이때 술지게미를 거르지 않고 밥풀을 띄운 것을 동동주라고 한다.</p>
                    </li>
                </ul>
            </div>
        </div>

        <div class="asList01">

        </div>

    </div>

</div>



<jsp:include page="/Include/Footer.jsp" />