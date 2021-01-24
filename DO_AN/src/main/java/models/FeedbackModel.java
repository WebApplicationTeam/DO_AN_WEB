package models;

import beans.CatParent;
import beans.Course;
import beans.feedback;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;
public class FeedbackModel {
    public static List<feedback> getAll() {
        final String sql = "select * from feedback";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(feedback.class);
        }
    }
    public static List<feedback> getfeedbackByCourseId(int id) {
        final String sql = "select feedback.course_id, feedback.user_id, comment,feedback.rate\n" +
                " FROM feedback, course \n" +
                " WHERE feedback.course_id=course.course_id and feedback.course_id=:course_id";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("course_id", id)
                    .executeAndFetch(feedback.class);

        }
    }
}
