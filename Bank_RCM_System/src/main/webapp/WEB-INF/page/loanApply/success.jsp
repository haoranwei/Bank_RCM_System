<%--
  Created by IntelliJ IDEA.
  User: hrwei
  Date: 2023/12/31
  Time: 1:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%
    pageContext.setAttribute("APP_PATH",request.getContextPath());
  %>
  <title>贷款申请成功</title>
  <link href="${APP_PATH}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css">
  <%--    注意，使用bs的JavaScript前提是引入jQuery--%>
  <script src="${APP_PATH}/static/bootstrap-3.4.1-dist/js/jquery-2.1.0.min.js"></script>
  <script src="${APP_PATH}/static/bootstrap-3.4.1-dist/js/bootstrap.js/bootstrap.min.js"></script>

</head>
<body>
  <div class="container">
    <h2>申请成功</h2>
    <p>用户贷款申请已成功提交！</p>
    <a href="${APP_PATH}/loanApply/apply">返回申请页面</a>
  </div>
</body>
</html>
