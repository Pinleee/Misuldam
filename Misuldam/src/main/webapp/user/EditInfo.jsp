<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
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
				<h2>회원정보 수정</h2>
				<hr>
				
			<div class="info">
				<div class="my_id">
					<label for ="id">아이디</label>
					<span>${sessionScope.accountId}</span>
				</div>
				
				<div class="my_pw">
					<label for = "pw">현재 비밀번호</label>
					<span><i></i>
					<i></i>
					<i></i>
					<i></i>
					<i></i>
					<i></i>
					<i></i>
					</span>
					<button type="button" class="btn-edit">변경</button>
				</div>		
					
				<div class="new_pw">
					<label for="pw">새 비밀번호</label>
					<input type="password" id="new_password" name="new_password" value="">
					<span>(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</span>
				</div>
				
				<div class="check_pw">
					<label for="pw">새 비밀번호 확인</label>
					<input type="password" id="check_password" name="check_password" value="">
			
				</div>
				
				<div class="my_name">
				<label for ="name">이름</label>
					<span>${sessionScope.userName}</span>
				</div>
				
				<div class="my_cell">
				<label for="cell">휴대전화</label>
						<td>
						<select id="mobile1" name="mobile[]"
							fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N"
							fw-msg="">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select> 
						- <input id="mobile2" name="mobile[]" maxlength="4"
							fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N"
							fw-msg="" placeholder="" value="" type="text"> 
							- <input id="mobile3" name="mobile[]" maxlength="4"
							fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N"
							fw-msg="" placeholder="" value="" type="text">

						<button type="button" class="btn-veri"
								
								onclick="memberVerifyMobile.editSendVerificationNumber(); return false;">인증번호받기</button>
								

						</td>
						</div>
						
						<div class="my_email">
							<label for="my_email">이메일</label>
							<input type="email" id="new_email" name="new_email" value="${sessionScope.userEmail}">
			
						</div>
						<div class="my_birth">
						<label for="birth">생년월일</label>
							<input id="birth_year" name="birth_year" fw-filter="isFill" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="4" readonly="readonly" value="" type="text"> 년 
							<input id="birth_month" name="birth_month" fw-filter="isFill" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" readonly="readonly" value="" type="text"> 월 
							<input id="birth_day" name="birth_day" fw-filter="isFill" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" readonly="readonly" value="" type="text"> 일
					
						</div>
 
    
					</div>
						<hr>
						<div class="edit_action">
						<button type="button" class="btnSubmit">회원정보변경</button>			
						</div>
			</div>


			
		</div>
		</div>
	</div>
</div>
<jsp:include page="/include/Footer.jsp" />