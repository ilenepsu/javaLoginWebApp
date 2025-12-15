<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Shoes</title>
    <style>
        body { font-family: sans-serif; margin: 20px; }
        .product-form {
            border: 1px solid #ccc;
            padding: 20px;
            width: 400px;
        }
        .input-group { margin-bottom: 10px; }
        .input-group label { display: block; margin-bottom: 5px; font-weight: bold; }
        /* Add CSS to style the image */
        .shoe-image {
            max-width: 100%; /* Ensures image fits within its container */
            height: auto;
            margin-bottom: 15px; /* Adds spacing below the image */
            border-radius: 8px; /* Optional: adds rounded corners */
        }
    </style>
</head>
<body>
<h1>Order Shoes</h1>

<div class="product-form">

    <!-- Added Image Tag using a sample URL from search result 1.2.3 -->
    <img src="images/sneakers.jpg"
         alt="Cool new sneaker" class="shoe-image">

    <form action="DiscountServlet" method="POST">

        <div class="input-group">
            <label for="shoeName">Shoe Name:</label>
            <input type="text" id="shoeName" name="shoeName" required placeholder="e.g., Hyper-Sprint 3000">
        </div>

        <div class="input-group">
            <label for="unitPrice">Unit Price ($):</label>
            <input type="number" id="unitPrice" name="unitPrice" min="0.01" step="0.01" required value="100.00">
        </div>

        <div class="input-group">
            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" min="1" value="1" required>
        </div>

        <button type="submit">Calculate Total</button>
    </form>

</div>
<p><a href="index.jsp">Back to Home</a></p>
</body>
</html>
