<%@tag description="通用的 表单 页面" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@attribute name="title" required="true" %>
<%@attribute name="base" required="true" %>
<%@attribute name="formAction" description="默认为 base/action" %>
<%@attribute name="formMethod" description="默认为 POST" %>
<%@attribute name="extraTitleOperaction" fragment="true" description="额外的操作,显示在标题上" %>
<%@attribute name="submitButton" fragment="true" description="提交按钮" %>
<%@attribute name="Preprocessor" fragment="true" description="在设置完变量后调用,可用于初始化一些设置" %>

<s:set var="action" value="#context['struts.actionMapping'].name"/>
<c:if test="${formAction == null}"><c:set var="formAction" value="${base}/${action}"/></c:if>
<c:if test="${formMethod == null}"><c:set var="formMethod" value="POST"/></c:if>

<jsp:invoke fragment="Preprocessor"/>

<!DOCTYPE html>
<html>
<head>
    <base href="/"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>${action}</title>
    <link href="css/sys.css" type="text/css" rel="stylesheet"/>
    <script src="js/jquery-1.3.1.js" type="text/javascript"></script>
</head>

<body class="emp_body">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
    <tr>
        <td class="topg"></td>
    </tr>
</table>

<form action="${formAction}" method="${formMethod}">

    <s:if test="#action == 'edit'">
        <s:hidden name="id"/>
    </s:if>

    <table border="0" cellspacing="0" cellpadding="0" class="wukuang" width="100%">
        <tr>
            <td width="1%"><img src="images/tleft.gif"/></td>
            <td width="44%" align="left">[${title}]</td>

            <td width="52%" align="right">

                <%--提交按钮--%>
                <jsp:invoke fragment="submitButton"/>
                <a href="#" onclick="history.go(-1)"><img src="images/button/tuihui.gif"/></a>
                <button type="reset">重置</button>
                <%--显示额外操作--%>
                <jsp:invoke fragment="extraTitleOperaction"/>

            </td>
            <td width="3%" align="right"><img src="images/tright.gif"/></td>
        </tr>
    </table>
    <div id="jiben">
        <table width="88%" class="emp_table">
            <%--主要的表单内容--%>
            <jsp:doBody/>
        </table>
    </div>
</form>

</body>
</html>
