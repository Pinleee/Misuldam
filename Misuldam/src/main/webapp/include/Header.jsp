<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전통주</title>

    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/layout.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/content.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/content.js"></script>
    
    <!--slick-slider-->
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript">
    		function LoginGo(){
    			alert("로그인이 필요한 서비스입니다.");
    			window.location.href = "./user/Login.jsp"
    		}
    </script>
</head>
<body>

    <div class="container">

        <header id="header">
            <div class="headerCont">
                <h1 class="logo">미술담</h1>
                <div class="navWrap">
                    <nav id="nav">
                    <c:choose>
                    	<c:when test="${empty sessionScope.accountId}">
                        <ul>
                            <li><a href="<%= request.getContextPath() %>/product.fo?categoryNum=1">탁주</a></li>
                            <li><a href="<%= request.getContextPath() %>/product.fo?categoryNum=2">약 · 청주</a></li>
                            <li><a href="<%= request.getContextPath() %>/product.fo?categoryNum=3">증류주</a></li>
                            <li><a href="<%= request.getContextPath() %>/product.fo?categoryNum=4">과실주</a></li>
                            <li><a href="<%= request.getContextPath() %>/product.fo?categoryNum=5">기타주류</a></li>
                        </ul>
                        </c:when>
                    	<c:otherwise>
                        <ul>
                            <li><a href="<%= request.getContextPath() %>/product.fo?categoryNum=1&userId=${sessionScope.userId}">탁주</a></li>
                            <li><a href="<%= request.getContextPath() %>/product.fo?categoryNum=2&userId=${sessionScope.userId}">약 · 청주</a></li>
                            <li><a href="<%= request.getContextPath() %>/product.fo?categoryNum=3&userId=${sessionScope.userId}">증류주</a></li>
                            <li><a href="<%= request.getContextPath() %>/product.fo?categoryNum=4&userId=${sessionScope.userId}">과실주</a></li>
                            <li><a href="<%= request.getContextPath() %>/product.fo?categoryNum=5&userId=${sessionScope.userId}">기타주류</a></li>
                        </ul>
                        </c:otherwise>
                    </c:choose>
                    </nav>
                </div>
                <div class="utillWrap">
                	<c:choose>
						<c:when test="${empty sessionScope.accountId}">
		                    <button onClick="LoginGo()"><i class="fas fa-user-shield"></i><span>마이페이지</span></button>
		                    <button onClick="LoginGo()"><i class="fas fa-heart"></i><span>위시리스트</span></button>
		                    <button onClick="LoginGo()"><i class="fas fa-shopping-bag"></i><span>장바구니</span></button>
		                    <button onClick="location.href='<%= request.getContextPath() %>/user/Login.jsp'"><i class="fas fa-sign-in-alt"></i><span>로그인</span></button>
						</c:when> 
						<c:otherwise>
							<button onClick="location.href='<%= request.getContextPath() %>/user/Mypage.jsp'"><i class="fas fa-user-shield"></i><span>마이페이지</span></button>
		                    <button onClick="location.href='<%= request.getContextPath() %>/selectWish.do?userId=${sessionScope.userId}'"><i class="fas fa-heart"></i><span>위시리스트</span></button>
		                    <button onClick="location.href='<%= request.getContextPath() %>/selectCart.do?userId=${sessionScope.userId}'"><i class="fas fa-shopping-bag"></i><span>장바구니</span></button>
		                    <button onClick="location.href='<%= request.getContextPath() %>/user/Logout.jsp'"><i class="fas fa-sign-in-alt"></i><span>로그아웃</span></button>
						</c:otherwise>
					</c:choose>                  
                </div>
            </div>
        </header>
        
        <div class="innerWrap">