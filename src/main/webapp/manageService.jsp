<%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 10/28/2022
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
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
    <!-- END: Custom CSS-->
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Trang quản lý</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="adminManageCustomer.jsp">Người dùng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="manageStaff.jsp">Nhân viên</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="manageService.jsp">Dịch vụ</a>
            </li>
        </ul>
    </div>
    <span class="navbar-text mr-3">
                Welcome, ${NAME}
    </span>
    <div class="mr-1">
        <a href="LogoutServlet" class="btn btn-danger">Đăng xuất</a>
    </div>
</nav>
<div class="container mt-5">
    <div class="col-md-12 text-center mb-3">
        <h2>Quản lý dịch vụ</h2>
    </div>
    <div class="row justify-content-center align-items-center">
        <form class="form-inline">
            <input class="form-control" type="search" placeholder="Điền vào dịch vụ" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
            <a class="btn btn-success" data-toggle="modal" data-target="#addForm">Thêm sản phẩm</a>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
            <tr class="align-content-center">
                <th>id</th>
                <th>Tên</th>
                <th>Phân loại</th>
                <th>Giá</th>
                <th>Ảnh</th>
                <th>Số lượng</th>
                <th>Trạng thái</th>
                <th>Mô tả</th>
                <th>Hành động</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${c}" var="i">
                <tr>
                    <td>${i.getProductID()}</td>
                    <td>
                        <span class="font-weight-bold">${i.getProductName()}</span>
                    </td>
                    <td>${i.getCategoryID()}</td>
                    <td>${i.getPrice()}</td>
                    <td>
                        <div class="col-md-12">
                            <img src="${i.getImage()}" style="max-width: 100%">
                            <img hidden="true" id="view_image" src="" alt="" style="max-width: 100%;">
                        </div>
                    </td>
                    <td>${i.getQuantity()}</td>
                    <td>${i.isStatus()}</td>
                    <td>
                        <p style="width: 200px;
                               overflow: hidden;
                               text-overflow: ellipsis;
                               line-height: 25px;
                               -webkit-line-clamp:5;
                               height: 75px;
                               display: -webkit-box;
                               -webkit-box-orient: vertical;">
                                ${i.getDescription()}
                        </p>
                    </td>
                    <td>
                        <button type="button" class="btn btn-outline-primary waves-effect" data-toggle="modal"
                                data-target="#updateForm">
                            Sửa
                        </button>
                        <a href="delete_product?id=${i.getProductID()}">
                            <button type="button" class="btn btn-secondary waves-effect">
                                Xóa
                            </button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>



<%--MODAL UPDATE DỊCH VỤ Ở ĐÂY  UPDATE & DELETE  --%>
<div class="form-modal-ex">
    <!-- Modal -->
    <div class="modal fade text-left" id="updateForm" tabindex="-1" aria-labelledby="myModalLabel33"
         style="display: none;" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel33">Cập nhật dịch vụ/sản phẩm</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form form-horizontal" action="service" method="post" enctype="multipart/form-data">
                        <div class="row">
                            <c:forEach items="${list}" var="i">
                            <div class="col-12">
                                <div class="form-group row">
                                    <div class="col-lg-3">
                                        <input type="text" id="productName" hidden class="form-control"
                                               value="${i.getProductID()}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group row">
                                    <div class="col-lg-3">
                                        <input type="text" class="form-control" value="${i.getProductName()}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group row">
                                    <div class="col-lg-3">
                                        <input type="text" class="form-control" value="${i.getQuantity()}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group row">
                                    <div class="col-lg-3">
                                        <input type="text" class="form-control" value="${i.getPrice()}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group row">
                                    <div class="col-lg-3">
                                        <input type="text" class="form-control" value="${i.getCategoryID()}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row">
                                <div class="col-lg-3">
                                    <input type="text" class="form-control" value="${i.getDescription()}">
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row">
                                <div class="col-lg-3">
                                    <input type="text" class="form-control" value="${i.getImage()}">
                                    <img hidden="true" id="preview_image" src="" alt="" style="max-width: 100%;">
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row">
                                <div class="col-lg-3">
                                    <input type="text" class="form-control" value="${i.getCategory()}">
                                </div>
                            </div>
                        </div>
                        <c:if test="${o.isStatus() == true}">
                        <div class="col-12">
                            <div class="form-group row">
                                <div class="col-lg-3">
                                    <input type="text" class="form-control" value="Còn hàng">
                                </div>
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${o.isStatus() == false}">
                        <div class="col-12">
                            <div class="form-group row">
                                <div class="col-lg-3">
                                    <input type="text" class="form-control" value="Hết hàng">
                                </div>
                            </div>
                        </div>
                        </c:if>
                        </c:forEach>
                        <div class="col-sm-9 offset-sm-3">
                            <button v-on:click="update($event)" href="UpdateProductControl?sid=${i.getId()}"
                                    class="btn btn-primary mr-1 waves-effect waves-float waves-light">
                                Lưu
                            </button>
                            <button type="reset" class="btn btn-primary mr-1 waves-effect waves-float waves-light">
                                Hủy
                            </button>
                        </div>
                </div>
                    </form>
            </div>
        </div>
    </div>
