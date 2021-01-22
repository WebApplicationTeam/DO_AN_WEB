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
    public static List<Course> getcourseByCat(int id) {
        final String sql = "select course.course_id, course.course_name, users.`name`, course.rating,  cat_name, count(feedback.`comment`) as num_cmt, course.price\n" +
                "from ((course, category) left join feedback on course.course_id= feedback.course_id) left join  users on course.teacher_id= users.id\n" +
                "where course.cat_id= category.cat_id and category.cat_id= :cat_id\n" +
                "group by course.course_id ";


        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("cat_id", id)
                    .executeAndFetch(Course.class);

        }
    }

    public static Optional<Course> findById(int id) {
        final String sql = "select * from course where course_id= :course_id";
        try (Connection con = DbUtils.getConnection()) {
            List<Course> list = con.createQuery(sql)
                    .addParameter("course_id", id)
                    .executeAndFetch(Course.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }
    public static List<Course> getcourseByString(String search) {
        final String sql = "select course.course_id, course_name, course_tiny_desc, course_full_desc, rating, course_participant, teacher_id, last_update, amount_chapter, complete, course.cat_id, price, learned\n"+
                " from ((course, category) left join feedback on course.course_id= feedback.course_id) left join  users on course.teacher_id= users.id\n"+
                " where course.cat_id=category.cat_id and (( match(course_name) against  (:search IN NATURAL LANGUAGE MODE) or course_name LIKE :search) or ( match(cat_name) against  (:search IN NATURAL LANGUAGE MODE) or cat_name LIKE :search))" +
                "  group by course.course_id";


        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("search","%"+ search + "%")
                    .executeAndFetch(Course.class);

        }
    }

    public static void delete(int id) {
        final String sql = "delete from course where course_id = :id";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("id", id)
                    .executeUpdate();
        }
    }
}


