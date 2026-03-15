<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>

<%@ include file="bootStrapStyle.jsp" %>

<style>
    body {
        min-height: 100vh;
        background: linear-gradient(135deg, #ef4444, #f97316);
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .error-card {
        backdrop-filter: blur(10px);
        background: rgba(255, 255, 255, 0.15);
        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: 1.25rem;
        box-shadow: 0 20px 45px rgba(0,0,0,0.25);
        color: #fff;
    }

    .error-icon {
        font-size: 4rem;
    }

    .btn-action {
        border-radius: 0.75rem;
        transition: transform .2s ease, box-shadow .2s ease;
    }

    .btn-action:hover {
        transform: translateY(-2px);
        box-shadow: 0 10px 22px rgba(0,0,0,.25);
    }
</style>
</head>

<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-7 col-lg-5">
            <div class="error-card p-5 text-center">

                <div class="error-icon mb-3">⚠️</div>

                <h2 class="fw-semibold mb-3">Oops! Something went wrong</h2>

                <!-- Error message from servlet -->
                <p class="fs-5 text-warning fw-semibold mb-4">
                    ${error}
                </p>

                <div class="d-grid gap-3 d-sm-flex justify-content-center">
                    <a href="login.jsp" class="btn btn-light btn-action fw-semibold">
                        Go to Login
                    </a>
                    <a href="HomeServlet" class="btn btn-outline-light btn-action fw-semibold">
                        Home
                    </a>
                </div>

            </div>
        </div>
    </div>
</div>

<%@ include file="bootStrapScript.jsp" %>
</body>
</html>