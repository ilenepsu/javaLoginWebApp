<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Shoe Order Summary</title>
    <style>
        body { font-family: sans-serif; margin: 20px; }
        .summary-container { border: 1px solid #ccc; padding: 20px; width: 400px; }
        .summary-row { margin-bottom: 5px; }
        .total-row { font-weight: bold; margin-top: 10px; border-top: 1px solid #ccc; padding-top: 10px; }
        .back-link {
            color: #6A5ACD; /* New gray-purple color (Slate Blue) */
            text-decoration: underline;
            font-size: 1.1em;
            font-weight: bold;
        }
    </style>
</head>
<body>
<h1>Shoe Order Summary</h1>

<div class="summary-container">

    <div class="summary-row">Product: ${submittedName}</div>
    <div class="summary-row">Unit Price: ${unitPriceFormatted}</div>
    <div class="summary-row">Quantity: ${quantity}</div>

    <br>

    <div class="summary-row">Subtotal: ${subtotalFormatted}</div>
    <!-- Parentheses added in HTML around the formatted value -->
    <div class="summary-row">Discount: ${discountMessage} (${discountAmountFormatted})</div>
    <div class="summary-row">Sales Tax (6%): ${taxAmountFormatted}</div>

    <div class="total-row">
        Total: ${finalTotalFormatted}
    </div>

    <br>

    <p>
        <a href="sneaker.jsp" class="back-link">Back to order page</a>
    </p>
</div>
</body>
</html>
