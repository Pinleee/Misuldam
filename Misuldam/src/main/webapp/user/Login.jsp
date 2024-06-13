<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
  <div class="login-wrap">
    <div class="login-html">
      <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">로그인</label>
      <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">회원가입</label>
      <div class="login-form">
        <div class="sign-in-htm">
          <div class="group">
            <label for="user" class="label">사용자 이름</label>
            <input id="user" type="text" class="input">
          </div>
          <div class="group">
            <label for="pass" class="label">비밀번호</label>
            <input id="pass" type="password" class="input" data-type="password">
          </div>
          <div class="group">
            <input id="check" type="checkbox" class="check" checked>
            <label for="check"><span class="icon"></span> 로그인 상태 유지</label>
          </div>
          <div class="group">
            <input type="submit" class="button" value="로그인">
          </div>
          <div class="hr"></div>
          <div class="foot-lnk">
            <a href="#forgot">비밀번호를 잊으셨나요?</a>
          </div>
        </div>
        <div class="sign-up-htm">
          <div class="group">
            <label for="user" class="label">사용자 이름</label>
            <input id="user" type="text" class="input">
          </div>
          <div class="group">
            <label for="pass" class="label">비밀번호</label>
            <input id="pass" type="password" class="input" data-type="password">
          </div>
          <div class="group">
            <label for="pass" class="label">비밀번호 재입력</label>
            <input id="pass" type="password" class="input" data-type="password">
          </div>
          <div class="group">
            <label for="pass" class="label">이메일 주소</label>
            <input id="pass" type="text" class="input">
          </div>
          <div class="group">
            <input type="submit" class="button" value="회원가입">
          </div>
          <div class="hr"></div>
          <div class="foot-lnk">
            <label for="tab-1">이미 회원이신가요?</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>