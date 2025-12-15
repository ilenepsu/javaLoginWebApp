<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <style>
        /* CSS style for the purple link */
        .order-link {
            color: #6A5ACD; /* New gray-purple color (Slate Blue) */
            font-size: 1.1em;
            font-weight: bold;
            text-decoration: underline;
        }
        .order-link:hover {
            text-decoration: none;
        }
    </style>
</head>
<body>

<% if (session.getAttribute("user") != null) { %>
<h2>Welcome, ${user}!</h2>
<p>You are now logged in.</p>

<p>
    <a href="products.jsp" class="order-link">Go to Product Page</a>
</p>

<p>
    <a href="sneaker.jsp" class="order-link">Go to Shoe Order Page</a>
</p>


<p><a href="logout">Logout</a></p>
<% } else { %>
<p>You are not logged in. Please <a href="login.jsp">log in</a>.</p>
<% } %>

</body>
</html>
