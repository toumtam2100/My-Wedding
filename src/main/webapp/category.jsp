<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Manage Customer</title>
    <meta charset="UTF-8">
    <jsp:include page="view/header.jsp"/>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.1/toastr.min.css" rel="stylesheet" media="all"
          charset="">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Trang quản lý</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="LoadServlet">Người dùng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="LoadContent">Blog</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="service">Sản phẩn</a>
            </li>
        </ul>
    </div>
    <span class="navbar-text mr-3">
                Welcome, admin
    </span>
    <div class="mr-1">
        <button class="btn btn-outline-danger">Đăng xuất</button>
    </div>
</nav>
<div class="container" id="app">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-4">
                <form>
                    <input type="text" v-model="name" class="form-control" placeholder="name">
                    <input type="text" class="form-control" placeholder="description" v-model="description">
                    <a class="btn btn-secondary" href="service">back</a>
                    <button v-on:click="create($event)" class="btn btn-success">create</button>
                </form>
            </div>
            <div class="col-md-8">
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th>id</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Act</th>
                    </tr>
                    </thead>
                    <tbody>
                    <template v-for="(value, key) in data">
                        <tr>
                            <td>{{value.categoryID}}</td>
                            <td>{{value.categoryName}}</td>
                            <td>{{value.description}}</td>
                            <td>
                                <button class="btn btn-danger" v-on:click="delete_cate(value.categoryID)">delete
                                </button>
                                <button class="btn btn-warning"
                                        v-on:click="assign_id(value.categoryID, value.categoryName, value.description)"
                                        data-toggle="modal" data-target="#update" type="button">update
                                </button>
                            </td>
                        </tr>
                    </template>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <input type="text" v-model="update_name" class="form-control" placeholder="name">
                        <input type="text" class="form-control" placeholder="description" v-model="update_des">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" v-on:click="update($event)" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
</div>
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
            name: '',
            description: '',
            data: [],
            update_name: '',
            update_des: '',
            update_id: 0
        },
        created() {
            this.get_data()
        },
        methods: {
            create(e) {
                e.preventDefault();
                var payload = {
                    'name': this.name,
                    'description': this.description,
                }
                var self = this
                $.ajax({
                    url: 'category',
                    type: 'post',
                    data: payload,
                    success: function (res) {
                        if (res === -1) {
                            toastr.error("Category đã tồn tại.")
                        } else {
                            if (res) {
                                toastr.success("Thêm mới category thành công")
                                self.get_data()
                            } else
                                toastr.error("lỗi")
                        }
                    }
                })
            },
            get_data() {
                var self = this
                $.ajax({
                    url: 'get_category',
                    type: 'get',
                    success: function (res) {
                        self.data = res
                    }
                })
            },
            delete_cate(id) {
                console.log('delete')
                var self = this
                var payload = {
                    'id': id
                }
                $.ajax({
                    url: 'delete_category',
                    type: 'post',
                    data: payload,
                    success: function (res) {
                        if (res) {
                            toastr.success("Xóa category thành công")
                            self.get_data()
                        } else
                            toastr.error("lỗi")
                    }
                })
            },
            assign_id(id, name, des) {
                this.update_id = id
                this.update_name = name
                this.update_des = des
            },
            update(e) {
                var self = this
                e.preventDefault()
                var payload = {
                    'id': this.update_id,
                    'name': this.update_name,
                    'description': this.update_des,
                }
                console.log(payload)
                $.ajax({
                    url: 'update_category',
                    type: 'post',
                    data: payload,
                    success: function (res) {
                        if (res) {
                            toastr.success("Sửa category thành công")
                            self.get_data()
                        } else
                            toastr.error("lỗi")
                    }
                })
            }

        }
    })
</script>
</body>
</html>
