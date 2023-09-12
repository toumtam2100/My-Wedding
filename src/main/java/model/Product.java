package model;

public class Product{

    private int productID;
    private String productName;
    private int categoryID;
    String categoryName;
    private int price;
    private int quantity;
    private String image;
    private boolean status;
    private String description;

    public Product(int productID, String productName, int categoryID, int price, int quantity, String image, boolean status, String description) {
        this.productID = productID;
        this.productName = productName;
        this.categoryID = categoryID;
        this.price = price;
        this.quantity = quantity;
        this.image = image;
        this.status = status;
        this.description = description;
    }

    public Product( int categoryID) {
        this.categoryID = categoryID;
    }

    public Product(int productID, String productName,int quantity, int categoryID, int price,  String image, boolean status, String description, String categoryName) {
        this.productID = productID;
        this.productName = productName;
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.price = price;
        this.quantity = quantity;
        this.image = image;
        this.status = status;
        this.description = description;
    }
    public Product(String productName, int categoryID, int quantity, String image, boolean status, String description) {
        this.productName = productName;
        this.categoryID = categoryID;
        this.quantity = quantity;
        this.image = image;
        this.status = status;
        this.description = description;
    }
    public Product(){

    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
    @Override
    public String toString() {
        return "Product{" +
                "productID=" + productID +
                ", productName='" + productName + '\'' +
                ", categoryID=" + categoryID +
                ", categoryName='" + categoryName + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", image='" + image + '\'' +
                ", status=" + status +
                ", description='" + description + '\'' +
                '}';
    }


}
