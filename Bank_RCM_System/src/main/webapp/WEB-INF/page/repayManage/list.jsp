<%--
  Created by IntelliJ IDEA.
  User: hrwei
  Date: 2024/1/1
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
    <title>还款管理模块</title>
    <link href="${APP_PATH}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h2>银行贷款总表——还款管理端</h2>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>编号ID</th>
            <th>客户Name</th>
            <th>申请时间ApplyTime</th>
            <th>贷款金额LoanAmount</th>
            <th>还款期RepayTerm</th>
<%--            <th>Interest Rate</th>--%>
<%--            <th>Collateral Method</th>--%>
            <th>申请状态ApprovalStatus</th>
<%--            <th>还款日期RepaymentTime</th>--%>
<%--            <th>Repayment Amount</th>--%>
<%--            <th>Repayment Method</th>--%>
<%--            <th>Repayment Status</th>--%>
            <th>贷款余额LoanBalance</th>
<%--            <th>Overdue Status</th>--%>
<%--            <th>Collection Records</th>--%>
<%--            <th>Disbursement Time</th>--%>
<%--            <th>Disbursement Amount</th>--%>
<%--            <th>Disbursement Method</th>--%>
<%--            <th>Disbursement Status</th>--%>
<%--            <th>Action</th>--%>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="loanApply" items="${loanApplies}">
            <tr>
                <td>${loanApply.loanId}</td>
                <td>${loanApply.name}</td>
                <td>${loanApply.applyTime}</td>
                <td>${loanApply.loanAmount}</td>
                <td>${loanApply.repayTerm}</td>
<%--                <td>${loanApply.interestRate}</td>--%>
<%--                <td>${loanApply.collateralMethod}</td>--%>
                <td>${loanApply.approvalStatus}</td>
<%--                <td>${loanApply.repaymentTime}</td>--%>
<%--                <td>${loanApply.repaymentAmount}</td>--%>
<%--                <td>${loanApply.repaymentMethod}</td>--%>
<%--                <td>${loanApply.repaymentStatus}</td>--%>
                <td>${loanApply.loanAmount - loanApply.repaymentAmount}</td>
<%--                <td>${loanApply.overdueStatus}</td>--%>
<%--                <td>${loanApply.collectionRecords}</td>--%>
<%--                <td>${loanApply.disbursementTime}</td>--%>
<%--                <td>${loanApply.disbursementAmount}</td>--%>
<%--                <td>${loanApply.disbursementMethod}</td>--%>
<%--                <td>${loanApply.disbursementStatus}</td>--%>
                <td>
                    <a href="/repayManage/edit/${loanApply.loanId}" class="btn btn-primary btn-sm">管理</a>
                    <a href="/repayManage/delete/${loanApply.loanId}" class="btn btn-danger btn-sm">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="${APP_PATH}/repayManage/add" class="btn btn-success">补录客户申请（待实现）</a>
</div>
</body>
</html>
