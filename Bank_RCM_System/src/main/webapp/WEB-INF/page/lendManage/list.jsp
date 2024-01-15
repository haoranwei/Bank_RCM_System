<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hrwei
  Date: 2024/1/1
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<html>
<head>
    <title>放款管理模块</title>
    <link href="${APP_PATH}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h2>银行贷款总表——放款管理端</h2>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>编号ID</th>
            <th>客户Name</th>
            <th>贷款金额LoanAmount</th>
            <th>还款期RepayTerm</th>
            <th>利率InterestRate</th>
            <th>批准状态ApprovalStatus</th>
            <th>放款日期LendTime</th>
            <th>放款金额LendAmount</th>
            <th>放款方式LendMethod</th>
            <th>放款状态LendStatus</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${loanApplyList}" var="loanApply">
            <tr>
                <td>${loanApply.loanId}</td>
                <td>${loanApply.name}</td>
                <td>${loanApply.loanAmount}</td>
                <td>${loanApply.repayTerm}</td>
                <td>${loanApply.interestRate}</td>
                <td>${loanApply.approvalStatus}</td>
                <td>${loanApply.disbursementTime}</td>
                <td>${loanApply.disbursementAmount}</td>
                <td>${loanApply.disbursementMethod}</td>
                <td>${loanApply.disbursementStatus}</td>
                <td>
                    <a href="/lendManage/edit/${loanApply.loanId}" class="btn btn-primary btn-sm">管理</a>
                    <a href="/lendManage/delete/${loanApply.loanId}" class="btn btn-danger btn-sm">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="${APP_PATH}/lendManage/add" class="btn btn-success">补录信息（待实现）</a>
</div>
</body>
</html>
