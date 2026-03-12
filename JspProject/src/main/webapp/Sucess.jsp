<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
     <h1 style="color:red"> Welcome</h1> 
     <%String uname= (String) session.getAttribute("username");
     
         if(uname!=null){
           out.println("my session attribute value is" +uname);
           out.println("session id:" +session.getId());
           out.println("session creation time:" + new java.util.Date(session.getCreationTime()));
         }
         else{
        	 out.println("no button found");
         }
     %>
</body>
</html>