<%@ page import="java.util.UUID" %><%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 10/28/2022
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <title>BRRILIANT WEDDING</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Manage Customer</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css"
          href="../../../app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/pages/page-auth.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../../../assets/css/style.css">
    <link href="https://cdn.datatables.net/v/dt/dt-1.13.6/datatables.min.css" rel="stylesheet">



    <style>
        .open-button {
            background-color: #E47A2E;
            color: white;
            margin-bottom: 100px;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            opacity: 1;
            position: fixed;
            bottom: 23px;
            right: 28px;
            width: 80px;
        }

        /* The popup chat - hidden by default */
        .chat-popup {
            display: none;
            position: fixed;
            bottom: 0;
            right: 150px;
            border: 3px solid #f1f1f1;
            z-index: 9;
        }

        /* Add styles to the form container */
        .form-container {
            max-width: 300px;
            padding: 10px;
            background-color: white;
        }

        /* Full-width textarea */
        .form-container textarea {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            border: none;
            background: #f1f1f1;
            resize: none;
            min-height: 200px;
        }

        /* When the textarea gets focus, do something */
        .form-container textarea:focus {
            background-color: #ddd;
            outline: none;
        }

        /* Set a style for the submit/send button */
        .form-container .btn {
            background-color: #04AA6D;
            color: white;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            width: 100%;
            margin-bottom: 10px;
            opacity: 0.8;
        }

        /* Add a red background color to the cancel button */
        .form-container .cancel {
            background-color: #818491;
        }

        /* Add some hover effects to buttons */
        .form-container .btn:hover, .open-button:hover {
            opacity: 1;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand font-weight-bolder" href="home.jsp"><i class="icon-home">Trang chủ</i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav font-large-1">
            <li class="nav-item">
                <a class="nav-link active" href="LoadServlet">Người dùng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="content">Blog</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="service">Sản phẩm</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Lịch hẹn</a>
            </li>
        </ul>
    </div>
    <span class="navbar-text mr-3">
                    Welcome, ${NAME}
    </span>
    <div class="mr-1">
        <a class="btn btn-danger" href="LogoutServlet">Đăng xuất</a>
    </div>
</nav>
<div class="container">
    <div class="col-md-12 text-center mb-3 mt-5">
<%--        <c:if action="${search}">--%>
<%--            <h2>ket qua tim kiem</h2>--%>
<%--        </c:if>--%>
<%--        <c:if action !="${search}">--%>
<%--            <h2>Danh sách người dùng</h2>--%>
<%--        </c:if>--%>
<%--        <h2>${action.equals("search") ? "ket qua tim kiem" : "Danh sách người dùng"}</h2>--%>

<%--    </div>--%>
<%--    <div class="row justify-content-center align-items-center">--%>
<%--        <form action="SearchUserServlet" method="post" class="form-inline">--%>
<%--            <input class="form-control" name="fullname" type="search" placeholder="Điền vào tên người dùng.." aria-label="Search">--%>
<%--            <button class="btn btn-outline-success" type="submit">Search</button>--%>
<%--        </form>--%>
<%--    </div>--%>
    <table id="myTable" class="display">
        <thead>
        <tr>
            <th>Id</th>
            <th>Username</th>
            <th>Fullname</th>
            <th>Email</th>
            <th>Tel</th>
            <th>Confirm Email</th>
            <th>Role</th>
            <th>action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="i">
            <tr>
                <td>${i.getId()}</td>
                <td>${i.getUserName()}</td>
                <td>${i.getFullName()}</td>
                <td>${i.getEmail()}</td>
                <td>${i.getTel()}</td>
                <td>${i.isEmail()}</td>
                <td>${i.getRole()}</td>
                <td>
                    <a role="button" class="btn btn-info" href="update?sid=${i.getId()}">Update</a>
                    <a role="button" class="btn btn-danger" href="DeleteControl?sid=${i.getId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    <div class="col-md-12 text-center mb-4">
        <button class="btn btn-success text-warning" data-target="#addForm" data-toggle="modal">Add User</button>
    </div>


    <div class="form-modal-ex">
        <!-- Modal -->
        <div class="modal fade text-left" id="addForm" tabindex="-1" aria-labelledby="myModalLabel33"
             style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel34">Thêm Người dùng</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div>
                        </div>
                        <form action="AddUser" method="post">
                            <div class="row m-1">
                                <label for="name">Tên tài khoản</label>
                                <input type="text" id="name" name="username" class="form-control" placeholder="name">
                            </div>
                            <div class="row m-1">
                                <label for="price">Mật khẩu</label>
                                <input type="password" class="form-control" name="password" id="price" placeholder="password">
                            </div>
                            <div class="row m-1">
                                <label>Họ tên Người dùng</label>
                                <input type="text" class="form-control" name="fullname" placeholder="fullname">
                            </div>
                            <div class="row m-1">
                                <label for="description">Email</label>
                                <input name="email" type="text" class="form-control" id="description"
                                       placeholder="email">
                            </div>
                            <div class="row m-1">
                                <label for="description">Số điện thoại</label>
                                <input name="tel" type="text" class="form-control"
                                       placeholder="tel">
                            </div>
                            <button type="submit" class="btn btn-success">create</button>
                            <a class="btn btn-warning" href="LoadServlet">Back to Manage User</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="chat-popup" id="myForm">
    <form action="" class="form-container justify-content-center text-center">
        <h4 class="text-center">Chat với Khách Hàng></h4>
        <input id="textMessage" type="text" class="col-sm-12 mb-2"/>
        <input onclick="sendMessage()" value="Gửi" type="button" class="btn-primary col-md-4"/>
        <input onclick="sendMessage()" value="Kết nối" type="button" class="btn-dark col-md-4"/> <br/><br/>
        <textarea id="textAreaMessage" rows="10" cols="40" disabled></textarea>
        <button type="button" class="btn cancel" onclick="closeForm()">Đóng chat</button>
    </form>
</div>
<button class="open-button" onclick="openForm()" id="myButton">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
         stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
        <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
    </svg>
</button>
<jsp:include page="view/chatBox.jsp"></jsp:include>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdn.datatables.net/v/dt/dt-1.13.6/datatables.min.js"></script>

<script src="../../../app-assets/vendors/js/vendors.min.js"></script>
<script src="../../../app-assets/js/core/app-menu.js"></script>
<script src="../../../app-assets/js/core/app.js"></script>
<script src="../../../app-assets/js/scripts/forms/form-tooltip-valid.js"></script>

<script>
    let table = new DataTable('#myTable');
    $(document).ready( function (e) {
        table.DataTable();
    } );
</script>
</body>
</html>
