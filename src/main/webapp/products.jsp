<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Product Page</title>
</head>
<body>
<h1>Product List</h1>

<table border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th>ID</th>
        <th>Product Name</th>
        <th>Product Desc</th>
        <th>Product Color</th>
        <th>Product Size</th>
        <th>Product Price</th>
    </tr>

    <c:forEach var="prod" items="${products}">
        <tr>
            <td>${prod.ID}</td>
            <td>${prod.ProductName}</td>
            <td>${prod.ProductDescription}</td>
            <td>${prod.ProductColor}</td>
            <td>${prod.ProductSize}</td>
            <td>${prod.ProductPrice}</td>
        </tr>
    </c:forEach>
</table>

<hr/>

<h2>Add New Product</h2>
<form action="${pageContext.request.contextPath}/products" method="post">
    <label>Product Name:
        <input type="text" name="ProductName" />
    </label><br/><br/>

    <label>Product Desc:
        <input type="text" name="ProductDescription" />
    </label><br/><br/>

    <label>Product Color:
        <input type="text" name="ProductColor" />
    </label><br/><br/>

    <label>Product Size:
        <input type="text" name="ProductSize" />
    </label><br/><br/>

    <label>Product Price:
        <input type="text" name="ProductPrice" />
    </label><br/><br/>

    <input type="submit" value="Save Product" />
</form>
<p><a href="index.jsp">Back to Home</a></p>
</body>
</html>
