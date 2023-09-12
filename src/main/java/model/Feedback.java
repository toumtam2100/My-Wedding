package model;

import java.util.Date;

public class Feedback extends User {
     private String idFeedback;
    private int ratingStar;
    private String comments;
    private Date createAt;

    public Feedback(String username,String idFeedback, int ratingStar, String comments, Date createAt) {
        super(username);
        this.idFeedback = idFeedback;
        this.ratingStar = ratingStar;
        this.comments = comments;
        this.createAt = createAt;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Feedback() {
    }

    public String getIdFeedback() {
        return idFeedback;
    }

    public void setIdFeedback(String idFeedback) {
        this.idFeedback = idFeedback;
    }

    public int getRatingStar() {
        return ratingStar;
    }

    public void setRatingStar(int ratingStar) {
        this.ratingStar = ratingStar;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "idFeedback='" + idFeedback + '\'' +
                ", ratingStar=" + ratingStar +
                ", comments='" + comments + '\'' +
                '}';
    }
}
