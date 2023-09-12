<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 10/25/2022
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="view/header.jsp"/>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">

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
<body data-spy="scroll" data-target=".navbar" data-offset="51">

<!-- Navbar Start -->
<jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->


<%--About Us--%>
<div class="container-fluid py-5" id="about">
    <div class="container py-5">
        <div class="section-title position-relative text-center">
            <h6 class="text-uppercase text-dark mb-3" style="letter-spacing: 3px;">Về chúng tôi</h6>
            <h1 class="font-secondary display-4">Giới thiệu về đội ngũ của studio</h1>
            <i class="far fa-heart text-dark "></i>
        </div>
        <div class="row m-0 mb-4 mb-md-0 pb-2 pb-md-0">
            <div class="col-md-6 p-0 text-center text-md-right">
                <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-5">
                    <h3 class="mb-3">Photographer</h3>
                    <p>Chụp ảnh cưới không chỉ giúp lưu giữ lại những khoảnh khắc trọng đại trong hành trình tình yêu.
                        Bộ ảnh cưới còn
                        là kỷ vật đi theo bạn và người ấy suốt cuộc đời. Lựa chọn địa chỉ chụp ảnh, dịch vụ trọn gói vừa
                        độc đáo vừa tiết kiệm chi phí là ưu tiên của nhiều cặp đôi. Nếu bạn đang tìm kiếm một thương
                        hiệu chụp ảnh uy tín, chất lượng thì Kim Tuyến Bridal là một trong những lựa chọn hoàn hảo
                        nhất. </p>
                    <!--                    <h3 class="font-secondary font-weight-normal text-muted mb-3"><i-->
                    <!--                            class="fa fa-male text-primary pr-3"></i>Jack</h3>-->
                    <!--                    <div class="position-relative">-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i class="fab fa-twitter"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-facebook-f"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-linkedin-in"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>-->
                    <!--                    </div>-->
                </div>
            </div>
            <div class="col-md-6 p-0" style="min-height: 400px;">
                <img class="position-absolute w-100 h-100" src="img/photographer2.jpg" style="object-fit: cover;">
            </div>
        </div>
        <div class="row m-0">
            <div class="col-md-6 p-0" style="min-height: 400px;">
                <img class="position-absolute w-100 h-100" src="img/makeup.png" style="object-fit: cover;">
            </div>
            <div class="col-md-6 p-0 text-center text-md-left">
                <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-5">
                    <h3 class="mb-3">Make-up</h3>
                    <p>Chuyện cưới xin là chuyện cả đời người, hơn hết các cô dâu đều là tâm điểm của những buổi tiệc
                        cưới, bởi vậy ngoài việc chăm sóc bản thân của mình thì việc trang điểm cô dâu sao cho xuất hiện
                        thật rạng rỡ và xinh đẹp trong lễ cưới là điều đương nhiên. Hôm nay, Kim Tuyến Bridal hân hạnh
                        mang đến cho bạn bảng giá dịch vụ trang điểm, trang điểm cô dâu đảm bảo giúp bạn có được gương
                        mặt hoàn hảo nhất trong ngày trọng đại của mình.</p>
                    <!--                    <h3 class="font-secondary font-weight-normal text-muted mb-3"><i-->
                    <!--                            class="fa fa-female text-primary pr-3"></i>Rose</h3>-->
                    <!--                    <div class="position-relative">-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i class="fab fa-instagram"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-facebook-f"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-linkedin-in"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>-->
                    <!--                    </div>-->
                </div>
            </div>
        </div>
        <div class="row m-0 mb-4 mb-md-0 pb-2 pb-md-0">
            <div class="col-md-6 p-0 text-center text-md-right">
                <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-5">
                    <h3 class="mb-3">Customer care</h3>
                    <p>BRILLIANT Bridal luôn mang xu hướng váy cưới, chụp ảnh cưới make up độc đáo và mới nhất đến với
                        khách hàng. Đảm bảo quý khách hàng sở hữu bộ váy cưới đẹp nhất, ảnh cưới mang phong cách đầy sắc
                        màu, chất riêng cho từng cặp đôi. Chúng tôi hứa hẹn mang đến cho khách hàng những món quà tuyệt
                        vời – bộ ảnh cưới tinh tế, đặc trưng riêng với đa dạng sự lựa chọn hoàn hảo cho một đám
                        cưới.</p>
                    <!--                    <h3 class="font-secondary font-weight-normal text-muted mb-3"><i-->
                    <!--                            class="fa fa-male text-primary pr-3"></i>Jack</h3>-->
                    <!--                    <div class="position-relative">-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i class="fab fa-twitter"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-facebook-f"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-linkedin-in"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>-->
                    <!--                    </div>-->
                </div>
            </div>
            <div class="col-md-6 p-0" style="min-height: 400px;">
                <img class="position-absolute w-100 h-100" src="img/customers_care.png" style="object-fit: cover;">
            </div>
        </div>
    </div>
