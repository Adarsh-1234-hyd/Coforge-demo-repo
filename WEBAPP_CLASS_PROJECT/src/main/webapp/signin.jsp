<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup-page</title>

    <style>
        /* Page background */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6C63FF, #48C6EF);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* White box */
        .container {
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.2);
            width: 350px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

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
            margin-top: 5px;
            border: 1px solid #999;
            border-radius: 6px;
            font-size: 14px;
        }

        /* Button */
        button {
            width: 100%;
            margin-top: 20px;
            padding: 12px;
            background-color: #6C63FF;
            color: white;
            border: none;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
        }

        button:hover {
            background-color: #554dcc;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Sign up Form</h1>

        <form action="signin" method="get">
            <label>User Name:</label>
            <input type="text" name="uname">

            <label>Password:</label>
            <input type="password" name="pwd">

            <label>Mobile Number:</label>
            <input type="number" name="mobileno">

            <label>Email:</label>
            <input type="email" name="email">

            <button>Sign-up</button>
        </form>
    </div>

</body>
</html>