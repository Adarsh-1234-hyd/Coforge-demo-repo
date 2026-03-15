<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<%@ include file="bootStrapStyle.jsp" %>

<style>
    body {
        min-height: 100vh;
        background: linear-gradient(135deg, #2563eb, #9333ea);
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .login-card {
        backdrop-filter: blur(10px);
        background: rgba(255, 255, 255, 0.15);
        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: 1.25rem;
        box-shadow: 0 20px 40px rgba(0,0,0,0.25);
        color: #fff;
    }

    .form-control {
        border-radius: 0.75rem;
    }

    .form-control:focus {
        box-shadow: 0 0 0 0.2rem rgba(99,102,241,.25);
    }

    .btn-login {
        border-radius: 0.75rem;
        transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .btn-login:hover {
        transform: translateY(-2px);
        box-shadow: 0 10px 20px rgba(37,99,235,.35);
    }

    .small-text {
        color: rgba(255,255,255,0.75);
    }
</style>
</head>

<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5 col-lg-4">
            <form action="LoginServlet" method="post" class="login-card p-4 p-md-5">

                <h3 class="text-center mb-3 fw-semibold">Welcome Back 👋</h3>
                <p class="text-center small-text mb-4">
                    Please login to your account
                </p>

                <!-- Email -->
                <div class="mb-3">
                    <label class="form-label">Email address</label>
                    <input type="email" name="email"
                           class="form-control"
                           placeholder="Enter your email"
                           required>
                    <div class="form-text text-light small-text">
                        We'll never share your email.
                    </div>
                </div>

                <!-- Password -->
                <div class="mb-4">
                    <label class="form-label">Password</label>
                    <input type="password" name="password"
                           class="form-control"
                           placeholder="Enter password"
                           required>
                </div>

                <!-- Button -->
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary btn-login fw-semibold">
                        Login
                    </button>
                </div>

                <!-- Extra links -->
                <div class="text-center mt-4 small-text">
                    Don’t have an account?
                    <a href="signin.jsp" class="text-white fw-semibold text-decoration-none">
                        Sign Up
                    </a>
                </div>

            </form>
        </div>
    </div>
</div>

<%@ include file="bootStrapScript.jsp" %>
</body>
</html>