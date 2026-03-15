<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<%@ include file="bootStrapStyle.jsp" %>

<style>
    body {
        min-height: 100vh;
        background: #f8fafc;
    }
    .navbar-custom {
        background-color: #0dcaf0;
    }
</style>
</head>

<body>

<%
    String email = (String) session.getAttribute("email");
    if (email == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!-- ✅ Navbar (same links, styled) -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
    <div class="container">
        <span class="navbar-brand fw-bold">
            Home Page | <%= email %>
        </span>

        <div class="ms-auto">
            <a href="ProfileServlet" class="btn btn-outline-light me-2">
                Profile
            </a>
            <a href="DashboardServlet" class="btn btn-outline-light me-2">
                Dashboard
            </a>
            <a href="LogoutServlet" class="btn btn-danger">
                Logout
            </a>
        </div>
    </div>
</nav>

<!-- ✅ Main Content -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-lg border-0">
                <div class="card-body text-center p-5">
                    <h2 class="mb-3">Welcome 👋</h2>
                    <p class="text-muted mb-4">
                        Use the buttons below to navigate
                    </p>

                    <div class="d-grid gap-3 d-sm-flex justify-content-center">
                        <a href="ProfileServlet" class="btn btn-primary px-4">
                            Profile
                        </a>
                        <a href="DashboardServlet" class="btn btn-success px-4">
                            Dashboard
                        </a>
                        <a href="LogoutServlet" class="btn btn-outline-danger px-4">
                            Logout
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="bootStrapScript.jsp" %>
</body>
</html>