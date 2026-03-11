<%@page import="com.coforge.models.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add / Edit Employee</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet">

</head>
<body class="bg-light">

<%
    Employee emp = (Employee) request.getAttribute("employee");
    boolean editMode = emp != null;
%>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-7 col-lg-6">

            <div class="card shadow-lg">
                <div class="card-header bg-primary text-white text-center">
                    <h4 class="mb-0">
                        <i class="bi bi-person-fill"></i>
                        <%= editMode ? "Edit Employee" : "Add Employee" %>
                    </h4>
                </div>

                <div class="card-body p-4">

                    <form action="EmployeeServlet" method="post">

                        <input type="hidden" name="eid"
                               value="<%= editMode ? emp.getEid() : "" %>">

                        <div class="mb-3">
                            <label class="form-label">Employee Name</label>
                            <input type="text" class="form-control"
                                   name="ename"
                                   value="<%= editMode ? emp.getEname() : "" %>"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Salary</label>
                            <input type="number" class="form-control"
                                   name="salary"
                                   value="<%= editMode ? emp.getSalary() : "" %>"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control"
                                   name="email"
                                   value="<%= editMode ? emp.getEmail() : "" %>"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Mobile</label>
                            <input type="tel" class="form-control"
                                   name="mobile"
                                   value="<%= editMode ? emp.getMobile() : "" %>"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Date of Joining</label>
                            <input type="date" class="form-control"
                                   name="doj"
                                   value="<%= editMode ? emp.getDoj() : "" %>"
                                   required>
                        </div>

                        <div class="mb-4">
                            <label class="form-label">Date of Birth</label>
                            <input type="date" class="form-control"
                                   name="dob"
                                   value="<%= editMode ? emp.getDob() : "" %>"
                                   required>
                        </div>

                        <div class="d-flex justify-content-between">
                            <a href="EmployeeServlet?action=list"
                               class="btn btn-secondary">
                                <i class="bi bi-arrow-left"></i> Back
                            </a>

                            <button type="submit" class="btn btn-success">
                                <i class="bi bi-save"></i>
                                <%= editMode ? "Update Employee" : "Save Employee" %>
                            </button>
                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js</script>
</body>
</html>
