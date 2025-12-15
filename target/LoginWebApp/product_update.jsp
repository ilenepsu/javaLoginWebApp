<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
</head>
<body>
<h2>Update Shoe Detail</h2>
<form action="admin/productActions" method="POST">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="${product.getID()}">

    <label for="productName">Name:</label>
    <input type="text" id="productName" name="productName" value="${product.getProductName()}" required><br>

    <label for="productDescription">Description:</label>
    <input type="text" id="productDescription" name="productDescription" value="${product.getProductDescription()}"><br>

    <label for="productColor">Color:</label>
    <input type="text" id="productColor" name="productColor" value="${product.getProductColor()}"><br>

    <label for="productSize">Size:</label>
    <input type="text" id="productSize" name="productSize" value="${product.getProductSize()}"><br>

    <label for="productPrice">Price:</label>
    <input type="text" id="productPrice" name="productPrice" value="${product.getProductPrice()}" required><br>

    <input type="submit" value="Update Product">
</form>
<p><a href="admin/products?action=LIST">Back to List</a></p>
</body>
</html>