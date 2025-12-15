package com.example;

import entity.Product;
import entity.ProductDAO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {

    private ProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        // use your existing DAO
        productDAO = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        // Get all products from the DB via DAO
        List<Product> products = productDAO.getAll();
        request.setAttribute("products", products);

        // Forward to JSP
        RequestDispatcher rd = request.getRequestDispatcher("/products.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Simple “create” operation
        String product_name = request.getParameter("product_name");
        String product_description = request.getParameter("product_description");
        String product_color = request.getParameter("product_color");
        String product_size = request.getParameter("product_size");
        String product_price = request.getParameter("product_price");

        if (product_name != null && product_description != null && product_color != null && product_size != null && product_price != null
                && !product_name.isBlank() && !product_description.isBlank()) {

            Product c = new Product();
            c.setProductName(product_name);
            c.setProductDescription(product_description);
            c.setProductColor(product_color);
            c.setProductSize(product_size);
            c.setProductPrice(product_price);

            productDAO.insert(c);    // uses your existing DAO
        }

        // Redirect to avoid form resubmission
        response.sendRedirect(request.getContextPath() + "/products");
    }
}

