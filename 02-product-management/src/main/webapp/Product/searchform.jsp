<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Tien
  Date: 07/01/2021
  Time: 9:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Searching</title>
</head>
<body>
<h1>Search product</h1>
<form method="post" style="width: 300px">
    <fieldset>
        <legend>Search product</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Search"></td>
                <td><a href="/products">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
