
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../include/taglib.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
xmlns:th="http://www.thymeleaf.org" style="overflow-x:auto;overflow-y:auto;">
<head>
    <title>管理系统首页</title>
    <meta name="keywords" content="管理系统首页">
    <meta name="description" content="管理系统首页">
    <title><sitemesh:write property='title'/></title>
    <sitemesh:write property='head'/>
</head>
<body>
<sitemesh:write property='body'/>
<%@include file="../include/common.jsp" %>
</body>
</html>