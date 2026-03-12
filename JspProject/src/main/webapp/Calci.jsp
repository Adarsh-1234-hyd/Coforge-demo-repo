<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <c:set var="num1" value="7"></c:set>
    <c:set var="num2" value="7"></c:set>
    <c:set var="opr"  value="-"></c:set>
    <c:choose>
       <c:when test="${opr=='+'}">${num1+num2}</c:when>
       <c:when test="${opr=='-'}">${num1-num2}</c:when>
       <c:otherwise>Try again</c:otherwise>
    </c:choose>
</body>
</html>