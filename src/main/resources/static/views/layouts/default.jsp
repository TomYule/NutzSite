<%--<%@ page contentType="text/html;charset=UTF-8" %>--%>
<%--<%@ include file="../include/taglib.jsp" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html xmlns="http://www.w3.org/1999/xhtml"--%>
      <%--xmlns:th="http://www.thymeleaf.org" style="overflow-x:auto;overflow-y:auto;">--%>
<%--<head>--%>
    <%--<title><sitemesh:write property='title'/></title>--%>
    <%--<%@include file="../include/head.jsp" %>--%>
    <%--<sitemesh:write property='head'/>--%>
<%--</head>--%>
<%--<body class="fixed-sidebar full-height-layout gray-bg" style="overflow: hidden">--%>
<%--<sitemesh:write property='body'/>--%>
<%--<%@include file="../include/common.jsp" %>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../include/taglib.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
xmlns:th="http://www.thymeleaf.org" style="overflow-x:auto;overflow-y:auto;">
<head>
    <title><sitemesh:write property='title'/></title>
    <sitemesh:write property='head'/>
</head>
<body>
<sitemesh:write property='body'/>
<%@include file="../include/common.jsp" %>
</body>
</html>