package beans;

public class feedback {
    int course_id;
    int user_id;
    String comment;
    int rate;

    public feedback(int course_id, int user_id, String comment, int rate) {
        this.course_id = course_id;
        this.user_id = user_id;
        this.comment = comment;
        this.rate = rate;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        return "feedback{" +
                "course_id=" + course_id +
                ", user_id=" + user_id +
                ", comment='" + comment + '\'' +
                ", rate=" + rate +
                '}';
    }
}
