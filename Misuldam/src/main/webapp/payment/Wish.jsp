<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />

<link href="${pageContext.request.contextPath}/css/Payment.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

<div class="mainCont">
	<div class="payMain">
	</div>
	<div class="TextWrap">
		<div class="wish-list">
			<div class="wish-information">
            <ul>
                <li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
                <li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
            </ul>
       		</div>
			<ul class="list-box-all">
				<li class="list-box">
					<img src="${pageContext.request.contextPath}/images/assort03.jpg">
					<ul class="detail-list">
						<li>일품진로</li>
						<li>14,500원</li>
						<li>
							<div><button><i class="fa-solid fa-heart wish-icon"></i></i></button></div>
							<div><button onClick="location.href='<%= request.getContextPath() %>/payment/Cart.jsp'"><i class="fa-solid fa-cart-shopping"></i></button></div>
						</li>
					</ul>
				</li>
				<li class="list-box">
					<h3>2st Box</h3>
				</li>
				<li class="list-box">
					<h3>3st Box</h3>
				</li>
				<li class="list-box">
					<h3>4st Box</h3>
				</li>
				<li class="list-box">
					<h3>5st Box</h3>
				</li>
				<li class="list-box">
					<h3>6st Box</h3>
				</li>
				<li class="list-box">
					<h3>7st Box</h3>
				</li>
				<li class="list-box">
					<h3>8st Box</h3>
				</li>
			</ul>
			
				
			
		
		</div>
	</div>
</div>

<jsp:include page="/include/Footer.jsp" />