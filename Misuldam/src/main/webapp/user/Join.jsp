<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/join.css">


</head>
<body>
   
    <div class="member">
<!--         1. 로고
        <img class="logo" src="./images/images2/logo-naver.png"> -->

        <!-- 2. 필드 -->
        <div class="field">
            <b>아이디</b>
            <span class="placehold-text"><input type="text"></span>
        </div>
        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" type="password">
        </div>
        <div class="field">
            <b>비밀번호 재확인</b>
            <input class="userpw-confirm" type="password">
        </div>
        <div class="field">
            <b>이름</b>
            <input type="text">
        </div>

        <!-- 3. 필드(생년월일) -->
        <div class="field birth">
            <b>생년월일</b>
            <div>
                <input type="number" placeholder="년(4자)">                
                <select>
                    <option value="">월</option>
                    <option value="">1월</option>
                    <option value="">2월</option>
                    <option value="">3월</option>
                    <option value="">4월</option>
                    <option value="">5월</option>
                    <option value="">6월</option>
                    <option value="">7월</option>
                    <option value="">8월</option>
                    <option value="">9월</option>
                    <option value="">10월</option>
                    <option value="">11월</option>
                    <option value="">12월</option>
                </select>
                <input type="number" placeholder="일">
            </div>
        </div>
          <!-- 5. 이메일_전화번호 -->
        <div class="field">
            <b>이메일</b>
            <input type="email" placeholder="@">
        </div>
          
        <div class="field tel-number">
            <b>휴대전화</b>
        <!--     <select>
                <option value="">대한민국 +82</option>
            </select> -->
            <div>
                <input type="tel" placeholder="전화번호 입력">
                <input type="button" value="인증번호 받기">
            </div>
            <input type="number" placeholder="인증번호를 입력하세요">
        </div>

       <!-- 6. 가입하기 버튼 -->
        <input type="submit" value="가입하기">


</body>
</html>