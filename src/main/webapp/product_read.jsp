<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="java.sun.com" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Product Details</title>
</head>
<body>
<h2>Shoe Details Information</h2>
<p><a href="ProductServlet?action=new">Add New Product</a></p>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Color</th>
        <th>Size</th>
        <th>Price</th>
        <th>Action</th>
    </tr>
    <c:forEach var="product" items="${listProducts}">
        <tr>
            <td>${product.productId}</td>
            <td>${product.productName}</td>
            <td>${product.productDescription}</td>
            <td>${product.productColour}</td>
            <td>${product.productSize}</td>
            <td>${product.productPrice}</td>
            <td>
                <a href="ProductServlet?action=edit&product_id=${product.productId}">Edit</a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="ProductServlet?action=delete&product_id=${product.productId}" onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>