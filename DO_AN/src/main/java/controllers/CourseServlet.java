package controllers;

import beans.Course;
import beans.Registers;
import beans.feedback;
import models.CourseModel;
import models.FeedbackModel;
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
                request.setAttribute("catID",catID);
                final int LIMIT=6;
                int currentPage=1;
                if(request.getParameter("page")!=null){
                    currentPage=Integer.parseInt(request.getParameter("page"));
                }
                int offset=(currentPage-1)*LIMIT;

                int total=CourseModel.countcourseByCat(catID);
                int nPages=total/LIMIT;
                if(total%LIMIT>0)
                    nPages++;
                int[] pages=new int[nPages];
                for (int i=0;i<nPages;i++)
                {
                    pages[i]=i+1;
                }
                request.setAttribute("pages", pages);
                List<Course> list = CourseModel.getcourseByCat(catID,LIMIT,offset);
                request.setAttribute("course", list);
                ServletUtils.forward("/views/vwCourse/ByCat.jsp", request, response);
                break;
            case "/Search":
                String search = request.getParameter("search") ;
                final int LIMIT1=6;
                int currentPage1=1;
                if(request.getParameter("page")!=null){
                    currentPage1=Integer.parseInt(request.getParameter("page"));
                }
                int offset1=(currentPage1-1)*LIMIT1;

                int total1=CourseModel.countgetcourseByString(search);
                int nPages1=total1/LIMIT1;
                if(total1%LIMIT1>0)
                    nPages1++;
                int[] pages1=new int[nPages1];
                for (int i=0;i<nPages1;i++)
                {
                    pages1[i]=i+1;
                }
                request.setAttribute("pages", pages1);
                List<Course> listSearch = CourseModel.getcourseByString(search,LIMIT1,offset1);
                request.setAttribute("courseSearch", listSearch);
                ServletUtils.forward("/views/vwCourse/Search.jsp", request, response);
                break;
            case "/Detail":
                int cID = Integer.parseInt(request.getParameter("id"));
                Optional<Course> c = CourseModel.findById(cID);
                List<feedback> d = FeedbackModel.getfeedbackByCourseId(cID);
                if (c.isPresent()) {
                    request.setAttribute("course", c.get());
                    request.setAttribute("feedback",d);
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
