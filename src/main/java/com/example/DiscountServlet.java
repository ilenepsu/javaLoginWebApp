package com.example;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;

@WebServlet("/DiscountServlet")
public class DiscountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final BigDecimal SALES_TAX_RATE = new BigDecimal("0.06");
    private static final NumberFormat currencyFormat = NumberFormat.getCurrencyInstance();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String shoeName = request.getParameter("shoeName");
        String quantityStr = request.getParameter("quantity");
        String unitPriceStr = request.getParameter("unitPrice");

        try {
            int quantity = Integer.parseInt(quantityStr);
            BigDecimal unitPrice = new BigDecimal(unitPriceStr);
            unitPrice = unitPrice.setScale(2, RoundingMode.HALF_UP);

            BigDecimal subtotal = unitPrice.multiply(new BigDecimal(quantity)).setScale(2, RoundingMode.HALF_UP);
            BigDecimal discountRate = BigDecimal.ZERO;
            String discountMessage;

            if (quantity >= 10) {
                discountRate = new BigDecimal("0.10");
                discountMessage = "10% off";
            } else if (quantity >= 5) {
                discountRate = new BigDecimal("0.05");
                discountMessage = "5% off";
            } else {
                discountMessage = "0% off";
            }

            BigDecimal discountAmount = subtotal.multiply(discountRate).setScale(2, RoundingMode.HALF_UP);
            BigDecimal priceAfterDiscount = subtotal.subtract(discountAmount);
            BigDecimal taxAmount = priceAfterDiscount.multiply(SALES_TAX_RATE).setScale(2, RoundingMode.HALF_UP);
            BigDecimal finalTotal = priceAfterDiscount.add(taxAmount).setScale(2, RoundingMode.HALF_UP);

            // Set attributes to pass to the *new* summary JSP
            request.setAttribute("submittedName", shoeName);
            request.setAttribute("quantity", quantity);
            request.setAttribute("unitPriceFormatted", currencyFormat.format(unitPrice));
            request.setAttribute("subtotalFormatted", currencyFormat.format(subtotal));
            request.setAttribute("discountMessage", discountMessage);
            // Changed this line: just the amount value, no parentheses
            request.setAttribute("discountAmountFormatted", currencyFormat.format(discountAmount) + " deducted");
            request.setAttribute("taxAmountFormatted", currencyFormat.format(taxAmount));
            request.setAttribute("finalTotalFormatted", currencyFormat.format(finalTotal));

        } catch (NumberFormatException e) {
            request.setAttribute("message", "Error: Invalid input format.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/sneaker.jsp");
            dispatcher.forward(request, response);
            return;
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/orderSummary.jsp");
        dispatcher.forward(request, response);
    }
}
