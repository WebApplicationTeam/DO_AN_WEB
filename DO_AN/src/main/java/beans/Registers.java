package beans;

public class Registers {
    int Course_ID,Student_ID;

    public Registers(int course_ID, int student_ID) {
        Course_ID = course_ID;
        Student_ID = student_ID;
    }

    public int getCourse_ID() {
        return Course_ID;
    }

    public void setCourse_ID(int course_ID) {
        Course_ID = course_ID;
    }

    public int getStudent_ID() {
        return Student_ID;
    }

    public void setStudent_ID(int student_ID) {
        Student_ID = student_ID;
    }

    @Override
    public String toString() {
        return "Register{" +
                "Course_ID=" + Course_ID +
                ", Student_ID=" + Student_ID +
                '}';
    }
}
