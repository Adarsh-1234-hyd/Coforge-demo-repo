<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="container mt-5">
     <div class="row justify-content-center">
       <div  class = "col-md-5">
       <div class="card">
       <div class="card-header text-center bg-primary text-light">
       <h3>ADD TWO NUMBER</h3>
       <div class="card-body">
       <form class="mb-3">
       <label class="form-lable">First number</label>
       <input type="text" class="form-control" name="num1" required>
       <label class = "form-lable">second number</label>
       <input type ="text" class = "form-control" name = "num2" required>  
       <button class="btn btn-sucess btn-lg mt-5">Addition</button>     
       </form>
       
       
       </div>
       </div>
       <div >
       </div>
       </div>
       </div>
     </div>
    </div>
    
    <%!
       public int addNums(HttpServletRequest  request){
       if(n1!=null && n2!=null){
       int res = Integer.parseInt(n1)+Integer.parseInt(n2);
       return res;
       }
       retun 0;
    } 
    %>
    <%
    String n1 = request.getParameter("num1");
    String n2 = request.getParameter("num2");
    out.println(addNums(n1,n2));
    %>
</body>
</html>