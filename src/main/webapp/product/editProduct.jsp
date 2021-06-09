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
        <a href="products?action=product">List All Product</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Product
                </h2>
            </caption>
            <c:if test="${product != null}">
                <input type="hidden" name="id" value="<c:out value='${product.id}' />"/>
            </c:if>
            <tr>
                <th>Tên Sản Phẩm:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${product.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Giá sản phẩm:</th>
                <td>
                    <input type="text" name="price" size="45"
                           value="<c:out value='${product.price}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Số lượng sản phẩm:</th>
                <td>
                    <input type="text" name="amount" size="15"
                           value="<c:out value='${product.amount}' />"
                    />
                </td>
            </tr>
             <tr>
                <th>Số lượng sản phẩm:</th>
                <td>
                    <input type="text" name="amount" size="15"
                           value="<c:out value='${product.amount}' />"
                    />
                </td>
            </tr>
             <tr>
                <th>Màu sắc sản phẩm:</th>
                <td>
                    <input type="text" name="color" size="15"
                           value="<c:out value='${product.color}' />"
                    />
                </td>
            </tr>
             <tr>
                <th>Miêu tả sản phẩm:</th>
                <td>
                    <input type="text" name="description" size="15"
                           value="<c:out value='${product.description}' />"
                    />
                </td>
            </tr>
 <tr>
                <th>Loại sản phẩm:</th>
     <td>
     <select name="category_id" id="category_id" class="form-select">
         <c:forEach items="${categoryList}" var="category">
             <option value="${category.id}"<c:if test="${product.category.id == category.id}">selected="true"</c:if>>${category.name}</option>
         </c:forEach>
     </select>
     </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
