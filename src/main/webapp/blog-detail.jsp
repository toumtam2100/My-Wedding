<%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 11/9/2022
  Time: 7:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="view/header.jsp"/>
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
<%--Navbar--%>
<jsp:include page="view/navbar.jsp"/>
<%--End Navbar--%>
<div class="container mt-5">
    <!-- Blog Detail -->
    <div class="blog-detail-wrapper">
        <div class="row">
            <!-- Blog -->
            <div class="col-md-8">
                <%--Blog detail--%>
                <div class="card">
                    <img src="../../../app-assets/images/banner/banner-12.jpg"
                         class="img-fluid card-img-top"
                         alt="Blog Detail Pic">
                    <div class="card-body">
                        <h4 class="card-title">The Best Features Coming to iOS and Web design</h4>
                        <div class="media">
                            <div class="media-body">
                                <small class="text-muted">Jan 10, 2020</small>
                            </div>
                        </div>
                        <p class="card-text mb-2">
                            Before you get into the nitty-gritty of coming up with a perfect title, start
                            with a
                            rough draft: your
                            working title. What is that, exactly? A lot of people confuse working titles
                            with
                            topics. Let's clear that
                            Topics are very general and could yield several different blog posts. Think
                            "raising
                            healthy kids," or
                            "kitchen storage." A writer might look at either of those topics and choose to
                            take
                            them in very, very
                            different directions.A working title, on the other hand, is very specific and
                            guides
                            the creation of a
                            single blog post. For example, from the topic "raising healthy kids," you could
                            derive the following working
                            title See how different and specific each of those is? That's what makes them
                            working titles, instead of
                            overarching topics.
                        </p>
                        <hr class="my-2">
                    </div>
                </div>
                <%--End blog detail--%>
                <!-- Blog Comment -->
                <div class="mt-2" id="blogComment">
                    <h6 class="section-label mt-25">Bình luận của bài viết</h6>
                    <div class="card">
                        <div class="card-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="font-weight-bolder mb-25">Chad Alexander</h6>
                                    <p class="card-text">May 24, 2020</p>
                                    <p class="card-text">
                                        A variation on the question technique above, the multiple-choice
                                        question
                                        great way to engage your
                                        reader.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--End blog comment--%>
                <%--Leave a comment--%>
                <div class="mt-2">
                    <h6 class="section-label mt-25">Viết bình luận của bạn</h6>
                    <div class="card">
                        <div class="card-body">
                            <form action="javascript:void(0);" class="form">
                                <div class="row">
                                    <div class="col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <input type="text" class="form-control" placeholder="Tên">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <input type="email" class="form-control" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                            <textarea class="form-control mb-2" rows="4"
                                                      placeholder="Viết bình luận ở đây..."></textarea>
                                    </div>
                                    <div class="col-12">
                                        <button type="submit"
                                                class="btn btn-primary waves-effect waves-float waves-light">
                                            Bình luận
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <%--End leave a comment--%>
            </div>
            <div class="col-md-4 blog-search">
                <div class="input-group input-group-merge">
                    <input type="text" class="form-control" placeholder="Tìm bài viết...">
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
                <div class="blog-recent-posts mt-3">
                    <h6 class="section-label">Bài viết gần đây</h6>
                    <div class="mt-75">
                        <div class="media mb-2">
                            <a href="page-blog-detail.html" class="mr-2">
                                <img class="rounded" src="../../../app-assets/images/banner/banner-22.jpg"
                                     width="100"
                                     height="70" alt="Recent Post Pic">
                            </a>
                            <div class="media-body">
                                <h6 class="blog-recent-post-title">
                                    <a href="page-blog-detail.html" class="text-body-heading">Why Should Forget
                                        Facebook?</a>
                                </h6>
                                <div class="text-muted mb-0">Jan 14 2020</div>
                            </div>
                        </div>
                        <div class="media mb-2">
                            <a href="page-blog-detail.html" class="mr-2">
                                <img class="rounded" src="../../../app-assets/images/banner/banner-27.jpg"
                                     width="100"
                                     height="70" alt="Recent Post Pic">
                            </a>
                            <div class="media-body">
                                <h6 class="blog-recent-post-title">
                                    <a href="page-blog-detail.html" class="text-body-heading">Publish your passions,
                                        your way</a>
                                </h6>
                                <div class="text-muted mb-0">Mar 04 2020</div>
                            </div>
                        </div>
                        <div class="media mb-2">
                            <a href="page-blog-detail.html" class="mr-2">
                                <img class="rounded" src="../../../app-assets/images/banner/banner-39.jpg"
                                     width="100"
                                     height="70" alt="Recent Post Pic">
                            </a>
                            <div class="media-body">
                                <h6 class="blog-recent-post-title">
                                    <a href="page-blog-detail.html" class="text-body-heading">The Best Ways to
                                        Retain
                                        More</a>
                                </h6>
                                <div class="text-muted mb-0">Feb 18 2020</div>
                            </div>
                        </div>
                        <div class="media">
                            <a href="page-blog-detail.html" class="mr-2">
                                <img class="rounded" src="../../../app-assets/images/banner/banner-35.jpg"
                                     width="100"
                                     height="70" alt="Recent Post Pic">
                            </a>
                            <div class="media-body">
                                <h6 class="blog-recent-post-title">
                                    <a href="page-blog-detail.html" class="text-body-heading">Share a Shocking Fact
                                        or
                                        Statistic</a>
                                </h6>
                                <div class="text-muted mb-0">Oct 08 2020</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ Blog -->
        </div>
    </div>
</div>
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
<%--Footer--%>
<jsp:include page="view/footer.jsp"/>
<%--End Footer--%>

<%--Script--%>
<jsp:include page="view/script.jsp"/>
<%--End Script--%>
</body>
</html>
