<%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 11/8/2022
  Time: 9:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--HEADER--%>
    <jsp:include page="view/header.jsp"/>
    <%--END HEADER--%>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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
<!-- Navbar Start -->
<jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->

<%--CONTENT BLOG--%>
<div class="container mt-5">
    <div class="col-lg-12">
        <!-- Blog List -->
        <!-- Blog List Items -->
        <div class="row">
            <div class="input-group input-group-merge mb-5 justify-content-center">
                <input type="text" class="form-control col-md-5" placeholder="Nhập vào bài viết bạn cần tìm...">
                <div class="input-group-append">
                                    <span class="input-group-text cursor-pointer">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                             viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                             stroke-linecap="round" stroke-linejoin="round"
                                             class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line
                                                x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                                    </span>
                </div>
            </div>
            <div class="col-md-6 col-12 mt-1">
                <div class="card">
                    <a href="blogDetail.jsp">
                        <img class="card-img-top img-fluid"
                             src="../../../app-assets/images/slider/09.jpg"
                             alt="Blog Post pic">
                    </a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="blogDetail.jsp"
                               class="blog-title-truncate text-body-heading">Unadvertised
                                Bonus Opening: Share a Quote</a>
                        </h4>
                        <div class="media">
                            <div class="media-body">
                                <small class="text-muted">Jan 10, 2020</small>
                            </div>
                        </div>
                        <p class="card-text blog-content-truncate">
                            Muffin liquorice candy soufflé bear claw apple pie icing halvah. Pie
                            marshmallow
                            jelly.
                        </p>
                        <hr>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="icon-wrapper">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-heart">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                            </div>
                            <div class="d-flex align-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round"
                                     class="feather feather-message-square font-medium-1 text-body mr-50">
                                    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                                </svg>
                                <span class="text-body font-weight-bold">10 Comments</span>
                            </div>
                            <a href="blogDetail.html" class="font-weight-bold">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-12 mt-1">
                <div class="card">
                    <a href="blogDetail.jsp">
                        <img class="card-img-top img-fluid"
                             src="../../../app-assets/images/slider/09.jpg"
                             alt="Blog Post pic">
                    </a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="blogDetail.jsp"
                               class="blog-title-truncate text-body-heading">Unadvertised
                                Bonus Opening: Share a Quote</a>
                        </h4>
                        <div class="media">
                            <div class="media-body">
                                <small class="text-muted">Jan 10, 2020</small>
                            </div>
                        </div>
                        <p class="card-text blog-content-truncate">
                            Muffin liquorice candy soufflé bear claw apple pie icing halvah. Pie
                            marshmallow
                            jelly.
                        </p>
                        <hr>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="icon-wrapper">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-heart">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                            </div>
                            <div class="d-flex align-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round"
                                     class="feather feather-message-square font-medium-1 text-body mr-50">
                                    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                                </svg>
                                <span class="text-body font-weight-bold">10 Comments</span>
                            </div>
                            <a href="blogDetail.html" class="font-weight-bold">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-12 mt-1">
                <div class="card">
                    <a href="blogDetail.jsp">
                        <img class="card-img-top img-fluid"
                             src="../../../app-assets/images/slider/09.jpg"
                             alt="Blog Post pic">
                    </a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="blogDetail.jsp"
                               class="blog-title-truncate text-body-heading">Unadvertised
                                Bonus Opening: Share a Quote</a>
                        </h4>
                        <div class="media">
                            <div class="media-body">
                                <small class="text-muted">Jan 10, 2020</small>
                            </div>
                        </div>
                        <p class="card-text blog-content-truncate">
                            Muffin liquorice candy soufflé bear claw apple pie icing halvah. Pie
                            marshmallow
                            jelly.
                        </p>
                        <hr>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="icon-wrapper">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-heart">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                            </div>
                            <div class="d-flex align-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round"
                                     class="feather feather-message-square font-medium-1 text-body mr-50">
                                    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                                </svg>
                                <span class="text-body font-weight-bold">10 Comments</span>
                            </div>
                            <a href="blogDetail.html" class="font-weight-bold">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-12 mt-1">
                <div class="card">
                    <a href="blogDetail.jsp">
                        <img class="card-img-top img-fluid"
                             src="../../../app-assets/images/slider/09.jpg"
                             alt="Blog Post pic">
                    </a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="blogDetail.jsp"
                               class="blog-title-truncate text-body-heading">Unadvertised
                                Bonus Opening: Share a Quote</a>
                        </h4>
                        <div class="media">
                            <div class="media-body">
                                <small class="text-muted">Jan 10, 2020</small>
                            </div>
                        </div>
                        <p class="card-text blog-content-truncate">
                            Muffin liquorice candy soufflé bear claw apple pie icing halvah. Pie
                            marshmallow
                            jelly.
                        </p>
                        <hr>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="icon-wrapper">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-heart">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                            </div>
                            <div class="d-flex align-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round"
                                     class="feather feather-message-square font-medium-1 text-body mr-50">
                                    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                                </svg>
                                <span class="text-body font-weight-bold">10 Comments</span>
                            </div>
                            <a href="blogDetail.html" class="font-weight-bold">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-12 mt-1">
                <div class="card">
                    <a href="blogDetail.jsp">
                        <img class="card-img-top img-fluid"
                             src="../../../app-assets/images/slider/09.jpg"
                             alt="Blog Post pic">
                    </a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="blogDetail.jsp"
                               class="blog-title-truncate text-body-heading">Unadvertised
                                Bonus Opening: Share a Quote</a>
                        </h4>
                        <div class="media">
                            <div class="media-body">
                                <small class="text-muted">Jan 10, 2020</small>
                            </div>
                        </div>
                        <p class="card-text blog-content-truncate">
                            Muffin liquorice candy soufflé bear claw apple pie icing halvah. Pie
                            marshmallow
                            jelly.
                        </p>
                        <hr>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="icon-wrapper">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-heart">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                            </div>
                            <div class="d-flex align-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round"
                                     class="feather feather-message-square font-medium-1 text-body mr-50">
                                    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                                </svg>
                                <span class="text-body font-weight-bold">10 Comments</span>
                            </div>
                            <a href="blogDetail.html" class="font-weight-bold">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-12 mt-1">
                <div class="card">
                    <a href="blogDetail.jsp">
                        <img class="card-img-top img-fluid"
                             src="../../../app-assets/images/slider/09.jpg"
                             alt="Blog Post pic">
                    </a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="blogDetail.jsp"
                               class="blog-title-truncate text-body-heading">Unadvertised
                                Bonus Opening: Share a Quote</a>
                        </h4>
                        <div class="media">
                            <div class="media-body">
                                <small class="text-muted">Jan 10, 2020</small>
                            </div>
                        </div>
                        <p class="card-text blog-content-truncate">
                            Muffin liquorice candy soufflé bear claw apple pie icing halvah. Pie
                            marshmallow
                            jelly.
                        </p>
                        <hr>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="icon-wrapper">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-heart">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                            </div>
                            <div class="d-flex align-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round"
                                     class="feather feather-message-square font-medium-1 text-body mr-50">
                                    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                                </svg>
                                <span class="text-body font-weight-bold">10 Comments</span>
                            </div>
                            <a href="blogDetail.html" class="font-weight-bold">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/ Blog List Items -->
    </div>
    <!--/ Blog List -->
    <!-- Pagination -->
    <div class="col-12">
        <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center mt-2">
                <li class="page-item prev-item"><a class="page-link"
                                                   href="javascript:void(0);"></a>
                </li>
                <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                <li class="page-item active" aria-current="page"><a class="page-link"
                                                                    href="javascript:void(0);">4</a>
                </li>
                <li class="page-item"><a class="page-link" href="javascript:void(0);">5</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0);">6</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0);">7</a></li>
                <li class="page-item next-item"><a class="page-link"
                                                   href="javascript:void(0);"></a>
                </li>
            </ul>
        </nav>
    </div>
</div>
<!--/ Pagination -->
<%--END CONTENT BLOG--%>

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

<%--FOOTER--%>
<jsp:include page="view/footer.jsp"/>
<%--END FOOTER--%>

<jsp:include page="view/script.jsp"/>
</body>
</html>
