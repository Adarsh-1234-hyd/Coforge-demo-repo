<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>JSTL TAGS</h1>
    <%
      Date today = new Date();
    request.setAttribute("today",today);
    %>
    <c:out value="TODAY DATE IS :${today}"></c:out>
    <c:out value="Formatted date"></c:out>
    <c:out value="${today}"></c:out>
    <fmt:formatDate value="${today}" pattern="yyyy-MM-dd"></fmt:formatDate>
    <fmt:formatDate value="${today}" pattern="yyyy-MM-dd" timeZone="Asia/Kolkata"></fmt:formatDate>
    <br>
    <c:set var ="amount" value="1234.5"></c:set>
    <fmt:formatNumber value="${amount}" type="currency"></fmt:formatNumber>
    <fmt:setLocale value="en_IN"/>
    <fmt:formatNumber value="${amount}" type="currency"></fmt:formatNumber>
    <br>
</body>
</html>