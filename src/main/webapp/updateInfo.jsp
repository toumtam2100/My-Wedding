<%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 11/2/2022
  Time: 9:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="view/header.jsp"/>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
    <title>Update Info</title>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="51">
<!-- Navbar Start -->
<jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->
<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Thông tin cá nhân</h4>
                </div>
                <div class="card-body">
                    <form class="form">
                        <div class="row">
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="name">Họ và tên</label>
                                    <input type="text" id="name" class="form-control"
                                           name="name" placeholder="Trần Minh Quốc">
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" id="email" class="form-control"
                                           name="email" placeholder="quoc@gmail.com">
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="telnum">Số điện thoại</label>
                                    <input type="number" id="telnum" class="form-control"
                                           name="telnum" placeholder="0868515361">
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="password">Mật khẩu</label>
                                    <input type="password" id="password" class="form-control"
                                           name="password" placeholder="quocdeptrai">
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="reset" class="btn btn-primary mr-1 waves-effect waves-float waves-light">
                                    Submit
                                </button>
                                <button type="reset" class="btn btn-secondary waves-effect">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer Start -->
<jsp:include page="view/footer.jsp"/>
<!-- Footer End -->

<script src="app-assets/vendors/js/vendors.min.js"></script>
<script src="app-assets/vendors/js/ui/jquery.sticky.js"></script>
<script src="app-assets/vendors/js/forms/select/select2.full.min.js"></script>
<script src="app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
<script src="app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>

<script>
    $(window).on('load', function() {
        if (feather) {
            feather.replace({
                width: 14,
                height: 14
            });
        }
    })
</script>
<script src="app-assets/js/core/app-menu.js"></script>
<script src="app-assets/js/core/app.js"></script>
<script src="app-assets/js/scripts/forms/form-validation.js"></script>
</body>
</html>
