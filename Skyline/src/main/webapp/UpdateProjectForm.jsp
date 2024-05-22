<%@ page import="dao.ProjectDAO" %>
<%@ page import="model.Project" %><%--
  Created by IntelliJ IDEA.
  User: Taoufik
  Date: 5/22/2024
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Project Form</title>
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
        input[type="date"],
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
    int id = Integer.parseInt(request.getParameter("id"));
    ProjectDAO projectDAO = new ProjectDAO();
    Project project = (Project) request.getServletContext().getAttribute("showUpdateproject");

%>



<div class="navbar">
    <img src="images/logo.png" alt="Logo">
    <span>Skyline</span>
</div>
<div class="container">
    <h2 style="text-align: center;">Project Form</h2>

    <form action="#" method="POST">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required value="<%=project.getName()%>">
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <input type="text" id="description" name="description" required value="<%=project.getDescription()%>">
        </div>
        <div class="form-group">
            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" required value="<%=project.getStartDate()%>">
        </div>
        <div class="form-group">
            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" required value="<%=project.getEndDate()%>">
        </div>
        <div class="form-group">
            <label for="budget">Budget:</label>
            <input type="number" id="budget" name="budget" step="0.01" required value="<%=project.getBudget()%>">
        </div>
        <div class="form-group">
            <input type="submit" value="Edit" style="width: 100%;">
        </div>
    </form>
</div>
</body>
</html>

