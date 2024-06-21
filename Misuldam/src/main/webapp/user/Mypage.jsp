<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />
<link rel="stylesheet" href="../css/login.css">

<div class="subCont">

	<div class="mypage">
		<div class="my_shop">
			<h3>나의 쇼핑정보</h3>

			<ul _ngcontent="">
				<li _ngcontent=""><a __ngcontent=""
					href="https://order.29cm.co.kr/my-order/list">주문배송조회</a></li>

				<li __ngcontent=""><a __ngcontent=""
					routerlink="/my-order/cancel-list"
					href="/mypage/my-order/cancel-list">취소/교환/반품 내역</a></li>

			</ul>
			
			<h3>나의 계정설정</h3>
			<ul __ngcontent="">
				<li __ngcontent=""><a __ngcontent="" routerlink="/edit/info"
					href="/user/Mypage.jsp">회원정보수정</a></li>

				<li __ngcontent=""><a __ngcontent=""
					href="https://order.29cm.co.kr/my-order/coupon">쿠폰</a></li>

			</ul>


			</ul>

		</div>
	</div>
</div>
<jsp:include page="/include/Footer.jsp" />