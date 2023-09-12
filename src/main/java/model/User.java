package model;

public class User  {
    int id;
    private  String userName;
    private String password;
    private String fullName;
    private String email;
    private String Tel;
    private boolean isEmail;
    private String hash;
    private  String role;

    public User(int id, String userName, String password, String fullName, String email, String tel, boolean isEmail, String hash, String role) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.Tel = tel;
        this.isEmail = isEmail;
        this.hash = hash;
        this.role = role;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User(String fullName) {
        this.fullName = fullName;
    }

    public User(int id,String userName, String password, String fullName, String role) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.role = role;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return Tel;
    }

    public void setTel(String tel) {
        Tel = tel;
    }

    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public boolean isEmail() {
        return isEmail;
    }

    public void setEmail(boolean email) {
        isEmail = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", Tel='" + Tel + '\'' +
                ", isEmail=" + isEmail +
                ", hash='" + hash + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
