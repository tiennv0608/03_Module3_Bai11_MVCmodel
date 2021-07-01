<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<h1>Products List</h1>
<table border="1px solid black">
    <tr style="text-align: center">
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacture</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td style="text-align: center"><a href="/products?action=view&id=${product.id}">${product.name}</a></td>
            <td style="text-align: right">${product.price}</td>
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