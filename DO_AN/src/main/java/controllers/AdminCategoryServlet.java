package controllers;

import beans.Category;
import models.CategoryModels;
import utils.ServletUtils;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "AdminCategoryServlet", urlPatterns = "/Admin/Category/*")
public class AdminCategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Add":
                addCategory(request, response);
                break;
            case "/Delete":
                deleteCategory(request, response);
                break;
            case "/Update":
                updateCategory(request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }

    private void addCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("CatName");
        String brdesc = request.getParameter("brdesc");
        String fulldesc = request.getParameter("fulldesc");
        Category c = new Category(-1, name, brdesc,fulldesc);
        CategoryModels.add(c);
        ServletUtils.redirect("/Admin/Category", request, response);
    }

    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CatID"));
        CategoryModels.delete(id);
        ServletUtils.redirect("/Admin/Category", request, response);
    }

    private void updateCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CatID"));
        String name = request.getParameter("CatName");
        Category c = new Category(id, name);
        CategoryModels.update(c);
        ServletUtils.redirect("/Admin/Category", request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }

        switch (path) {
            case "/Index":
                List<Category> list = CategoryModels.getAll();
                request.setAttribute("category", list);
                ServletUtils.forward("/views/vwCategory/Index.jsp", request, response);
                break;
            case "/Add":
                ServletUtils.forward("/views/vwCategory/Add.jsp", request, response);
                break;
            case "/Edit":
                int id = Integer.parseInt(request.getParameter("id"));
                Optional<Category> c = CategoryModels.findById(id);

                if (c.isPresent()) {
                    request.setAttribute("categories", c.get());
                    ServletUtils.forward("/views/vwCategory/Edit.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Admin/Category", request, response);
                }
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
