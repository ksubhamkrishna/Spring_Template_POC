<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Changed from 'center' to 'flex-start' */
            height: 100vh;
            padding-top: 50px; /* Adjusted padding to push the content up */
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin: 10px 0;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #45a049;
        }
        .link-button {
            background-color: #007bff;
        }
        .link-button:hover {
            background-color: #0056b3;
        }
        .form-actions {
            text-align: center;
        }
        .form-actions a {
            color: #007bff;
            text-decoration: none;
        }
        .form-actions a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register</h2>
        <form action="processRegister" method="post">
            <input type="text" name="username" placeholder="Username" required />
            <input type="password" name="password" placeholder="Password" required />
            <input type="email" name="email" placeholder="Email" required />
            <button type="submit">Register</button>
            <div class="form-actions">
                <button type="button" class="link-button" 
                        onclick="window.location.href='${pageContext.request.contextPath}/login/show'">
                    Login
                </button>
            </div>
        </form>
    </div>
</body>
</html>
