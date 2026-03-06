<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>

    <style>
        /* Background design */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6C63FF, #48C6EF);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* White card container */
        .container {
            background: #ffffff;
            padding: 30px 40px;
            width: 350px;
            border-radius: 12px;
            box-shadow: 0px 4px 18px rgba(0,0,0,0.2);
        }

        h1 {
            /* Labels */
        label {
            display: block;
            margin-top: 12px;
            font-weight: bold;
            color: #333;
        }

        /* Input fields */
        input {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #aaa;
            border-radius: 6px;
            font-size: 14px;
        }

        /* Login button */
        button {
            width: 100%;
            margin-top: 20px;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            background-color: #6C63FF;
            color: white;
            cursor: pointer;
        }

        button:hover {
            background-color: #554dcc;
        }
    </style>

</head>
<body>

    <div class="container">
        <h1>Login Form</h1>

        <form action="login" method="get">
            <label>User Name:</label>
            <input type="text" name="uname" required>

            <label>Password:</label>
            <input type="password" name="pwd" required>

            <button>Login</button>
        </form>
    </div>

</body>
</html>