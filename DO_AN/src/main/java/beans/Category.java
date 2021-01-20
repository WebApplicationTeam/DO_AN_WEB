package beans;

public class Category {
    int cat_id;
    String cat_name, cat_desc_1, cat_desc_2;

    public Category() {
    }

    public Category(int cat_id, String cat_name, String cat_desc_1, String cat_desc_2) {
        this.cat_id = cat_id;
        this.cat_name = cat_name;
        this.cat_desc_1 = cat_desc_1;
        this.cat_desc_2 = cat_desc_2;
    }

    public Category(int cat_id, String cat_name) {
        this.cat_id = cat_id;
        this.cat_name = cat_name;
    }

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public String getCat_name() {
        return cat_name;
    }

    public void setCat_name(String cat_name) {
        this.cat_name = cat_name;
    }

    public String getCat_desc_1() {
        return cat_desc_1;
    }

    public void setCat_desc_1(String cat_desc_1) {
        this.cat_desc_1 = cat_desc_1;
    }

    public String getCat_desc_2() {
        return cat_desc_2;
    }

    public void setCat_desc_2(String cat_desc_2) {
        this.cat_desc_2 = cat_desc_2;
    }

    @Override
    public String toString() {
        return "Category{" +
                "cat_id=" + cat_id +
                ", cat_name='" + cat_name + '\'' +
                ", cat_desc_1='" + cat_desc_1 + '\'' +
                ", cat_desc_2='" + cat_desc_2 + '\'' +
                '}';
    }

    
}
