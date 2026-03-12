<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicet object</title>
</head>
<body>
     <%
        String username =  request.getParameter("uname");
        if(username!=null && username.equals("Adarsh"))
              response.sendRedrict("Sucess.jsp? uname="  +username);
        	else
        	response.sendRedirect("Error.jsp")
     %>
</body>
</html>