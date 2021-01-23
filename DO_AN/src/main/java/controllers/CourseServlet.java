package controllers;

import beans.Course;
import beans.Registers;
import models.CourseModel;
import models.RegisterCourseModel;
import utils.ServletUtils;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "CourseServlet", urlPatterns = "/Course/*")
public class CourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Search":
                ServletUtils.redirect("/Course/Search", request, response);
                break;
            case "/Register":
                addCourseRe(request,response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
    private void addCourseRe(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int cIDRe = Integer.parseInt(request.getParameter("id"));
        int cIDStudent = Integer.parseInt(request.getParameter("q"));
        Registers cRe=new Registers(cIDRe,cIDStudent);
        int num=RegisterCourseModel.checkExitCourse(cRe);
        if(num>0)
        {
            ServletUtils.redirect("/Account/Profile",cIDStudent, request, response);
        }
        else {
            RegisterCourseModel.add(cRe);
            ServletUtils.redirect("/Account/Profile",cIDStudent, request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/ByCat":
                int catID = Integer.parseInt(request.getParameter("id"));
                List<Course> list = CourseModel.getcourseByCat(catID);
                request.setAttribute("course", list);
                ServletUtils.forward("/views/vwCourse/ByCat.jsp", request, response);
                break;
            case "/Search":
                String search = request.getParameter("search")  ;
                List<Course> listSearch = CourseModel.getcourseByString(search);
                request.setAttribute("courseSearch", listSearch);
                ServletUtils.forward("/views/vwCourse/Search.jsp", request, response);
                break;
            case "/Detail":
                int cID = Integer.parseInt(request.getParameter("id"));
                Optional<Course> c = CourseModel.findById(cID);
                if (c.isPresent()) {
                    request.setAttribute("course", c.get());
                    ServletUtils.forward("/views/vwCourse/Detail.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Home", request, response);
                }
                break;
            case "/Content":
                int conID = Integer.parseInt(request.getParameter("id"));
                Optional<Course> con = CourseModel.findById(conID);
                if (con.isPresent()) {
                    request.setAttribute("course", con.get());
                    ServletUtils.forward("/views/vwCourse/Content.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Home", request, response);
                }
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }
}
