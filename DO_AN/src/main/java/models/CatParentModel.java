package models;
import beans.CatParent;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;

public class CatParentModel {
    public static List<CatParent> getAll() {
        final String sql = "select * from catparent";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(CatParent.class);
        }
    }
}
