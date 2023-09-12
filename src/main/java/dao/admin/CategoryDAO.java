package dao.admin;

import context.DBContext;
import model.Category;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //=============ADMIN DAO=============
    public List<Category> getCategoryList() {
        List<Category> list = new ArrayList<>();
        String query = "SELECT * from category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)
                        ));
            }
        } catch (Exception e) {
        }
        return list;
    }       //done

    public Product getCategoryByID(int id) {
        Product product = new Product();
        String query = "SELECT * from PRODUCT where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                product = new Product(
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return product;
    }       //done

    public boolean deleteCategory(int id) {
        String query = "delete from category where categoryID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    public boolean addCategory(String description, String name) {
        String query = "INSERT INTO category VALUES (?, ?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.executeUpdate();
        } catch (Exception e) {
            return false;
        }
        return true;
    }

    public boolean update(int id, String name, String des){
        String query = "UPDATE category set categoryName = ?, description = ? where categoryID = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, des);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    public Product getCategoryID(int categoryID) {
        String query = "SELECT * from category where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, categoryID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public boolean checkName(String name){
        String query = "select * from category where categoryName = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            rs = ps.executeQuery();
            if (rs.next()) {
                return false;
            }
        } catch (Exception e) {
        }
        return true;
    }

    public static void main(String[] args) {
        System.out.println(new CategoryDAO().checkName("123"));
    }
}
