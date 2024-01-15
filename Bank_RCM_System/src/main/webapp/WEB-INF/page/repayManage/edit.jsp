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
    <div class="page-header">
        <h2>还款维护页面</h2>
    </div>
    <form action="/repayManage/edit/${loanApply.loanId}" method="post" class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2">编号 id:</label>
            <div class="col-sm-10">
                ${loanApply.loanId}
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">客户姓名 Name:</label>
            <div class="col-sm-10">
                ${loanApply.name}
            </div>
        </div>
<%--        <div class="form-group">--%>
<%--            <label class="control-label col-sm-2">Apply Time:</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="date" class="form-control" name="applyTime" value="${loanApply.applyTime}">--%>
<%--            </div>--%>
<%--        </div>--%>
        <!-- Add more fields here for other properties of loanApply -->
        <div class="form-group">
            <label class="control-label col-sm-2">还款金额 Loan Amount:</label>
            <div class="col-sm-10">
                ${loanApply.loanAmount - loanApply.repaymentAmount}
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Repay Term:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="repayTerm" value="${loanApply.repayTerm}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Interest Rate:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="interestRate" value="${loanApply.interestRate}">
            </div>
        </div>
        <!-- Add more fields here for other properties of loanApply -->


        <div class="form-group">
            <label class="control-label col-sm-2">Collateral Method:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="collateralMethod" value="${loanApply.collateralMethod}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Approval Status:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="approvalStatus" value="${loanApply.approvalStatus}">
            </div>
        </div>
<%--        <div class="form-group">--%>
<%--            <label class="control-label col-sm-2">Repayment Time:</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="date" class="form-control" name="repaymentTime" value="${loanApply.repaymentTime}">--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="form-group">
            <label class="control-label col-sm-2">Repayment Amount:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="repaymentAmount" value="${loanApply.repaymentAmount}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Repayment Method:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="repaymentMethod" value="${loanApply.repaymentMethod}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Repayment Status:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="repaymentStatus" value="${loanApply.repaymentStatus}">
            </div>
        </div>
<%--        <div class="form-group">--%>
<%--            <label class="control-label col-sm-2">Loan Balance:</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="text" class="form-control" name="loanBalance" value="${loanApply.loanBalance}">--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="form-group">
            <label class="control-label col-sm-2">Overdue Status:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="overdueStatus" value="${loanApply.overdueStatus}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Collection Records:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="collectionRecords" value="${loanApply.collectionRecords}">
            </div>
        </div>
<%--        <div class="form-group">--%>
<%--            <label class="control-label col-sm-2">Disbursement Time:</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="date" class="form-control" name="disbursementTime" value="${loanApply.disbursementTime}">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label class="control-label col-sm-2">Disbursement Amount:</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="text" class="form-control" name="disbursementAmount" value="${loanApply.disbursementAmount}">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label class="control-label col-sm-2">Disbursement Method:</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="text" class="form-control" name="disbursementMethod" value="${loanApply.disbursementMethod}">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label class="control-label col-sm-2">Disbursement Status:</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="text" class="form-control" name="disbursementStatus" value="${loanApply.disbursementStatus}">--%>
<%--            </div>--%>
<%--        </div>--%>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary">Save</button>
                <a href="${APP_PATH}/repayManage/list" class="btn btn-default">Cancel</a>
            </div>
        </div>
    </form>
</div>
</body>
</html>
