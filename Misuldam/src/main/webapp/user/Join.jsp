<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/css/join.css" rel="stylesheet">



</head>
<body>
  <form action="../Main.jsp">
   <div class="logo">
			<h1>Misuldam</h1>
		</div>
       
    <table>   
    <tr><td>아이디</td></tr>
    <tr><td><input type="text" class="text"></td></tr>
    <tr><td>비밀번호</td></tr>
    <tr><td><input type="password" class="text"></td></tr>
    <!-- <tr><td>비밀번호 확인</td></tr>
    <tr><td><input type="password" class="text"></td></tr> -->
    <tr><td>이름</td></tr>
    <tr><td><input type="text" class="text"></td></tr>
    <tr><td>생년월일</td></tr>
    <tr><td><input type="date" class="text"></td></tr>
    <tr><td>핸드폰 번호</td></tr>
    <tr><td><input type="tel" class="text"></td></tr>
    <tr><td>이메일</td></tr>
    <tr>
        <td><input type="text" class="email"> @ 
            <select>
                <option>naver.com</option>
                <option>gmail.com</option>
                <option>daum.net</option>
                <option>nate.com</option>
            </select>
        </td>
    </tr>
    <!-- <tr><td><input type="submit" value="가입하기" class="btn"></td></tr> -->
   <td></td>
   <tr><td><button onClick="location.href='<%= request.getContextPath() %>../Main.jsp'" class="btn">misuldam 가입하기</button></td></tr>
    </table>
</form>
 

</body>
</html>