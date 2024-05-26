<%--
  Created by IntelliJ IDEA.
  User: Taoufik
  Date: 5/24/2024
  Time: 9:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Resource</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
        }
        .navbar {
            background-color: #1A3693;
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }
        .navbar img {
            max-height: 40px;
            vertical-align: middle;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"] {
            width: calc(100% - 170px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #729ac5;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>


<%
    String theTaskId = request.getParameter("TheTaskId");
%>



<div class="navbar">
    <img src="images/logo.png" alt="Logo">
    <span>Skyline</span>
</div>
<div class="container">
    <h2 style="text-align: center;">Add Resource</h2>
    <form action="resourceServ" method="POST">
        <div class="form-group">
            <input type="hidden" name="action" value="AddResource">
            <input type="hidden" name="TaskId" value="<%= theTaskId %>">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="type">Type:</label>
            <input type="text" id="type" name="type" required>
        </div>
        <div class="form-group">
            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" required>
        </div>
        <div class="form-group">
            <label for="supplierInfo">Supplier Info:</label>
            <input type="text" id="supplierInfo" name="supplierInfo" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Add" style="width: 100%;">
        </div>
    </form>
</div>
</body>
</html>
