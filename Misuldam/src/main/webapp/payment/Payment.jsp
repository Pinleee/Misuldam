<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />
<link href="${pageContext.request.contextPath}/css/Payment.css" rel="stylesheet" />
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script>
IMP.init("imp14397622");

function requestPay() {
  IMP.request_pay({
	  pg: "html5_inicis.INIpayTest",
	    pay_method: "card",
	    merchant_uid: "test_lxvfti8l",
	    name: "전통주 외 3개 결제",
	    amount: 78000,
	    buyer_tel: "010-1234-5678",
  });
}
</script>
<div class="subCont">
   <div class="catagWrap">
       <div class="catagCont">
           <h3 data-aos="fade-right" data-aos-duration="1000">결제</h3>

           <div class="menuList">
               <div class="topUtil">
                   <div class="total">총 <span>2</span>건</div>
               </div>
	<section class="pay">
        <div class="cart__information">
            <button class="pay__bigorderbtn__up">기본 배송지</button>
            <button class="pay__bigorderbtn__up">신규 배송지</button>
        </div>
        <table class="payment-table">
         	 <colgroup>
	         	<col width="228px">
	            <col width="">
	         </colgroup>
            <form>
                <thead>
                    <tr>
                        <td>배송정보</td>
                        <td><span class="aste">*</span>표시는 필수입력 항목입니다.</td>
                    </tr>
                </thead>
                <tbody class="input-box">
                    <tr>
                    	<td class="pay-text">배송지명</td>
                    	<td><input type="text"/></td>
                    </tr>
                    <tr>
                    	<td class="pay-text">수령인<span class="aste">*</span></td>
                    	<td><input type="text"/></td>
                    </tr>
                    <tr>
                    	<td class="pay-text">배송지<span class="aste">*</span></td>
                    	<td><input type="text"/><button class="zip-btn">우편번호 검색</button></td>
                    </tr>
                    <tr>
                    	<td class="pay-text"></td>
                    	<td class="add-input"><input type="text"/></td>
                    </tr>
                    <tr>
                    	<td class="pay-text"></td>
                    	<td class="add-input"><input type="text"/></td>
                    </tr>
                    <tr>
                    	<td class="pay-text">연락처<span class="aste">*</span></td>
                    	<td class="phone"><input type="text"/><span>-</span><input type="text"/><span>-</span><input type="text"/></td>
                    </tr>
                    <tr>
                    	<td class="pay-text">요청사항</td>
                    	<td>
                    		<select class="select-box">
                    			<option>부재시 문앞에 놓아주세요.</option>
                    			<option>부재시 경비실에 맡겨 주세요.</option>
                    			<option>부재시 전화 또는 문자 주세요.</option>
                    			<option>택배함에 넣어주세요.</option>
                    			<option>배송전에 연락주세요.</option>
                    		</select>
                    	</td>
                    </tr>
                    
                </tbody>
             
            </form>
        </table>
         <table class="payment-table">
	         <colgroup>
	         	<col width="600px">
	            <col width="">
	         </colgroup>
            	
            <form>
                <thead>
                    <tr>
                        <td>상품이미지</td>
                        <td>상품정보</td>
                    </tr>
                </thead>
                <tbody class="img-table">
                    <tr>
                    	<td class="img-table-td"><img src="${pageContext.request.contextPath}/images/assort03.jpg"></td>
                    	<td class="pay-detail-text">
                    		<ul class="pro-pay-text">
                    			<li>증류주</li>
                    			<li>일품진로 (17도)</li>
                    			<li>14,500원</li>
                    			<li>1<span>개</span></li>
                    		</ul>
                    	</td>
                    </tr>
                </tbody>
            </form>
            </table>
            <table class="payment-table">
            	<colgroup>
		         	<col width="228px">
		            <col width="">
		         </colgroup>
            <from>
            	<thead>
            		 <tr>
                        <td>쿠폰</td>
                        <td>쿠폰 적용가</td>
                    </tr>
            	</thead>
            	<tbody>
            		<tr class="last-box">
            			<td>
            				<select class="select-box select-box2">
                    			<option>쿠폰을 선택해주세요.</option>
                    			<option>회원가입 10% 쿠폰</option>
                    		</select>
            			</td>
            			<td class="coupon-text">
            				<span>정상가격 :</span><span>14,500원</span><span><i class="fas fa-long-arrow-alt-right"></i></span><span>쿠폰 적용가 :</span><span>13,050원</span>
            			</td>
            		</tr>
            	</tbody>
            	
            </from>
            
        </table>
        <div class="cart__mainbtns pay_mainbtn">
            <button class="pay__bigorderbtn" onClick="requestPay()">결제하기</button>
        </div>
    </section>

               
            </div>
        </div>
    </div>
    

</div><!--/subCont-->

<jsp:include page="/include/Footer.jsp" />