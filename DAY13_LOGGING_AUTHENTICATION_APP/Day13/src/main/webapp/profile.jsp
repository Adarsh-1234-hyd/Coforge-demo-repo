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
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Profile</title>
<%@ include file="bootStrapStyle.jsp" %>

<style>
    body {
        min-height: 100vh;
        background: linear-gradient(135deg, #06b6d4, #6366f1);
        display: flex;
        flex-direction: column;
    }
    .navbar-glass {
        background: rgba(0, 0, 0, 0.25);
        backdrop-filter: blur(8px);
        -webkit-backdrop-filter: blur(8px);
        border-bottom: 1px solid rgba(255, 255, 255, 0.18);
    }
    .glass-card {
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        background: rgba(255, 255, 255, 0.14);
        border: 1px solid rgba(255, 255, 255, 0.28);
        border-radius: 1.25rem;
        box-shadow: 0 20px 45px rgba(0, 0, 0, 0.25);
        color: #fff;
    }
    .soft-badge {
        background: rgba(255, 255, 255, 0.25);
        border: 1px solid rgba(255, 255, 255, 0.35);
        color: #fff;
    }
    .btn-action {
        border-radius: 0.75rem;
        transition: transform .18s ease, box-shadow .18s ease;
    }
    .btn-action:hover {
        transform: translateY(-2px);
        box-shadow: 0 12px 22px rgba(0,0,0,.18);
    }
    .muted {
        color: rgba(255,255,255,0.8);
    }
    .content {
        flex: 1 0 auto;
    }
    footer {
        flex-shrink: 0;
        color: rgba(255,255,255,0.85);
    }
</style>
</head>
<body>

<!-- Top Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-glass">
  <div class="container">
    #
      <span class="me-2">👤</span>Profile
    <a href="HomeServletHome">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#topNav">
      <span class="navbar-toggler-icon"></span>
    </button>
     </a>
    <div id="topNav" class="collapse navbar-collapse">
      <ul class="navbar-nav ms-auto align-items-lg-center gap-lg-2">
        <li class="nav-item">
          <a href="DashboardServlet">
        </li>
        <li class="nav-item">
         Dashboard
         </a>
        </li>
        <li class="nav-item d-none d-lg-block">
          <span class="badge rounded-pill soft-badge">
            <%= email %>
          </span>
        </li>
        <a href="LogoutServlet">
          <li class="nav-item ms-lg-2">
          Logout
           </li>
        </a>
      </ul>
    </div>
  </div>
</nav>

<!-- Main Content -->
<main class="content container py-5">
  <div class="row justify-content-center">
    <div class="col-11 col-sm-10 col-md-8 col-lg-6">
      <div class="glass-card p-4 p-md-5">

        <div class="d-flex align-items-center justify-content-between mb-3">
          <span class="badge rounded-pill soft-badge px-3 py-2">Profile</span>
          <small class="muted">Signed in as</small>
        </div>

        <h2 class="fw-semibold mb-1">Welcome, <%= email %></h2>
        <p class="muted mb-4">Manage your account and navigate to your workspace.</p>

        <!-- Profile summary (example placeholders) -->
        <div class="row g-3 mb-4">
          <div class="col-12">
            <div class="card bg-transparent border-0">
              <div class="card-body p-0">
                <div class="d-flex align-items-center">
                  <div class="me-3">
                    <span class="badge rounded-pill soft-badge">Email</span>
                  </div>
                  <div class="text-white-90"><%= email %></div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Actions -->
        <div class="d-grid gap-3 d-sm-flex">
          
        </div>

      </div>
    </div>
  </div>
</main>

<!-- Footer -->
<footer class="py-3">
  <div class="container text-center small">
    © <%= java.time.Year.now() %> · All rights reserved
  </div>
</footer>

<%@ include file="bootStrapScript.jsp" %>
</body>
</html>