<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <link rel="apple-touch-icon" href="../../../app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
          rel="stylesheet">

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
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/pages/page-auth.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../../../assets/css/style.css">
    <link href="https://cdn.datatables.net/v/dt/dt-1.13.6/datatables.min.css" rel="stylesheet">

    <!-- END: Custom CSS-->
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
    <a class="navbar-brand" href="#">Trang quản lý</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav font-large-1">
            <li class="nav-item">
                <a class="nav-link" href="LoadServlet">Người dùng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="content">Blog</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="service">Sản phẩm</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="service">Về </a>
            </li>
        </ul>
        <li class="nav-item">
            <a class="nav-link active" href="service">Sản phẩm</a>
        </li>
    </div>
    <span class="navbar-text mr-3">
                Welcome, ${NAME}
    </span>
    <div class="mr-1">
        <a class="btn btn-danger" href="LogoutServlet">Đăng xuất</a>
    </div>
</nav>
<div id="app">
    <div>
        <div class="row">
            <div class="card col-md-3">
                <div>
                </div>
                <form action="service" method="post" enctype="multipart/form-data">
                    <div class="row m-1">
                        <label for="name"><h4>Nhập tên sản phẩm</h4></label>
                        <input type="text" id="name" name="name" class="form-control"
                               placeholder="Nhập vào tên sản phẩm">
                    </div>
                    <div class="row m-1">
                        <select name="category" class="btn btn-flat-primary dropdown-toggle waves-effect">
                            <option value="0">Loại sản phẩm</option>
                            <template v-for="(value, key) in cate_data">
                                <option v-bind:value="value.categoryID">{{value.categoryName}}</option>
                            </template>
                        </select>
                    </div>
                    <div class="row m-1">
                        <label for="price"><h4>Nhập giá sản phẩm</h4></label>
                        <input type="number" class="form-control" name="price" id="price"
                               placeholder="Nhập vào giá sản phẩm">
                    </div>
                    <div class="row m-1">
                        <label for="quantity"><h4>Nhập số lượng</h4></label>
                        <input type="number" class="form-control" name="quantity" id="quantity"
                               placeholder="Nhập vào số lượng sản phẩm">
                    </div>
                    <div class="row m-1">
                        <label for="description"><h4>Nhập vào mô tả sản phẩm</h4></label>
                        <textarea name="description" class="form-control" id="description"
                                  placeholder="Mô tả sản phẩm..."></textarea>
                    </div>
                    <div class="row m-1">
                        <label for="myfile"><h4>Chọn ảnh sản phẩm</h4></label>
                        <input v-on:change="onChange($event)" type="file" id="myfile" name="image">
                        <div class="col-md-12">
                            <img hidden="true" id="preview_image" src="" alt="" style="max-width: 100%;">
                        </div>
                    </div>
                    <div class="row m-1">
                        <label for="status"><h4>Chọn trạng thái</h4></label>
                        <select name="status" id="status" class="form-control">
                            <option value="0">Hết hàng</option>
                            <option value="1">Còn hàng</option>
                        </select>
                    </div>
                    <button class="btn btn-success row m-1 btn-block">Tạo sản phẩm</button>
                    <a class="btn btn-success row m-1 btn-block" href="category">Add Category</a>
                </form>
            </div>
            <div class="col-md-9">
                <table class="card table">
                    <thead class="thead-light">
                    <tr>
                        <th class="col-md-2">Tên s.phẩm</th>
                        <th class="col-md-1">P.loại</th>
                        <th class="col-md-1">Giá</th>
                        <th class="col-md-2">Mô tả</th>
                        <th class="col-md-2">Ảnh</th>
                        <th class="col-md-1">S.lượng</th>
                        <th class="col-md-1">T.trạng</th>
                        <th class="col-md-2">T.chọn</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${c}" var="i">
                        <tr>
                            <td class="col-md-2">${i.getProductName()}</td>
                            <td class="col-md-1">${i.getCategoryID()}</td>
                            <td class="col-md-1">${i.getPrice()}</td>
                            <td class="col-md-2">${i.getDescription()}</td>
                            <td class="col-md-2"><a href="${i.getImage()}"><img style="max-width: 100%"
                                                                                src="${i.getImage()}"></a></td>
                            <td class="col-md-1">${i.getQuantity()}</td>
                            <td class="col-md-1">${i.isStatus()}</td>
                            <td class="col-md-2">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-6 m-1"><a href="delete_product?id=${i.getProductID()}">
                                            <button class="btn btn-danger">delete</button>
                                        </a></div>
                                        <div class="col-md-6 m-1"><a href="update_product?id=${i.getProductID()}">
                                            <button class="btn btn-warning">update</button>
                                        </a></div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<div class="chat-popup" id="myForm">
    <form action="" class="form-container justify-content-center text-center">
        <h4 class="text-center">Chat với Khách Hàng</h4>
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
s
<jsp:include page="view/chatBox.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.1.3/axios.min.js"
        integrity="sha512-0qU9M9jfqPw6FKkPafM3gy2CBAvUWnYVOfNPDYKVuRTel1PrciTj+a9P3loJB+j0QmN2Y0JYQmkBBS8W+mbezg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.7.10/vue.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.1/toastr.min.js"></script>

<script>
    var app = new Vue({
        el: "#app",
        data: {
            file: '',
            cate_data: []
        },
        created() {
            this.get_cate_data()
        },
        methods: {
            get_cate_data() {
                var self = this
                $.ajax({
                    url: 'get_category',
                    type: 'get',
                    success: function (res) {
                        self.cate_data = res
                    }
                })
            },
            onChange: function (e) {
                $("#preview_image").removeAttr('hidden');
                this.file = e.target.files[0];
                console.log(this.file);
                var img = document.getElementById('preview_image');
                var image = document.getElementById('view_image');
                img.src = URL.createObjectURL(this.file);
                image.src = URL.createObjectURL(this.file);
            },
        }
    })
</script>
</body>
</html>
