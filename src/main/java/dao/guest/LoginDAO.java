package dao.guest;

import context.DBContext;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

        //=============Login DAO=============
    public boolean checkLogin(String user, String password){
        String query = "select * from NGUOIDUNG where username = ? and password = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2,password);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            return false;
        } catch (Exception e) {
            return false;
        }
        return false;
    }//check user ton tai trong db

    public boolean checkEmail(String email){
        String query = "select * from NGUOIDUNG where email = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            return false;
        } catch (Exception e) {
            return false;
        }
        return false;
    }


    public boolean changeHash(String email, String hash){
        String query = "select * from NGUOIDUNG where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                String sql_update_hash = "update NGUOIDUNG set hash_string = ? where email = ?";
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(sql_update_hash);
                ps.setString(1, hash);
                ps.setString(2, email);
                ps.executeUpdate();
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public User getUserInfo(String username, String password){
        String query = "select * from NGUOIDUNG where username = ? and password = ?";
        User user = new User();
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2,password);
            rs = ps.executeQuery();
            if (rs.next()){
               user = new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getString(9)
                        );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    public void addEmailToAccount(String email, String role){
        String query = "select * from NGUOIDUNG where email = ?";
        User user = new User();
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()){
                String addEmail = "update NGUOIDUNG set email = ? where role = ?";
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(addEmail);
                ps.setString(1, email);
                ps.setString(2, role);
                ps.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public User getUserByEmail(String email){
        String query = "select * from NGUOIDUNG where email = ?";
        User user = new User();
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()){
                user = new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getString(9)
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }


    public static void main(String[] args) {
        LoginDAO dao = new LoginDAO();
        User us = new User();
//        System.out.println(dao.checkLogin("admin", "123"));
//        System.out.println(dao.getUserInfo("admin", "123").getRole());
        System.out.println(dao.checkEmail("minhtqde160524@fpt.edu.vn"));
    }
}
