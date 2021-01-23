package controllers;

import beans.User;
import models.UserModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "AdminTeacherManagerServlet", urlPatterns = "/Admin/TeacherManager/*")
public class AdminTeacherManagerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Delete":
                deleteStudent(request, response);
                break;
            case "/Upgrade":
                upgradeStudent(request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }


    private void deleteStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserModel.deleteTeacher(id);
        ServletUtils.redirect("/Admin/StudentManager", request, response);
    }

    private void upgradeStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserModel.upgradeStudent(id);
        ServletUtils.redirect("/Admin/TeacherManager", request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }

        switch (path) {
            case "/Index":
                List<User> list = UserModel.getTeacher();
                request.setAttribute("teacher", list);
                ServletUtils.forward("/views/vwTeacherManager/Index.jsp", request, response);
                break;
            case "/Add":
                List<User> list_s = UserModel.getUserByPermission(0);
                request.setAttribute("newteacher", list_s);
                ServletUtils.forward("/views/vwTeacherManager/Add.jsp", request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }
}
