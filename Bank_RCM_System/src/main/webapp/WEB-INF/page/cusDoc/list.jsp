<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hrwei
  Date: 2023/12/28
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<html>
<head>
    <title>客户档案管理模块</title>
    <link href="${APP_PATH}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>客户档案管理</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead>
            <tr>
                <th>Customer ID</th>
                <th>Name</th>
                <th>ID Card</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Occupation</th>
                <th>Income</th>
                <th>Loan Records</th>
                <th>Credit Score</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${customers}" var="customer">
                <tr>
                    <td>${customer.customerId}</td>
                    <td>${customer.name}</td>
                    <td>${customer.idCard}</td>
                    <td>${customer.phone}</td>
                    <td>${customer.address}</td>
                    <td>${customer.occupation}</td>
                    <td>${customer.income}</td>
                    <td>${customer.loanRecords}</td>
                    <td>${customer.creditScore}</td>
                    <td>
                        <a href="/cusDoc/edit/${customer.customerId}" class="btn btn-primary">编辑</a>
                        <a href="/cusDoc/delete/${customer.customerId}" class="btn btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <a href="/cusDoc/add" class="btn btn-success">新建客户档案</a>
</div>
</body>
</html>
