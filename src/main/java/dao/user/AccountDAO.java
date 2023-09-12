package dao.user;

import context.DBContext;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class AccountDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

        //=============ADMIN DAO=============
    public List<User> getAccountList() {
        List<User> list = new ArrayList<>();
        String query = "SELECT * from NGUOIDUNG";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getString(8)
                        ));
            }
        } catch (Exception e) {
        }

        return list;
    }

//    public User getCustomerByUsername(String username) {
//        String query = "SELECT * from NGUOIDUNG where username = ?";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, username);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new User(rs.getString(1),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(8));
//            }
//        } catch (Exception e) {
//        }
//        return null;
//    }

    public void deleteUser(String user) {
        String query = "delete from NGUOIDUNG\n"
                + "where username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addUser(String userName, String password, String fullName, String role) {
        String query = "INSERT INTO NGUOIDUNG\n"
                + "VALUES (?, ?, ?,?,?,?,?,?);";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, fullName);
            ps.setString(6, role);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void updateUser(String userName,String fullName, String role) {
        String query = "update NGUOIDUNG set " +
                "fullname=?, " +
                "role=?, "
                + "where username=? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, role);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }



//    public static void main(String[] args) {
//        AccountDAO dao = new AccountDAO();
//        User us = new User();
//        List<User> list = dao.getAccountList();
//        System.out.println(dao.getCustomerByUsername("admin"));
//        for (User o : list) {
//            System.out.println(o);
//        }
//    }
}
