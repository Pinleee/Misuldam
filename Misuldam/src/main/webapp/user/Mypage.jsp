<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<jsp:include page="/include/Header.jsp" />
<link rel="stylesheet" href="../css/login.css">

<div class="subCont">

	<div class="cataWrap">
		<div class="cataCont">

			<div class="my_shop">

				<h2>${sessionScope.userName}<span>님,
						<p>환영합니다.</p>
				</h2>

				<h3>나의 쇼핑정보</h3>

				<ul>
					<li><a href="">주문배송조회</a></li>
					<li><a href="">취소/교환/반품 내역</a></li>
				</ul>

				<h3>나의 계정설정</h3>
				<ul>
					<li><a __ngcontent="" routerlink="/edit/info"
						href="EditInfo.jsp">회원정보수정</a></li>
					<li><a href="">쿠폰</a></li>
				</ul>

			</div>

			<div class="info_modify">
						<h2>MY ACCOUNT</h2>
			<div class="mypage_account ">
			<div class="info">
                <div class="memberInfo">
                    <ul>
						<li><a href=""><strong class="name">MEMBERSHIP</strong> : <strong class="group"><span class="xans-member-var-group_name">WHITE</span><span class="myshop_benefit_ship_free_message"> / 배송비 무료</span> </strong></a></li>
                    </ul>
				</div>
              
			</div>	
		</div>
		<div class="my_order">
		<h1>나의 주문 내역<span class="desc">(최근 3개월 기준)</span></h1>
		
		
		</div>
		<div class="state">
		<ul class="order">
			<li>
			<a href=""><strong>입금전</strong>
			<br><span class="count">0</span></a>
			</li>
			<li>
				<a href=""><strong>배송준비중</strong>
			<br><span class="count">0</span></a>
			</li>
			<li>
			<a href=""><strong>배송중</strong>
			<br><span class="count">0</span></a>
			</li>
			<li><a href=""><strong>배송완료</strong>
			<br><span class="count">0</span></a>
			</li>
		</ul>
		</div>
</div>
</div>
</div>
</div>
<jsp:include page="/include/Footer.jsp" />