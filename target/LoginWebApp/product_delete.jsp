<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
<h2>Confirm Delete Shoe Detail</h2>
<p>Are you sure you want to delete the following product?</p>

<p>ID: ${product.getID()}<br>
    Name: ${product.getProductName()}<br>
    Price: ${product.getProductPrice()}</p>

<form action="admin/productActions" method="POST">
    <input type="hidden" name="action" value="delete">
    <input type="hidden" name="id" value="${product.getID()}">

    <input type="submit" value="Confirm Delete">
</form>
<p><a href="admin/products?action=LIST">Cancel and Go Back to List</a></p>
</body>
</html>