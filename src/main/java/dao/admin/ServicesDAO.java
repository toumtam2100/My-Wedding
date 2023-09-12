package dao.admin;

import context.DBContext;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ServicesDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //=============ADMIN DAO=============
    public List<Product> getProductList() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8)
                        ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductListNametoCateID() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT Product.*, category.CategoryName from Product join category on Product.CategoryID = category.CategoryID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getString(9)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductByID(int id) {
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

    public boolean deleteProduct(int id) {
        String query = "delete from PRODUCT\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            return false;
        }
        return true;
    }       //done
    public boolean addProduct(String productName, int quantity, int price, int category, String description, String image, boolean status) {
        String query = "INSERT INTO PRODUCT VALUES (?, ?,?,?,?,?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productName);
            ps.setInt(2, quantity);
            ps.setInt(4, price);
            ps.setInt(3, category);
            ps.setString(5, image);
            ps.setBoolean(6, status);
            ps.setString(7, description);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }


    public Product getProductID(String productID) {
        String query = "SELECT * from PRODUCT where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
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
    public void deleteProduct(String productID) {
        String query = "delete from PRODUCT\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
//    public boolean addProduct(String productName, String category, int price, int quantity, String image, boolean status, String description) {
//        String query = "INSERT INTO PRODUCT"
//                + "VALUES (?, ?, ?, ?, ?, ?, ?);";
//
//
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, productName);
//
//            ps.setInt(2, quantity);
//            ps.setInt(3, price);
//            ps.setString(4, category);
//            ps.setString(5, description);
//            ps.setString(6, image);
//            ps.setBoolean(7,true);
//            ps.executeUpdate();
//        } catch (Exception e) {
//            return false;
//        }
//        return true;
//    }
    public void updateProduct(String productName, String category, int price, int quantity, String image, boolean status, String description, String productID) {
        String query = "update NGUOIDUNG set " +
                "Product_name=?, " +
                "Category   =?, " +
                "Price=?, " +
                "Quantity=?" +
                "Image=?" +
                "Status=?" +
                "where ProductID=? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productName);
            ps.setString(2, category);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setString(5, image);
            ps.setBoolean(6, status);
            ps.setString(7, description);
            ps.setString(8, productID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }


    public ArrayList<Product> searchProduct(String productName){
        String query = "select * from PRODUCT where Product_name like ?";
        ArrayList<Product> result = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + productName + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                result.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8))
                );
            }
        } catch (Exception e) {
        }
        return result;
    }
    public boolean checkProductName(String productname){
        String query = "select * from NGUOIDUNG where Product_name = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productname);
            rs = ps.executeQuery();
            if (rs.next()) {
                return false;
            }
        } catch (Exception e) {
        }
        return true;
    } //neu co ten trong db thi tra ve false
    public boolean checkStatus(String id){
        String query = "select quantity from Product where ProductID = ?";
        Product product = new Product();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()){
                if (product.getQuantity() > 0)
                    return true;
            }
        } catch (Exception e) {
        }

        return false;
    }
    public static void main(String[] args) {
        dao.admin.ServicesDAO dao = new ServicesDAO();
//        ServicesDAO feedback = new ServicesDAO();
//        List<Product> list = dao.getProductList();
//        System.out.println(dao.getProductID("6"));
//        for (Product o : list) {
//            System.out.println(o);
//        }
        System.out.println(dao.getProductListNametoCateID());
    }
}
