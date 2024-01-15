<!-- applyForm.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--将上下文路径设置为APP_PATH属性--%>
<%
    pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>

    <title>贷款申请模块</title>
    <link href="${APP_PATH}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <h2>Loan Application Form</h2>
    <form action="${APP_PATH}/loanApply/apply" method="post">
        <div class="form-group">
            <label for="loanId">Loan ID:</label>
            <input type="text" class="form-control" id="loanId" name="loanId">
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="form-group">
            <label for="applyTime">Apply Time:</label>
            <input type="date" class="form-control" id="applyTime" name="applyTime">
        </div>
        <div class="form-group">
            <label for="loanAmount">Loan Amount:</label>
            <input type="number" class="form-control" id="loanAmount" name="loanAmount">
        </div>
        <div class="form-group">
            <label for="repayTerm">Repay Term:</label>
            <input type="number" class="form-control" id="repayTerm" name="repayTerm">
        </div>
        <div class="form-group">
            <label for="interestRate">Interest Rate:</label>
            <input type="number" class="form-control" id="interestRate" name="interestRate">
        </div>
        <div class="form-group">
            <label for="collateralMethod">Collateral Method:</label>
            <input type="text" class="form-control" id="collateralMethod" name="collateralMethod">
        </div>
        <div class="form-group">
            <label for="approvalStatus">Approval Status:</label>
            <input type="text" class="form-control" id="approvalStatus" name="approvalStatus">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>