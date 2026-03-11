<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management Application</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#">
                Employee Management
            </a>
        </div>
    </nav>

    <div class="container mt-5">

        <div class="row justify-content-center">
            <div class="col-md-6">

                <div class="card shadow">
                    <div class="card-header bg-primary text-white text-center">
                        <h4 class="mb-0">Employee Dashboard</h4>
                    </div>

                    <div class="card-body text-center">

                        <a href="EmployeeServlet?action=list" 
                           class="btn btn-outline-primary btn-lg w-75 mb-3">
                            👀 View Employees
                        </a>

                        <a href="EmployeeServlet?action=new" 
                           class="btn btn-primary btn-lg w-75">
                            ➕ Add Employee
                        </a>

                    </div>
                </div>

            </div>
        </div>

    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>