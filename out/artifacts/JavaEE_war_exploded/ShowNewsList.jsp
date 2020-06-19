<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>产品管理</title>
    <link rel="stylesheet" type="text/css" href="yingLiang/css/Iframe.css" />
    <link rel="stylesheet" href="yingLiang/utilLib/bootstrap.min.css" type="text/css" media="screen" />
</head>

<body>
<span class="cp_title">新闻管理</span>
<div class="add_cp">
    <a href="logo.html">+添加新闻</a>
</div>
<div class="table_con">
    <table>
        <tr class="tb_title">
            <td width="10%">ID</td>
            <td width="30%">标题</td>
            <td width="20%">内容</td>
            <td width="15%">作者</td>
            <td width="10%">时间</td>
            <td width="15%">操作</td>
        </tr>
        <c:forEach var="n" items="${lstNews}" >
            <tr>
                <td width="10%">${n.id}</td>
                <td width="30%">${n.title}</td>
                <td width="20%">${n.content} </td>
                <td width="15%">${n.author}</td>
                <td width="10%">${n.time}</td>
                <td width="15%">
                    <a href="editServlet?newid=${n.id}" class="bj_btn">编辑</a>
                    <a href="viewServlet?newid=${n.id}" class="sj_btn">查看</a>
                    <a href="deleteServlet?newid=${n.id}" class="del_btn">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
