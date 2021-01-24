package controllers;

import beans.Category;
import beans.Course;
import models.CategoryModels;
import models.CourseModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "/Home/*")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if(path == null || path.equals("/")){
            path = "/Index";
        }
        switch (path)
        {
            case "/Index":
                List<Category> list = CategoryModels.getAll();
                request.setAttribute("category", list);
                List<Course> listcourse = CourseModel.getTop10();
                request.setAttribute("coursetop10", listcourse);
                List<Course> listnew = CourseModel.getNewWeekCourse();
                request.setAttribute("newweek", listnew);
                List<Course> listtoppart = CourseModel.getTopPart();
                request.setAttribute("toppart", listtoppart);
                List<Category> listTopCat = CategoryModels.getTopCat();
                request.setAttribute("topcat", listTopCat);


                ServletUtils.forward("/views/vwHome/Index.jsp", request, response);
                break;
            case "/About":
                ServletUtils.forward("/views/vwHome/About.jsp", request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }
}
