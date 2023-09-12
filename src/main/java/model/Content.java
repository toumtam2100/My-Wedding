package model;

public class Content {
    private int contentID;
    private String contentType;
    private String contentName;
    private String label;
    private String secondLabel;
    private int likeHit;
    private String image;
    private String description;
    private String comment;

    public  Content() {

    }

    public Content(int contentID, String contentType, String contentName, String label, String secondLabel, int likeHit, String image, String description, String comment) {
        this.contentID = contentID;
        this.contentType = contentType;
        this.contentName = contentName;
        this.label = label;
        this.secondLabel = secondLabel;
        this.likeHit = likeHit;
        this.image = image;
        this.description = description;
        this.comment = comment;
    }

    public Content(String contentType, String contentName, String label, String secondLabel, int likeHit, String image, String description, String comment) {
        this.contentType = contentType;
        this.contentName = contentName;
        this.label = label;
        this.secondLabel = secondLabel;
        this.likeHit = likeHit;
        this.image = image;
        this.description = description;
        this.comment = comment;
    }

    public int getContentID() {
        return contentID;
    }

    public void setContentID(int contentID) {
        this.contentID = contentID;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getContentName() {
        return contentName;
    }

    public void setContentName(String contentName) {
        this.contentName = contentName;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getSecondLabel() {
        return secondLabel;
    }

    public void setSecondLabel(String secondLabel) {
        this.secondLabel = secondLabel;
    }

    public int getLikeHit() {
        return likeHit;
    }

    public void setLikeHit(int likeHit) {
        this.likeHit = likeHit;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "Content{" +
                "contentID=" + contentID +
                ", contentType='" + contentType + '\'' +
                ", contentName='" + contentName + '\'' +
                ", label='" + label + '\'' +
                ", secondLabel='" + secondLabel + '\'' +
                ", LikeHit='" + likeHit + '\'' +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", Comment=?'" + comment + '\'' +
                '}';
    }
}