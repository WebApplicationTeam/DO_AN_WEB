package models;

import beans.Category;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
/*import java.util.Optional;*/

public class CategoryModels {

    public static List<Category> getAll() {
        final String sql = "select * from category";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Category.class);
        }
    }

    /*public static Optional<Category> findById(int id) {
        final String sql = "select * from category where cat_id = :id";
        try (Connection con = DbUtils.getConnection()) {
            List<Category> list = con.createQuery(sql)
                    .addParameter("cat_id", id)
                    .executeAndFetch(Category.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }*/
}


