<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products List</h1>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Manufacture</td>
    </tr>
    <c:forEach var="product" items="${requestScope['products']}">
        <tr>
            <td><a href="/products?action=view&id=${product.id}">${product.name}</a></td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.manufacture}</td>
        </tr>
    </c:forEach>
</table>
<p>
    <a href="/products">Back to product list</a>
</p>
</body>
</html>