package controller;

import entity.Product;
import entity.ProductDAO;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/products")
public class ProductControllerServlet extends HttpServlet {
    private ProductDAO productDAO;

    public void init() {
        productDAO = new ProductDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "LIST";
        }

        switch (action) {
            case "LIST":
                listProducts(request, response);
                break;
            case "SHOW_UPDATE_FORM":
                showUpdateForm(request, response);
                break;
            case "SHOW_DELETE_CONFIRM":
                showDeleteConfirm(request, response);
                break;
            default:
                listProducts(request, response);
                break;
        }
    }

    private void listProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> products = productDAO.getAll();
        request.setAttribute("productList", products);
        // Forward to the read (list) page
        request.getRequestDispatcher("/product_read.jsp").forward(request, response);
    }

    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));
        Product existingProduct = productDAO.get(productId).orElse(null);
        request.setAttribute("product", existingProduct);
        request.getRequestDispatcher("/product_update.jsp").forward(request, response);
    }

    private void showDeleteConfirm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));
        Product productToDelete = productDAO.get(productId).orElse(null);
        request.setAttribute("product", productToDelete);
        request.getRequestDispatcher("/product_delete.jsp").forward(request, response);
    }
}