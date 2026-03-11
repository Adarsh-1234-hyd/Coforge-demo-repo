<%@page import="com.coforge.models.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet">

</head>
<body class="bg-light">

<%
    List<Employee> employeeList = (List<Employee>) request.getAttribute("empList");
%>

<div class="container mt-4">

    <!-- PAGE HEADER -->
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2 class="fw-bold">
            <i class="bi bi-people-fill text-primary"></i> Employee List
        </h2>

        <div>
            <a href="EmployeeServlet?action=new" class="btn btn-success me-2">
                <i class="bi bi-person-plus-fill"></i> Add Employee
            </a>
            <a href="Home.jsp" class="btn btn-warning">
                <i class="bi bi-house-fill"></i> Home
            </a>
        </div>
    </div>

    <!-- SEARCH -->
    <div class="card shadow-sm mb-3">
        <div class="card-body">
            <form class="row g-2 align-items-center" action="EmployeeServlet">
                <input type="hidden" name="action" value="search">

                <div class="col-md-10">
                    <div class="input-group">
                        <span class="input-group-text">
                            <i class="bi bi-search"></i>
                        </span>
                        <input type="text" class="form-control"
                               placeholder="Search by Name, Email, DOJ, DOB, Mobile"
                               name="search">
                    </div>
                </div>

                <div class="col-md-2 d-grid">
                    <button class="btn btn-dark">
                        Search
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- TABLE -->
    <div class="card shadow">
        <div class="card-body table-responsive">

            <table class="table table-hover table-bordered align-middle">
                <thead class="table-dark text-center">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Salary</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>DOJ</th>
                        <th>DOB</th>
                        <th width="220">Actions</th>
                    </tr>
                </thead>

                <tbody>
                <% if (employeeList != null && !employeeList.isEmpty()) {
                       for (Employee emp : employeeList) { %>

                    <tr>
                        <td class="text-center"><%= emp.getEid() %></td>
                        <td><%= emp.getEname() %></td>
                        <td>
                            <span class="badge bg-success fs-6">
                                ₹ <%= emp.getSalary() %>
                            </span>
                        </td>
                        <td><%= emp.getEmail() %></td>
                        <td><%= emp.getMobile() %></td>
                        <td><%= emp.getDoj() %></td>
                        <td><%= emp.getDob() %></td>

                        <td class="text-center">
                            <a href="EmployeeServlet?action=view&eid=<%= emp.getEid() %>"
                               class="btn btn-sm btn-primary me-1">
                                <i class="bi bi-eye-fill"></i>
                            </a>

                            <a href="EmployeeServlet?action=edit&eid=<%= emp.getEid() %>"
                               class="btn btn-sm btn-success me-1">
                                <i class="bi bi-pencil-fill"></i>
                            </a>

                            <a href="EmployeeServlet?action=delete&eid=<%= emp.getEid() %>"
                               class="btn btn-sm btn-danger"
                               onclick="return confirm('Are you sure you want to delete this employee?')">
                                <i class="bi bi-trash-fill"></i>
                            </a>
                        </td>
                    </tr>

                <% } } else { %>
                    <tr>
                        <td colspan="8" class="text-center text-muted">
                            No Employees Found
                        </td>
                    </tr>
                <% } %>
                </tbody>
            </table>

        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>