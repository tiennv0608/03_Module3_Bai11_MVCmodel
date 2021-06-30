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
</head>
<body>
<h1>Products</h1>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Manufacture</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach var="product" items="${requestScope['listProducts']}">
        <tr>
            <td><a href="/products?action=view&id=${product.id}"><c:out value="${product.name}"/></a></td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.manufacture}</td>
            <td><a href="/products?action=edit&id=${product.id}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
