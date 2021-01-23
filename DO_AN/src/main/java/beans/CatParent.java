package beans;

public class CatParent {
    int id;
    String name;

    public CatParent(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "CatParent{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
