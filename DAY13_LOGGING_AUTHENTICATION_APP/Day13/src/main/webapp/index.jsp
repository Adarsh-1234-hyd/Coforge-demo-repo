<!DOCTYPE html>
<html>
<head>
    <%@ include file="bootStrapStyle.jsp" %>
    <title>Welcome</title>
</head>

<body class="bg-light">

    <!-- Centered content -->
    <div class="container vh-100 d-flex align-items-center justify-content-center">
        <div class="card shadow-lg border-0 p-5 text-center">
            <h2 class="mb-4">Welcome to the Application</h2>

            <!-- SAME link, just styled -->
            <a href="login.jsp" class="btn btn-success btn-lg px-5">
                Enter Application
            </a>
        </div>
    </div>

    <%@ include file="bootStrapScript.jsp" %>
</body>
</html>