<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invalid Credentials</title>

    <style>
        /* Background gradient */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ff5f6d, #ffc371);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Card box */
        .container {
            background: white;
            padding: 35px 50px;
            width: 380px;
            text-align: center;
            border-radius: 14px;
            box-shadow: 0px 4px 20px rgba(0,0,0,0.25);
            animation: pop 0.4s ease;
        }

        /* Heading */
        h1 {
            color: #e63946;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Go Back Button */
        button {
            padding: 12px 20px;
            width: 100%;
            border: none;
            background-color: #e63946;
            color: white;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 15px;
        }

        button:hover {
            background-color: #b02733;
        }

        /* Pop animation */
        @keyframes pop {
            0% { transform: scale(0.8); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>INVALID CREDENTIAL</h1>

            <button type="submit">Go Back</button>
    </div>

</body>
</html>