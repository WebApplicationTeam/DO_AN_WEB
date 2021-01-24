package beans;

public class Content {
    int course_id,chapter,session;
    String chapter_name,session_name,link;

    public Content(int course_id, int chapter, int session, String chapter_name, String session_name, String link) {
        this.course_id = course_id;
        this.chapter = chapter;
        this.session = session;
        this.chapter_name = chapter_name;
        this.session_name = session_name;
        this.link = link;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public int getChapter() {
        return chapter;
    }

    public void setChapter(int chapter) {
        this.chapter = chapter;
    }

    public int getSession() {
        return session;
    }

    public void setSession(int session) {
        this.session = session;
    }

    public String getChapter_name() {
        return chapter_name;
    }

    public void setChapter_name(String chapter_name) {
        this.chapter_name = chapter_name;
    }

    public String getSession_name() {
        return session_name;
    }

    public void setSession_name(String session_name) {
        this.session_name = session_name;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "ContentModels{" +
                "course_id=" + course_id +
                ", chapter=" + chapter +
                ", session=" + session +
                ", chapter_name='" + chapter_name + '\'' +
                ", session_name='" + session_name + '\'' +
                ", link='" + link + '\'' +
                '}';
    }
}
