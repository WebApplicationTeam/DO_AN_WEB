package filters;

import beans.CatParent;
import beans.Category;
import models.CatParentModel;
import models.CategoryModels;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.util.List;

@WebFilter(filterName = "LayoutFilter")
public class LayoutFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        List<Category> list = CategoryModels.getAll();
        req.setAttribute("category", list);

        List<CatParent> parentList = CatParentModel.getAll();
        req.setAttribute("catparent",parentList);

        chain.doFilter(req, resp);
    }
    public void init(FilterConfig config) throws ServletException {

    }

}
