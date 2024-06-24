<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />
<link rel="stylesheet" href="../css/login.css">

<%
String id = (String) session.getAttribute("accountId");
%>

<div class="subCont">

	<div class="login-wrap">
	
	   <section class="login-form">
	        <h1>Misuldam</h1>
	        <form action="<%= request.getContextPath() %>/login.user" method="post">
	            <div class="int-area">
	                <input type="text" name="accountId" id="id" autocomplete="off" required>
	                <label for="id">아이디</label>
	            </div>
	            <div class="int-area">
	                <input type="password" name="accountPw" id="pw" autocomplete="off" required>
	                <label for="pw">비밀번호</label>
	            </div>
	            <div class="btn-area">
	                 <button id="btn" type="submit">LOGIN</button>
	                
	            </div>
	        </form>
	        <div class="caption">
	        	<a href="">아이디 찾기</a>
	            <a href="">비밀번호 찾기</a>
	            <a href="<%=request.getContextPath()%>/user/JoinAgree.jsp">회원가입</a> <!-- <회원가입> -->        
	         </div>
	    </section>
	
	              
	
	</div>

</div>
<script>       
        let id = $('#id');
        let pw = $('#pw');
        let btn = $('#btn');
        
        $(btn).on('click', function() {
            if($(id).val() == "") {
                $(id).next('label').addClass('warning');
                setTimeout(function() {
                    $('label').removeClass('warning');
                }, 1500);
            }
            else if($(pw).val() == "") {
                $(pw).next('label').addClass('warning');
                setTimeout(function() {
                    $('label').removeClass('warning');
                }, 1500);
            }
        });
    </script> 
<jsp:include page="/include/Footer.jsp" />
