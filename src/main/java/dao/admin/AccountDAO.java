package dao.admin;

import context.DBContext;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;


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
                list.add(new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getString(9)
                        )
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

    public User getCustomerById(int id) {
        User user = new User() ;
        String query = "SELECT * from NGUOIDUNG where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                user = new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }
    return user;
    }

    public User getCustomerByUsername(String name) {
        User user = new User() ;
        String query = "SELECT * from NGUOIDUNG where username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            rs = ps.executeQuery();
            if (rs.next()) {
                user = new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }
        return user;
    }

    public void deleteUser(int id) {
        String query = "delete from NGUOIDUNG\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public boolean addUser(String userName, String password, String fullName, String email, String tel, String hash) {
        String query = "INSERT INTO NGUOIDUNG VALUES (?, ?, ?,?,?,?,?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, fullName);
            ps.setString(4, email);
            ps.setString(5, tel);
            ps.setBoolean(6, false);
            ps.setString(7,hash);
            ps.setString(8, "User");
            ps.executeUpdate();
        } catch (Exception e) {
            return false;
        }
        return true;
    }

    public void updateUser(int id, String userName,String fullName, String role) {
        String query = "update NGUOIDUNG set Fullname = ?," +
                " Role = ? " +
                "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, role);
            ps.setInt(3,id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public ArrayList<User> seachUser(String fullname){
        String query = "select * from NGUOIDUNG where Fullname like ?";
        ArrayList<User> result = new ArrayList<>();
        int i =0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + fullname + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                result.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return result;
    }

    public boolean checkUsername(String username){
        String query = "select * from NGUOIDUNG where username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                return false;
            }
        } catch (Exception e) {
        }
        return true;
    }

    public boolean checkEmail(String email){
        String query = "select * from NGUOIDUNG where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                return false;
            }
        } catch (Exception e) {
        }
        return true;
    }

    public boolean activeMail(String hash){
        String query = "select * from NGUOIDUNG where hash_string = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, hash);
            rs = ps.executeQuery();
            if (rs.next()) {
                String sql_update_mail = "update NGUOIDUNG set is_Email = ? where hash_string = ?";
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(sql_update_mail);
                ps.setBoolean(1, true);
                ps.setString(2, hash);
                ps.executeUpdate();
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean changePassword(String hash, String password){
        String query = "select * from NGUOIDUNG where hash_string = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, hash);
            rs = ps.executeQuery();
            if (rs.next()) {
                String sql_update_mail = "update NGUOIDUNG set password = ? where hash_string = ?";
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(sql_update_mail);
                ps.setString(1, password);
                ps.setString(2, hash);
                ps.executeUpdate();
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        System.out.println(dao.changePassword("344aa626-3199-4f33-bef0-241f6ee93aca", "minh"));
    }
}
