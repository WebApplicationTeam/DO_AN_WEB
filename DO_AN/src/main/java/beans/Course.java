package beans;

public class Course {
    int course_id, course_participant, teacher_id, amount_chapter, complete, cat_id;
    String course_name, course_tiny_desc, course_full_desc,learned;
    float rating,price;

    public Course() {
    }


    public Course(int course_id, int course_participant, int teacher_id, int amount_chapter, int complete, int cat_id, String course_name, String course_tiny_desc, String course_full_desc, String learned, float rating, float price) {
        this.course_id = course_id;
        this.course_participant = course_participant;
        this.teacher_id = teacher_id;
        this.amount_chapter = amount_chapter;
        this.complete = complete;
        this.cat_id = cat_id;
        this.course_name = course_name;
        this.course_tiny_desc = course_tiny_desc;
        this.course_full_desc = course_full_desc;
        this.learned = learned;
        this.rating = rating;
        this.price = price;
    }

    public Course(int course_id, int teacher_id, String course_name, String course_tiny_desc, String learned, float rating, float price) {
        this.course_id = course_id;
        this.teacher_id = teacher_id;
        this.course_name = course_name;
        this.course_tiny_desc = course_tiny_desc;
        this.learned = learned;
        this.rating = rating;
        this.price = price;
    }


    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public int getCourse_participant() {
        return course_participant;
    }

    public void setCourse_participant(int course_participant) {
        this.course_participant = course_participant;
    }

    public int getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(int teacher_id) {
        this.teacher_id = teacher_id;
    }

    public int getAmount_chapter() {
        return amount_chapter;
    }

    public void setAmount_chapter(int amount_chapter) {
        this.amount_chapter = amount_chapter;
    }

    public int getComplete() {
        return complete;
    }

    public void setComplete(int complete) {
        this.complete = complete;
    }

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getCourse_tiny_desc() {
        return course_tiny_desc;
    }

    public void setCourse_tiny_desc(String course_tiny_desc) {
        this.course_tiny_desc = course_tiny_desc;
    }

    public String getCourse_full_desc() {
        return course_full_desc;
    }

    public void setCourse_full_desc(String course_full_desc) {
        this.course_full_desc = course_full_desc;
    }

    public String getLearned() {
        return learned;
    }

    public void setLearned(String learned) {
        this.learned = learned;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }


    @Override
    public String toString() {
        return "Course{" +
                "course_id=" + course_id +
                ", course_participant=" + course_participant +
                ", teacher_id=" + teacher_id +
                ", amount_chapter=" + amount_chapter +
                ", complete=" + complete +
                ", cat_id=" + cat_id +
                ", course_name='" + course_name + '\'' +
                ", course_tiny_desc='" + course_tiny_desc + '\'' +
                ", course_full_desc='" + course_full_desc + '\'' +
                ", learned='" + learned + '\'' +
                ", rating=" + rating +
                ", price=" + price +
                '}';
    }
}
