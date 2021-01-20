package models;

import beans.Course;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;
/*import java.util.Optional;*/

public class CourseModel {

    public static List<Course> getAll() {
        final String sql = "select * from course";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }


    public static List<Course> getTop10() {
        final String sql = "select  course.course_name, course.price, course.rating from course " +
                " order by rating desc limit 9";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }

    public static List<Course> getCourseByUserID(int id) {
        final String sql = "select course.course_id, course_participant, teacher_id, amount_chapter, complete, cat_id,course_name, course_tiny_desc, course_full_desc,learned,rating,price,last_update FROM registercourse, course WHERE registercourse.course_id=course.course_id AND student_id = :user_id";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("user_id", id)
                    .executeAndFetch(Course.class);

        }
    }
    public static List<Course> getFavoriteCourseByUserID(int id) {
        final String sql = "select course.course_id, teacher_id, amount_chapter, complete, cat_id,course_name, course_tiny_desc, course_full_desc,learned,rating,price,last_update FROM wishlist, course WHERE wishlist.course_id=course.course_id AND student_id = :user_id";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("user_id", id)
                    .executeAndFetch(Course.class);

        }
    }
    public static Optional<Course> findById(int id) {
        final String sql = "select * from course where cat_id = :id";
        try (Connection con = DbUtils.getConnection()) {
            List<Course> list = con.createQuery(sql)
                    .addParameter("cat_id", id)
                    .executeAndFetch(Course.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }
}


