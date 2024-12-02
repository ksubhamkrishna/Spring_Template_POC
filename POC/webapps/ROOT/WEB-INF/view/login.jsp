<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f9f9f9; margin: 0; padding: 0;">
    <div style="width: 100%; max-width: 400px; margin: 50px auto; background: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #333; margin-bottom: 20px;">Login</h2>
        
        <!-- Error Message (if exists) -->
        <c:if test="${not empty error}">
            <div style="color: red; text-align: center; margin-bottom: 15px;">
                ${error}
            </div>
        </c:if>

        <form action="/login/process" method="post" style="display: flex; flex-direction: column; gap: 15px;">
            
            <div style="display: flex; flex-direction: column;">
                <label for="username" style="margin-bottom: 5px; font-size: 14px; color: #555;">Username:</label>
                <input type="text" name="username" placeholder="Enter your username" required 
                    style="padding: 10px; border: 1px solid #ddd; border-radius: 4px; font-size: 14px;">
            </div>
            
            <div style="display: flex; flex-direction: column;">
                <label for="password" style="margin-bottom: 5px; font-size: 14px; color: #555;">Password:</label>
                <input type="password" name="password" placeholder="Enter your password" required 
                    style="padding: 10px; border: 1px solid #ddd; border-radius: 4px; font-size: 14px;">
            </div>
            
            <div style="display: flex; gap: 10px; justify-content: space-between;">
                <!-- Login Button -->
                <button type="submit" 
                    style="flex: 1; background-color: #007bff; color: #fff; padding: 10px; font-size: 14px; border: none; border-radius: 4px; cursor: pointer;">
                    Login
                </button>

                <!-- Redirect to Register Button -->
                <button type="button" 
                    onclick="window.location.href='${pageContext.request.contextPath}/Register/register'" 
                    style="flex: 1; background-color: #28a745; color: #fff; padding: 10px; font-size: 14px; border: none; border-radius: 4px; cursor: pointer;">
                    Register
                </button>
            </div>
        </form>
    </div>
</body>
</html>
