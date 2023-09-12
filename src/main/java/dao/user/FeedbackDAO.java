package dao.user;

import context.DBContext;
import model.Feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FeedbackDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Feedback> getFeedbackList() {
        List<Feedback> list = new ArrayList<>();
            String query = "SELECT * from FEEDBACK";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Feedback(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDate(5)));
            }
        } catch (Exception e) {
        }

        return list;
    }
    public Feedback getFeedbackID(String username) {
        String query = "SELECT * from FEEDBACK where username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Feedback(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDate(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void deleteFeedback(String idFeedback) {
        String query = "delete from FEEDBACK\n"
                + "where FeedbackID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idFeedback);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void addFeedback(String username, int ratingStar, String comments, Date createAt) {
        String query = "INSERT INTO FEEDBACK\n"
                + "VALUES (?, ?, ?, ?) ;";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, String.valueOf(ratingStar));
            ps.setString(3, comments);
            ps.setDate(4, (java.sql.Date) createAt);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
    public void updateFeedback(int ratingStar, String comments, Date createAt, String idFeedback) {
        String query = "update NGUOIDUNG set " +
                "ratingStar=?, " +
                "comments=?, " +
                "createAt=?, " +
                "where idFeedback=? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, ratingStar);
            ps.setString(2, comments);
            ps.setDate(3, (java.sql.Date) createAt);
            ps.setString(4, idFeedback);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
        dao.user.FeedbackDAO dao = new FeedbackDAO();
        FeedbackDAO feedback = new FeedbackDAO();
        List<Feedback> list = dao.getFeedbackList();
        System.out.println(dao.getFeedbackID("admin"));
        for (Feedback o : list) {
            System.out.println(o);
        }
    }
}
