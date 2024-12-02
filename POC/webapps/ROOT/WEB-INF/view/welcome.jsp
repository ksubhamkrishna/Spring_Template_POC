<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
</head>
<body>
    <h1>Welcome, you are successfully logged in!</h1>

    <!-- PDF Generator Button -->
    <form action="/pdf/generate" method="get" style="margin-top: 20px;">
        <button type="submit" style="padding: 10px 20px; font-size: 16px; cursor: pointer;">PDF Generator</button>
    </form>

    <!-- PDF Downloader Button -->
    <form action="/pdf/download" method="get" style="margin-top: 20px;">
        <button type="submit" style="padding: 10px 20px; font-size: 16px; cursor: pointer;">PDF Downloader</button>
    </form>
</body>
</html>
