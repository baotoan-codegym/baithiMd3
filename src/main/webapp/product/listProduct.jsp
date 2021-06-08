<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/8/2021
  Time: 11:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/products?action=create">Add New Product</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Tên Sản Phẩm</th>
            <th>Giá Sản phẩm</th>
            <th>Số lượng Sản phẩm</th>
            <th>Màu sắc sản phẩm</th>
            <th>Thông tin sản phẩm</th>
            <th>Loại sản phẩm</th>
            <th>Thao tác</th>

        </tr>
        <c:forEach items="${productList}" var="p">
            <tr>
                <td scope="row">${p.id}</td>
                <td>${p.name}</td>
                <td>${p.price}</td>
                <td>${p.amount}</td>
                <td>${p.color}</td>
                <td>${p.description}</td>
                <td>${p.category.name}</td>
                <td>
                    <a class="btn " href="/products?action=edit&id=${p.id}">Sửa</a>
                    <a class="btn  "  href="/products?action=delete&id=${p.id}">Xoá</a>

                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
