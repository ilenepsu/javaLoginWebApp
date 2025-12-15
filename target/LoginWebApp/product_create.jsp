<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Create Product</title>
</head>
<body>
<h2>Create New Shoe Detail</h2>
<!-- This form posts to the Action Servlet -->
<form action="admin/productActions" method="POST">
    <input type="hidden" name="action" value="create">

    <label for="productName">Name:</label>
    <input type="text" id="productName" name="productName" required><br>

    <label for="productDescription">Description:</label>
    <input type="text" id="productDescription" name="productDescription"><br>

    <label for="productColor">Color:</label>
    <input type="text" id="productColor" name="productColor"><br>

    <label for="productSize">Size:</label>
    <input type="text" id="productSize" name="productSize"><br>

    <label for="productPrice">Price:</label>
    <input type="text" id="productPrice" name="productPrice" required><br>

    <input type="submit" value="Create Product">
</form>
<p><a href="admin/products?action=LIST">Back to List</a></p>
</body>
</html>