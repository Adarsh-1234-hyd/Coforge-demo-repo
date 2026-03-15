<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String email = (String) session.getAttribute("email");
    if (email == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<%@ include file="bootStrapStyle.jsp" %>

<style>
    body {
        min-height: 100vh;
        background: linear-gradient(135deg, #0ea5e9, #6366f1);
        display: flex;
        flex-direction: column;
    }

    .navbar-glass {
        background: rgba(0, 0, 0, 0.25);
        backdrop-filter: blur(8px);
    }

    .glass-card {
        backdrop-filter: blur(10px);
        background: rgba(255, 255, 255, 0.15);
        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: 1.25rem;
        box-shadow: 0 20px 40px rgba(0,0,0,0.25);
        color: #fff;
    }

    .btn-action {
        border-radius: 0.75rem;
        transition: transform .2s ease, box-shadow .2s ease;
    }

    .btn-action:hover {
        transform: translateY(-2px);
        box-shadow: 0 12px 24px rgba(0,0,0,.2);
    }

    .email-badge {
        background: rgba(255,255,255,0.25);
        border: 1px solid rgba(255,255,255,0.35);
        color: #fff;
    }
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-glass">
    <div class="container">
        <a class="navbar-brand fw-semibold" href="#">
            📊 Dashboard
        </a>

        <div class="ms-auto d-flex align-items-center gap-3">
            <span class="badge rounded-pill email-badge px-3 py-2">
                <%= email %>
            </span>
            <a href="LogoutServlet" class="btn btn-sm btn-outline-light">
                Logout
            </a>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container d-flex flex-grow-1 align-items-center justify-content-center">
    <div class="col-md-8 col-lg-6">
        <div class="glass-card p-5 text-center">

            <h2 class="fw-semibold mb-2">Welcome to your Dashboard</h2>
            <p class="text-white-50 mb-4">
                Manage your account and navigate through the application
            </p>

            <div class="d-grid gap-3 d-sm-flex justify-content-center">
                <a href="ProfileServlet" class="btn btn-light btn-action">
                    👤 Profile
                </a>
                <a href="HomeServlet" class="btn btn-success btn-action">
                    🏠 Home
                </a>
                <a href="LogoutServlet" class="btn btn-danger btn-action">
                    🚪 Logout
                </a>
            </div>

        </div>
    </div>
</div>

<%@ include file="bootStrapScript.jsp" %>
</body>
</html>