<%--
  Created by IntelliJ IDEA.
  User: hrwei
  Date: 2024/1/1
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<html>
<head>
    <title>删除贷款申请</title>
    <link href="${APP_PATH}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h2>删除贷款申请</h2>
    <p>您确定要删除以下贷款申请吗？</p>
    <table class="table">
        <tr>
            <th>编号ID</th>
            <th>客户姓名</th>
            <th>贷款金额</th>
            <th>还款期限</th>
            <th>利率</th>
            <th>批准状态</th>
            <th>放款日期</th>
            <th>放款金额</th>
            <th>放款方式</th>
            <th>放款状态</th>
        </tr>
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
        </tr>
    </table>
    <form action="${APP_PATH}/lendManage/delete" method="post">
        <input type="hidden" name="loanId" value="${loanApply.loanId}">
        <button type="submit" class="btn btn-danger">确认删除</button>
        <a href="${APP_PATH}/lendManage/list" class="btn btn-default">取消</a>
    </form>
</div>
</body>
</html>

