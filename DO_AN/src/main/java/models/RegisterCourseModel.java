package models;


import beans.Registers;
import org.sql2o.Connection;
import utils.DbUtils;

public class RegisterCourseModel {

    public static void add(Registers c) {
        final String sql = "INSERT INTO registercourse (course_id,student_id) VALUES (:CourseReID, :StudentID)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CourseReID", c.getCourse_ID())
                    .addParameter("StudentID", c.getStudent_ID())
                    .executeUpdate();
        }
        final String sqll = "UPDATE course set course.course_participant=course.course_participant+1 WHERE course.course_id=:CourseReID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sqll)
                    .addParameter("CourseReID", c.getCourse_ID())
                    .executeUpdate();
        }
    }

    public static int checkExitCourse(Registers c){
        final String sql= "SELECT COUNT(*) from registercourse WHERE course_id=:CourseReID and student_id=:StudentID";
        try (Connection con = DbUtils.getConnection()) {
            return  con.createQuery(sql)
                    .addParameter("CourseReID", c.getCourse_ID())
                    .addParameter("StudentID", c.getStudent_ID())
                    .executeScalar(Integer.class);
        }
    }
}
