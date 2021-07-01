<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Tien
  Date: 06/30/2021
  Time: 9:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<h1>Products</h1>
<table border="1px solid black">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacture</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="product" items="${listProducts}">
        <tr>
            <td style="text-align: center"><a href="/products?action=view&id=${product.id}"><c:out value="${product.name}"/></a></td>
            <td style="text-align: right">${product.price}</td>
            <td>${product.description}</td>
            <td>${product.manufacture}</td>
            <td style="text-align: center"><a href="/products?action=edit&id=${product.id}">edit</a></td>
            <td style="text-align: center"><a href="/products?action=delete&id=${product.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/products?action=create">Create new product</a>
<a href="/products?action=search">Search product</a>
</body>
</html>
