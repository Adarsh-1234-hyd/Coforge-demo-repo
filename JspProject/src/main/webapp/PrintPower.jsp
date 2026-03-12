<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
       				<form >
       					<label >First number</label>
      					 <input type="text"  name="num1" required>
       					<label >second number</label>
       					<input type ="text"  name = "num2" required>  
       					<button >Power</button>     
       				</form>
       			

    <%! double powNums(String n1,String n2){
       double n11 = Double.parseDouble(n1);
       double n22 = Double.parseDouble(n2);
       double res = Math.pow(n11,n22);
      return res;
      
    } 
   %>
   <% 
    String n1=request.getParameter("num1");
    String n2=request.getParameter("num2");
    if(n1!=null && n2!=null)
    out.println(powNums(n1,n2)); %>
</body>
</html>