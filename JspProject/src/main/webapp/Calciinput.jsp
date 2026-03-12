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
     <form>
           <label>Num1:</label>
      <input type="text" name="num1">
            <label>Num2:</label>
      <input type="text" name="num2">
       <button name="op" value="+">+</button>
       <button name="op" value="-">-</button>
      </form>
      
    <c:choose>
       <c:when test="${param.op=='+'}">
             <c:out value="${param.num1+param.num2}"></c:out>
       
        </c:when>
       <c:when test="${param.op=='-'}">
         
         <c:out value="${param.num1-param.num2}"></c:out> 
       </c:when>
       <c:otherwise>Try again</c:otherwise>
    </c:choose>
</body>
</html>