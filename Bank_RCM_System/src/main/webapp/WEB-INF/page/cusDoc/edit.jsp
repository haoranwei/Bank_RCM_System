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
    <title>编辑客户档案模块</title>
    <link href="${APP_PATH}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>编辑客户档案</h1>
    <form action="/cusDoc/edit" method="post">
        <input type="hidden" id="customerId" name="customerId" value="${customer.customerId}">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${customer.name}" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="idCard">ID Card:</label>
            <input type="text" id="idCard" name="idCard" value="${customer.idCard}" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" value="${customer.phone}" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="${customer.address}" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="occupation">Occupation:</label>
            <input type="text" id="occupation" name="occupation" value="${customer.occupation}" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="income">Income:</label>
            <input type="text" id="income" name="income" value="${customer.income}" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="loanRecords">Loan Records:</label>
            <input type="text" id="loanRecords" name="loanRecords" value="${customer.loanRecords}" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="creditScore">Credit Score:</label>
            <input type="text" id="creditScore" name="creditScore" value="${customer.creditScore}" class="form-control" required>
        </div>
        <input type="submit" value="Save" class="btn btn-primary">
    </form>
</div>
</body>
</html>