</div>
</div>
<%--KẾT THÚC MODAL UPDATE DỊCH VỤ--%>




<%--MODAL ADD DỊCH VỤ Ở ĐÂY  --%>
<div class="form-modal-ex">
    <!-- Modal -->
    <div class="modal fade text-left" id="addForm" tabindex="-1" aria-labelledby="myModalLabel33"
         style="display: none;" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel34">Thêm dịch vụ/sản phẩm</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div>
                        <%= request.getAttribute("MESSAGE") %>
                    </div>
                    <form action="service" method="post" enctype="multipart/form-data">
                        <div class="row m-1">
                            <label for="name">Nhập tên sản phẩm</label>
                            <input type="text" id="name" name="name" class="form-control" placeholder="name">
                        </div>
                        <div class="row m-1">
                            <label for="category">Chọn category</label>
                            <select name="category" id="category">
                                <option value="0">Chọn category</option>
                                <template v-for="(value, key) in cate_data">
                                    <option v-bind:value="value.categoryID">{{value.categoryName}}</option>
                                </template>
                            </select>
                        </div>
                        <div class="row m-1">
                            <label for="price">Nhập giá sản phẩm</label>
                            <input type="number" class="form-control" name="price" id="price" placeholder="price">
                        </div>
                        <div class="row m-1">
                            <label for="quantity">Nhập số lượng</label>
                            <input type="number" class="form-control" name="quantity" id="quantity" placeholder="quantity">
                        </div>
                        <div class="row m-1">
                            <label for="description">Nhập description</label>
                            <input name="description" type="text" class="form-control" id="description"
                                   placeholder="description">
                        </div>
                        <div class="row m-1">
                            <label for="myfile">Chọn ảnh đại diện</label>
                            <input v-on:change="onChange($event)" type="file" id="myfile" name="image">
                            <div class="col-md-12">
                                <img hidden="true"  src="" alt="" style="max-width: 100%;">
                            </div>
                        </div>
                        <div class="row m-1">
                            <label for="status">Chọn trạng thái</label>
                            <select name="status" id="status" class="form-control">
                                <option value="0">Disable</option>
                                <option value="1">Enable</option>
                            </select>
                        </div>
                        <button class="btn btn-success">create</button>
                    </form>
            </div>
        </div>
    </div>
</div>
</div>
<%--KẾT THÚC MODAL ADD DỊCH VỤ--%>

<jsp:include page="view/script.jsp"/>


<%--Khu vực chứa script--%>
<script src="../../../app-assets/vendors/js/vendors.min.js"></script>
<script src="../../../app-assets/js/core/app-menu.js"></script>
<script src="../../../app-assets/js/core/app.js"></script>
<script src="../../../app-assets/js/scripts/forms/form-tooltip-valid.js"></script>
<script>
    $(window).on('load', function () {
        if (feather) {
            feather.replace({
                width: 14,
                height: 14
            });
        }
    })
</script>
<%--<script>--%>
<%--    var app = new Vue({--%>
<%--        el: "#app",--%>
<%--        data: {--%>
<%--            file: '',--%>
<%--            cate_data: []--%>
<%--        },--%>
<%--        created() {--%>
<%--            this.get_cate_data()--%>
<%--        },--%>
<%--        methods: {--%>
<%--            get_cate_data() {--%>
<%--                var self = this--%>
<%--                $.ajax({--%>
<%--                    url: 'get_category',--%>
<%--                    type: 'get',--%>
<%--                    success: function (res) {--%>
<%--                        self.cate_data = res--%>
<%--                    }--%>
<%--                })--%>
<%--            },--%>
<%--            onChange: function (e) {--%>
<%--                $("#preview_image").removeAttr('hidden');--%>
<%--                this.file = e.target.files[0];--%>
<%--                console.log(this.file);--%>
<%--                var img = document.getElementById('preview_image');--%>
<%--                img.src = URL.createObjectURL(this.file);--%>
<%--            },--%>
<%--        }--%>
<%--    })--%>
<%--</script>--%>
<%--Kết thúc script--%>

</body>
</html>
