<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/8/2021
  Time: 10:33 PM
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
        <a href="/products?action=product">List All Products</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <form method="post">
            <input name="name"  class="form-control" type="text" placeholder=" nhập sản phẩm">
            <input name="price" class="form-control"  type="text" placeholder="giá sản phậm">
            <input name="amount" class="form-control"  type="text" placeholder="số lượng sản phậm">
            <input name="color" class="form-control"  type="text" placeholder="màu sắc sản phẩm">
            <input name="description" class="form-control"  type="text" placeholder="miêu tả sản phẩm">
            <select name="category_id" class="form-select">
                <c:forEach items="${categoryList}" var="category">
                    <option value="${category.id}">${category.name}</option>
                </c:forEach>
            </select>
            <button  type="submit">Thêm mới</button>
        </form>
    </form>
</div>
</body>
</html>
