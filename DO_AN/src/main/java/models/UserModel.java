package models;

import beans.User;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;

public class UserModel {
    public static Optional<User> findByUserName(String username) {
        final String sql = "select * from users where username = :username";
        try (Connection con = DbUtils.getConnection()) {
            List<User> list = con.createQuery(sql)
                    .addParameter("username", username)
                    .executeAndFetch(User.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }

    public static List<User> getUserByCourseId(int id) {
        final String sql = "select * from registercourse where course_id= :id";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("id", id)
                    .executeAndFetch(User.class);
        }
    }

    public  static  void deleteTeacher(int id)
    {
        final String sql = "delete from users where id = :id";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("id", id)
                    .executeUpdate();
        }
    }

    public static void deleteStudent(int id) {
        final String sql = "delete from users where id = :id";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("id", id)
                    .executeUpdate();
        }
        final String sql_1 = "delete from wishlist  where student_id = :id";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql_1)
                    .addParameter("id", id)
                    .executeUpdate();
        }

        final String sql_2 = "delete from feedback where  users_id = :id";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql_2)
                    .addParameter("id", id)
                    .executeUpdate();
        }
        final String sql_3 = "delete from registercourse  where student_id = :id";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql_3)
                    .addParameter("id", id)
                    .executeUpdate();
        }
    }



    public static void upgradeStudent(int id) {
        final String sql = "update users set users.permission= 1 where id = :id";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("id", id)
                    .executeUpdate();
        }
    }
    public static List<User> getUserByPermission(int per) {
        final String sql = "select * from users where permission= :permission";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("permission", per)
                    .executeAndFetch(User.class);
        }
    }

    public static List<User> getTeacher() {
        final String sql = "select users.id,count(course_id) as num_course, users.`name`, users.email, users.dob \n" +
                "    from users left join course on users.id= course.teacher_id\n" +
                "    where users.permission=1\n" +
                "    group by users.id\n";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .executeAndFetch(User.class);
        }
    }





    public static void add(User user) {
        final String sql = "INSERT INTO users (username, password, name, email, dob, permission) VALUES (:username,:password,:name,:email,:dob,:permission)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("username", user.getUsername())
                    .addParameter("password", user.getPassword())
                    .addParameter("name", user.getName())
                    .addParameter("email", user.getEmail())
                    .addParameter("dob", user.getDob())
                    .addParameter("permission", user.getPermission())
                    .executeUpdate();
        }
    }
    public static void edit(User user) {
        final String sql = "update users set name=:name, email=:email, dob=:dob where id=:id";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("id",user.getId())
                    .addParameter("name", user.getName())
                    .addParameter("email", user.getEmail())
                    .addParameter("dob", user.getDob())
                    .executeUpdate();
        }
    }
}
