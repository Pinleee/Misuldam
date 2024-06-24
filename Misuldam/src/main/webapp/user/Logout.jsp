<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/Header.jsp" />
<link rel="stylesheet" href="../css/login.css">

<%

session.removeAttribute("accountId");
response.sendRedirect(request.getContextPath() + "/Main.jsp");
%>



<jsp:include page="/include/Footer.jsp" />
