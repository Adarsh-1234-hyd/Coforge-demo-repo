<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>

    <style>
        /* Background Style */
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6C63FF, #48C6EF);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* White card container */
        .container {
            background: white;
            padding: 40px 50px;
            width: 350px;
            text-align: center;
            border-radius: 14px;
            box-shadow: 0px 4px 20px rgba(0,0,0,0.25);
        }

        h2 {
            margin-bottom: 25px;
            color: #333;
        }

        /* Button styling */
        button {
            width: 100%;
            padding: 12px;
            margin-top: 15px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            background-color: #6C63FF;
            color: white;
            transition: 0.3s ease;
        }

        button:hover {
            background-color: #554dcc;
        }

        .signup-btn {
            background-color: #10B981;
        }

        .signup-btn:hover {
            background-color: #0a8a63;
        }

        /* Remove default form spacing */
        form {
            margin: 0;
        }
    </style>
</head>

<body>

    <div class="container">
        <h2><%= "Hello World!" %></h2>

        <!-- Login button -->
        <form action="Login.jsp">
            <button type="submit">Login</button>
        </form>

        <!-- Signup button -->
        <form action="signin.jsp">
            <button type="submit" class="signup-btn">Signup</button>
        </form>
    </div>

</body>
</html>