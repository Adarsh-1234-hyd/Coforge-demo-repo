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
    <h1>PRINTING NUMBERS FROM 1 TO 10</h1>
    <c:forEach var="i" begin="5" end="50" step="5">
      <c:out value="${i}"> TABLE OF 5</c:out>
    </c:forEach>
</body>
</html>