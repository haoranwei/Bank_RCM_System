<%--
  Created by IntelliJ IDEA.
  User: hrwei
  Date: 2024/1/1
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<html>
<head>
    <title>编辑贷款申请</title>
    <link href="${APP_PATH}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="page-header">
        <h2>还款维护页面</h2>
    </div>
    <form action="/lendManage/edit/${loanApply.loanId}" method="post" class="form-horizontal">
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
        <div class="form-group">
            <label class="control-label col-sm-2">贷款金额：</label>
            <input type="text" class="form-control" name="loanAmount" value="${loanApply.loanAmount}">
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">还款期限：</label>
            <input type="text" class="form-control" name="repayTerm" value="${loanApply.repayTerm}">
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">利率：</label>
            <input type="text" class="form-control" name="interestRate" value="${loanApply.interestRate}">
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">批准状态：</label>
            <input type="text" class="form-control" name="approvalStatus" value="${loanApply.approvalStatus}">
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">放款日期：</label>
            <input type="text" class="form-control" name="disbursementTime" value="${loanApply.disbursementTime}">
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">放款金额：</label>
            <input type="text" class="form-control" name="disbursementAmount" value="${loanApply.disbursementAmount}">
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">放款方式：</label>
            <input type="text" class="form-control" name="disbursementMethod" value="${loanApply.disbursementMethod}">
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">放款状态：</label>
            <input type="text" class="form-control" name="disbursementStatus" value="${loanApply.disbursementStatus}">
        </div>

        <button type="submit" class="btn btn-primary">保存</button>
        <a href="${APP_PATH}/lendManage/list" class="btn btn-default">返回</a>
    </form>
</div>
</body>
</html>
