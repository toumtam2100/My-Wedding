<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 10/25/2022
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar fixed-top navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-lg-5">
         <a href="home.jsp" class="navbar-brand d-block d-lg-none">
            <h1 class="text-light mb-n2">BRILLIANT WEDDING</h1>
         </a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
        <a href="home.jsp" class="navbar-brand d-none d-lg-block">
            <h1 class="text-white mb-n2">BRILLIANT WEDDING</h1>
        </a>
        <div class="navbar-nav ml-auto py-0">
            <a href="home.jsp" class="nav-item nav-link active text-center">Trang chủ</a>
            <a href="about.jsp" class="nav-item nav-link text-center">Về chúng tôi</a>
            <a href="user_service" class="nav-item nav-link text-center">Dịch vụ & sản phẩm</a>
            <a href="LoadUserContact" class="nav-item nav-link text-center">Đặt lịch</a>
            <c:if test="${sessionScope.NAME != null}" >
                <a href="LoadServlet" class="nav-item nav-link text-center">Về Trang Quản Lý</a>
                <a href="LogoutServlet" class="nav-item nav-link text-center">Đăng xuất</a>
                <a  class="nav-item nav-link text-center">Welcome, ${sessionScope.NAME}</a>
            </c:if>
            <c:if test="${sessionScope.NAME == null}" >
                <a href="RegisterServlet" class="bg-gradient-secondary nav-item nav-link text-center">Đăng ký</a>
                <a href="LoginServlet" class="bg-gradient-success nav-item nav-link text-center">Đăng nhập</a>
            </c:if>
        </div>
    </div>
</nav>


<div id="loginModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg" role="content">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Login </h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-row">
                        <div class="form-group col-sm-4">
                            <label class="sr-only" for="exampleInputEmail3">Email address or Username</label>
                            <input type="email" class="form-control form-control-sm mr-1" id="exampleInputEmail3" placeholder="Enter email or Password">
                        </div>
                        <div class="form-group col-sm-4">
                            <label class="sr-only" for="exampleInputPassword3">Password</label>
                            <input type="password" class="form-control form-control-sm mr-1" id="exampleInputPassword3" placeholder="Password">
                        </div>
                        <div class="col-sm-auto">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox">
                                <label class="form-check-label"> Remember me</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <button type="button" class="btn btn-secondary btn-sm ml-auto" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary btn-sm ml-1">Sign in</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

