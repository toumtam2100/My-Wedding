package control;

import dao.admin.AccountDAO;

import javax.mail.*;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Properties;
import java.util.UUID;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
//                    return new PasswordAuthentication("trandinhkhanhtoan31@gmail","pmjcbetzmybduopa");

    public boolean sendMail(String username, String email, String hash) throws InterruptedException {
        Properties connectionProperties = new Properties();
        connectionProperties.put("mail.smtp.host", "smtp.gmail.com");
        // Is authentication enabled
        connectionProperties.put("mail.smtp.auth", "true");
        // Is TLS enabled
        connectionProperties.put("mail.smtp.starttls.enable", "true");
        // SSL Port
//        connectionProperties.put("mail.smtp.socketFactory.port", "465");
        // SSL Socket Factory class
//        connectionProperties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        // SMTP port, the same as SSL port :)
        connectionProperties.put("mail.smtp.port", "587");

        System.out.print("Creating the session...");

        // Create the session
        Session session = Session.getDefaultInstance(connectionProperties,
                new javax.mail.Authenticator() {    // Define the authenticator
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("tranquangminh116@gmail.com", "iahskjpdwuvcyzym");
                    }
                });
        System.out.println("done!");

        // Create and send the message
        try {
            // Create the message
            Message message = new MimeMessage(session);
            // Set sender
            message.setFrom(new InternetAddress("tranquangminh116@gmail.com"));
            // Set the recipients
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            // Set message subject
            message.setSubject("Email xác thực.");
            // Set message text
            message.setContent("Xin chào " + username + ".Mã kích hoạt tài khoàn của bạn là " + hash +" copy mã và truy cập vào đường link localhost:8080/active để kích hoạt tài khoản của bạn.", "text/html; charset=utf-8");
            System.out.print("Sending message...");
            // Send the message
            Transport.send(message);

            System.out.println("done!");

        } catch (Exception e) {
            return false;
        }
        return true;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", "");
        request.setAttribute("MESSAGE", "");
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean checkUsername = false;
        String username = request.getParameter("username");
        String fullname = request.getParameter("fullname");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        String validationCheck = request.getParameter("validationCheck");
        String hash = UUID.randomUUID().toString();
        if (validationCheck.equals("on")) {
            if (password1.equals(password2)) {
                checkUsername = new AccountDAO().checkUsername(username);
                if (checkUsername) {
                    if (new AccountDAO().checkEmail(email)) {
                        boolean checkCreate = new AccountDAO().addUser(username, password1, fullname, email, tel, hash);
                        System.out.println(username);
                        System.out.println(password1);
                        System.out.println(fullname);
                        System.out.println(email);
                        System.out.println(tel);
                        System.out.println(hash);
                        boolean checkSendmail = false;
                        try {
                            checkSendmail = sendMail(username, email, hash);
                        } catch (InterruptedException e) {
                            throw new RuntimeException(e);
                        }
                        System.out.println("create : " + checkCreate);
                        System.out.println("mail : " + checkSendmail);
                        if (checkCreate && checkSendmail) {
                            request.setAttribute("message", "<div class=\"alert alert-success\" role=\"alert\">Đăng kí tài khoản thành công. Mời bạn kiểm tra email để kích hoạt tài khoản.</div>");
                            request.getRequestDispatcher("login.jsp").forward(request, response);
                        } else {
                            request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Có lỗi gì đó xảy ra, vui lòng liên hệ admin!</div>");
                        }
                    } else {
                        request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Email đã tồn tại!</div>");
                    }
                } else {
                    request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Username đã tồn tại!</div>");
                }
            } else {
                request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Mật khẩu không trùng!</div>");
            }
        } else {
            request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Bạn chưa đồng ý điều khoản</div>");
        }
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    public static void main(String[] args) throws InterruptedException {
        new RegisterServlet().sendMail("minh", "tranquangminh116@gmail.com", "hashcc");
    }
}