</div>
<%--End About Us--%>

<!-- Event Start -->
<div class="container-fluid py-5" id="event">
    <div class="container py-5">
        <div class="section-title position-relative text-center">
            <h6 class="text-uppercase text-primary mb-3" style="letter-spacing: 3px;">Event</h6>
            <h1 class="font-secondary display-4">Our Wedding Event</h1>
            <i class="far fa-heart text-dark"></i>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
                <h5 class="font-weight-normal text-muted mb-3 pb-3">Clita ipsum aliquyam dolor diam dolores elitr
                    nonumy. Rebum sea vero ipsum eirmod tempor kasd. Diam amet lorem erat eos sit lorem elitr justo</h5>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 border-right border-primary">
                <div class="text-center text-md-right mr-md-3 mb-4 mb-md-0">
                    <img class="img-fluid mb-4" src="img/event-1.jpg" alt="">
                    <h4 class="mb-3">The Reception</h4>
                    <p class="mb-2">123 Street, New York, USA</p>
                    <p class="mb-0">12:00AM - 13:00PM</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="text-center text-md-left ml-md-3">
                    <img class="img-fluid mb-4" src="img/event-2.jpg" alt="">
                    <h4 class="mb-3">Wedding Party</h4>
                    <p class="mb-2">123 Street, New York, USA</p>
                    <p class="mb-0">12:00AM - 13:00PM</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Event End -->


<div class="chat-popup" id="myForm">
    <form action="" class="form-container justify-content-center text-center">
        <h4 class="text-center">Chat với nhân viên</h4>
        <input id="textMessage" type="text" class="col-sm-12 mb-2"/>
        <input onclick="sendMessage()" value="Gửi" type="button" class="btn-primary col-md-4"/>
        <input onclick="sendMessage()" value="Kết nối" type="button" class="btn-dark col-md-4"/> <br/><br/>
        <textarea id="textAreaMessage" rows="10" cols="40" disabled></textarea>
        <button type="button" class="btn cancel" onclick="closeForm()">Đóng chat</button>
    </form>
</div>
<button class="open-button" onclick="openForm()">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
         stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
        <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
    </svg>
</button>

<%--Open chat box script--%>
<script>
    function openForm() {
        document.getElementById("myForm").style.display = "block";
        document.getElementById("myButton").style.display = "none";
    }

    function closeForm() {
        document.getElementById("myForm").style.display = "none";
        document.getElementById("myButton").style.display = "block";
    }
</script>
<%--End open chat box script--%>

<%--Chat box script--%>
<script type="text/javascript">
    var websocket = new WebSocket("ws://localhost:8080/chatRoomServer");
    websocket.onopen = function (message) {
        processOpen(message);
    };
    websocket.onmessage = function (message) {
        processMessage(message);
    };
    websocket.onclose = function (message) {
        processClose(message);
    };
    websocket.onerror = function (message) {
        processError(message);
    };

    function processOpen(message) {
        textAreaMessage.value += "Kết nối server... \n";
    }

    function processMessage(message) {
        console.log(message);
        textAreaMessage.value += message.data + " \n";
    }

    function processClose(message) {
        textAreaMessage.value += "Ngắt kết nối server... \n";
    }

    function processError(message) {
        textAreaMessage.value += "Lỗi... " + message + " \n";
    }

    function sendMessage() {
        if (typeof websocket != 'undefined' && websocket.readyState == WebSocket.OPEN) {
            websocket.send(textMessage.value);
            textMessage.value = "";
        }
    }
</script>
<%--End chat box script--%>


<!-- Footer Start -->
<jsp:include page="view/footer.jsp"/>
<!-- Footer End -->
<a href="#" class="btn btn-lg btn-outline-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>
<jsp:include page="view/script.jsp"/>
</body>

</html>
