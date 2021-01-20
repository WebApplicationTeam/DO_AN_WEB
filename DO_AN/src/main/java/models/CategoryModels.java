package models;

import beans.Category;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;
/*import java.util.Optional;*/

public class CategoryModels {

    public static List<Category> getAll() {
        final String sql = "select * from category";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Category.class);
        }
    }


    public static Optional<Category> findById(int id) {
        final String sql = "select * from category where cat_id = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            List<Category> list = con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeAndFetch(Category.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }

    public static void add(Category c) {
        final String sql = "INSERT INTO category (cat_name) VALUES (:CatName)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatName", c.getCat_name())
                    .executeUpdate();
        }
    }

    public static void delete(int id) {
        final String sql = "delete from category where cat_id = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeUpdate();
        }
    }

    public static void update(Category c) {
        final String sql = "update category set cat_name = :CatName where cat_id = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", c.getCat_id())
                    .addParameter("CatName", c.getCat_name())
                    .executeUpdate();
        }
    }
}


