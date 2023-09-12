<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
    <jsp:include page="view/header.jsp"/>
</head>
<body>

    <!-- Navbar Start -->
    <jsp:include page="view/navbar.jsp"/>
    <!-- Navbar End -->

    <div class="container-fluid py-5" id="rsvp">
        <div class="container py-5">
            <div class="section-title position-relative text-center">
                <h6 class="text-uppercase text-primary mb-3" style="letter-spacing: 3px;">Brilliant Wedding</h6>
                <h1 class="font-secondary display-4">Register</h1>
                <i class="far fa-heart text-dark"></i>
            </div>
            <div><%= request.getAttribute("message") %></div>
            <div id="wait_alert" class="alert alert-info" hidden role="alert">Đang tạo tài khoản cho bạn, vui lòng chờ trong ít giây.</div>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Register</h4>
                                </div>
                                <div class="card-body">
                                    <form id="jquery-val-form" method="post" action="RegisterServlet" novalidate="novalidate">
                                        <div class="form-group">
                                            <label class="form-label" for="basic-default-name">Username</label>
                                            <input type="text" class="form-control" id="basic-default-name" name="username" placeholder="John Doe">
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label" for="basic-default-name">Full name</label>
                                            <input type="text" class="form-control" id="basic-default-fullname" name="fullname" placeholder="John Doe">
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label" for="basic-default-email">Email</label>
                                            <input type="text" id="basic-default-email" name="email" class="form-control" placeholder="john.doe@email.com">
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label" for="basic-default-email">Phone number</label>
                                            <input type="text" id="basic-default-phone" name="tel" class="form-control" placeholder="01234567890">
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label" for="basic-default-password">Password</label>
                                            <input type="password" id="basic-default-password" name="password1" class="form-control" placeholder="············">
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label" for="confirm-password">Confirm Password</label>
                                            <input type="password" id="confirm-password" name="password2" class="form-control" placeholder="············">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="validationCheck" name="validationCheck">
                                                <label class="custom-control-label" for="validationCheck">Agree to our terms and conditions</label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-12">
                                                <button type="submit" id="register" class="btn btn-primary waves-effect waves-float waves-light">Register</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Start -->
    <jsp:include page="view/footer.jsp"/>
    <!-- Footer End -->


    <!-- Scroll to Bottom -->
    <i class="fa fa-2x fa-angle-down text-white scroll-to-bottom"></i>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-outline-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>

    <!-- JavaScript Libraries -->
    <jsp:include page="view/script.jsp"/>
    <!-- VueJS JavaScript -->
    <script src="app-assets/vendors/js/vendors.min.js"></script>
    <script src="app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#register").click(function () {
                console.log(1)
                $("#wait_alert").removeAttr('hidden')
            })
        })
    </script>
    <script src="app-assets/js/core/app-menu.js"></script>
    <script src="app-assets/js/core/app.js"></script>
    <script src="app-assets/js/scripts/forms/form-validation.js"></script>

</body>
</html>
