package dao.admin;

import context.DBContext;
import model.Content;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ContentDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Content> getContentList() {
        List<Content> list = new ArrayList<>();
        String query = "SELECT * from CONTENT";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Content(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Content getContentByID(int contentID) {
        String query = "SELECT * from CONTENT where ContentID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, contentID);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Content(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }
    public boolean addContent(String contentType, String contentName, String label,  String secondLabel,int likeHit, String image, String description, String comment) {
        String query = "INSERT INTO Content VALUES (?,?,?,?,?,?,?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,contentType);
            ps.setString(2, contentName);
            ps.setString(3, label);
            ps.setString(4, secondLabel);
            ps.setInt(5, likeHit);
            ps.setString(6, image);
            ps.setString(7, description);
            ps.setString(8, comment);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }  //done
    public boolean deleteContent(String contentID) {
        String query = "delete from CONTENT\n"
                + "where ContentID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, contentID);
            ps.executeUpdate();
        } catch (Exception e) {
            return false;
        }
        return  true;
    }
    public void updateContent(int contentID, String contentType,  String contentName, String label, String secondLabel, int likeHit, String image, String description, String comment) {
        String query = "update CONTENT set" +
                "type=?" +
                "ContentName=?" +
                "Label=?" +
                "SecondLabel=?" +
                "LikeHit=?" +
                "Image=?" +
                "Description=?" +
                "Comment=?" +
                "where ContentID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, contentType);
            ps.setString(2, contentName);
            ps.setString(3, label);
            ps.setString(4, secondLabel);
            ps.setInt(5, likeHit);
            ps.setString(6, image);
            ps.setString(7, description);
            ps.setString(8, comment);
            ps.setInt(9, contentID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
        dao.admin.ContentDAO dao = new ContentDAO();
        List<Content> list = dao.getContentList();
//        System.out.println(dao.addContent("Blog","Brilliant", "Hello",  "Hello",0 ,"","Tao content","Hello dmm"));
        for (Content o: list ) {
            System.out.println(o);
        }
    }
}