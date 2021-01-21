package beans;

import java.util.Date;

public class Course {
    int course_id, course_participant, teacher_id, amount_chapter, cat_id, num_cmt;
    String course_name, course_tiny_desc, course_full_desc,learned,course_pic, cat_name, name;
    float rating,price;
    Date last_update;
    boolean complete;

    public Course() {
    }

    public Course(int course_id, int course_participant, int teacher_id, int amount_chapter, int cat_id, String course_name, String course_tiny_desc, String course_full_desc, String learned, float rating, float price, Date last_update, boolean complete) {
        this.course_id = course_id;
        this.course_participant = course_participant;
        this.teacher_id = teacher_id;
        this.amount_chapter = amount_chapter;
        this.cat_id = cat_id;
        this.course_name = course_name;
        this.course_tiny_desc = course_tiny_desc;
        this.course_full_desc = course_full_desc;
        this.learned = learned;
        this.rating = rating;
        this.price = price;
        this.last_update = last_update;
        this.complete = complete;
    }

    public Course(int course_id, int num_cmt, String course_name, String cat_name, String name, float rating, float price) {
        this.course_id = course_id;
        this.num_cmt = num_cmt;
        this.course_name = course_name;
        this.cat_name = cat_name;
        this.name = name;
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

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public int getNum_cmt() {
        return num_cmt;
    }

    public void setNum_cmt(int num_cmt) {
        this.num_cmt = num_cmt;
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

    public String getCourse_pic() {
        return course_pic;
    }

    public void setCourse_pic(String course_pic) {
        this.course_pic = course_pic;
    }

    public String getCat_name() {
        return cat_name;
    }

    public void setCat_name(String cat_name) {
        this.cat_name = cat_name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public Date getLast_update() {
        return last_update;
    }

    public void setLast_update(Date last_update) {
        this.last_update = last_update;
    }

    public boolean isComplete() {
        return complete;
    }

    public void setComplete(boolean complete) {
        this.complete = complete;
    }

    @Override
    public String toString() {
        return "Course{" +
                "course_id=" + course_id +
                ", course_participant=" + course_participant +
                ", teacher_id=" + teacher_id +
                ", amount_chapter=" + amount_chapter +
                ", cat_id=" + cat_id +
                ", num_cmt=" + num_cmt +
                ", course_name='" + course_name + '\'' +
                ", course_tiny_desc='" + course_tiny_desc + '\'' +
                ", course_full_desc='" + course_full_desc + '\'' +
                ", learned='" + learned + '\'' +
                ", course_pic='" + course_pic + '\'' +
                ", cat_name='" + cat_name + '\'' +
                ", name='" + name + '\'' +
                ", rating=" + rating +
                ", price=" + price +
                ", last_update=" + last_update +
                ", complete=" + complete +
                '}';
    }
}
