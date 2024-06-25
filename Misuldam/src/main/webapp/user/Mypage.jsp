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
			
			
			</div>
		</div>
	</div>
</div>
<jsp:include page="/include/Footer.jsp" />