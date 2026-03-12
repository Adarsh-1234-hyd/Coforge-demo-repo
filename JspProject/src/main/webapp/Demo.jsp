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
    <h2>JSTL DEMO</h2>
    <%--
    <c:out value="Hello Adarsh"></c:out>
    <c:set var="name" value="Adarsh"></c:set> <%--For injecting value  
    <h1><c:out value="${name}"></c:out></h1>  <%-- // For printing value
    <c:set var="sname"  value="Adarsh-dobhal"></c:set>
    <c:out value="${sname}"></c:out>
    <c:set var="sid"  value="12345"></c:set>
    <br> <c:out value="${sid}"></c:out></br>
    <c:set var="num1" value="25"></c:set>
    <c:set var="num2"  value="25"></c:set>
    <c:set var="res" value="${num1+num2}"></c:set>
    <c:out value="${res}"></c:out>
    <c:set var="str" value="${res%2==0? 'Even number':'Odd number'}"></c:set>
    <c:out value="${str}"></c:out>
    <c:set var="num" value="4"></c:set>
     <c:if test="${num>5}">Hai</c:if>
     <c:if test="${num<=5}">hello</c:if>
     --%>
     
     
     <c:set var = "num" value="7"></c:set>
     <c:choose>
     <c:when test="${num>5}">Hai</c:when>
     <c:otherwise>HELLO</c:otherwise>
     </c:choose>
     
     <c:remove var="${num}"/>
     
     <c:out value="${num}"></c:out>
</body>
</html>