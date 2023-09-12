<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

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
<!-- Carousel Start -->
<jsp:include page="view/carousel.jsp"/>
<!-- Carousel End -->
<!-- Video Modal Start -->
<jsp:include page="view/videohome.jsp"/>
<!-- Video Modal End -->

<!-- Story Start -->
<div class="container-fluid py-5" id="story">
    <div class="container pt-5 pb-3">
        <div class="section-title position-relative text-center">
            <h6 class="text-uppercase text-primary mb-3" style="letter-spacing: 3px;">Story</h6>
            <h1 class="font-secondary display-4">Our Love Story</h1>
            <i class="far fa-heart text-dark"></i>
        </div>
        <div class="container timeline position-relative p-0">
            <div class="row">
                <div class="col-md-6 text-center text-md-right">
                    <img class="img-fluid mr-md-3" src="img/story-1.jpg" alt="">
                </div>
                <div class="col-md-6 text-center text-md-left">
                    <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 ml-md-3">
                        <h4 class="mb-2">Brilliant Wedding</h4>
                        <p class="text-uppercase mb-2">01 Jan 2022</p>
                        <p class="m-0">Brilliant Wedding là hệ thống cưới ảnh đặt mang lại nhiều phong cách khác nhau về váy cưới. Khác với váy cưới thông thường, váy cưới của hệ thống chúng tôi là sự kết hợp của tinh tế với mỹ thuật. Không chỉ là những góc nhìn thực tế hoặc những thứ xuất hiện ngay trước máy ảnh, phong cách này còn mang đến những thông điệp ý nghĩa mà cô dâu và chú rể muốn truyền tải để gợi lên nhiều cung bậc cảm xúc cho người nhìn.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 text-center text-md-right">
                    <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 mr-md-3">
                        <h4 class="mb-2">Váy Cưới của Brilliant Wedding</h4>
                        <p class="text-uppercase mb-2">01 Oct 2022</p>
                        <p class="m-0">Các váy cưới của Brilliant Wedding đều là những bậc thầy trong nghệ thuật chụp ảnh cưới. Với kỹ năng bắt hình cực tốt, chúng tôi sẽ giúp bạn thu trọn mọi khoảnh khắc đẹp của tình yêu. Không chỉ vậy, đội ngũ nhiếp ảnh gia ROSÉ Wedding cũng vô cùng linh hoạt trong việc chỉnh dáng, gợi ý dáng chụp cho cô dâu chú rể. Qua đó mang đến những bức ảnh ấn tượng và đẳng cấp.</p>
                    </div>
                </div>
                <div class="col-md-6 text-center text-md-left">
                    <img class="img-fluid ml-md-3" src="img/story-2.jpg" alt="">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 text-center text-md-right">
                    <img class="img-fluid mr-md-3" src="img/story-3.jpg" alt="">
                </div>
                <div class="col-md-6 text-center text-md-left">
                    <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 ml-md-3">
                        <h4 class="mb-2">Proposal</h4>
                        <p class="text-uppercase mb-2">01 Jan 2050</p>
                        <p class="m-0">Lorem elitr magna stet rebum dolores sed. Est stet labore est lorem lorem at amet
                            sea, eos tempor rebum, labore amet ipsum sea lorem, stet rebum eirmod amet. Kasd clita kasd
                            stet amet est dolor elitr.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 text-center text-md-right">
                    <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 mr-md-3">
                        <h4 class="mb-2">Enagagement</h4>
                        <p class="text-uppercase mb-2">01 Jan 2050</p>
                        <p class="m-0">Lorem elitr magna stet rebum dolores sed. Est stet labore est lorem lorem at amet
                            sea, eos tempor rebum, labore amet ipsum sea lorem, stet rebum eirmod amet. Kasd clita kasd
                            stet amet est dolor elitr.</p>
                    </div>
                </div>
                <div class="col-md-6 text-center text-md-left">
                    <img class="img-fluid ml-md-3" src="img/story-4.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Story End -->

<!-- Gallery Start -->
<div class="container-fluid bg-gallery" id="gallery" style="padding: 120px 0; margin: 90px 0;">
    <div class="section-title position-relative text-center" style="margin-bottom: 120px;">
        <h6 class="text-uppercase text-white mb-3" style="letter-spacing: 3px;">Thư viện ảnh</h6>
        <h1 class="display-6 text-white">Những bức ảnh đẹp nhất của chúng tôi</h1>
        <i class="far fa-heart text-white"></i>
    </div>
    <div class="owl-carousel gallery-carousel">
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-3.jpg" alt="">
            <a href="img/gallery-3.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-4.jpg" alt="">
            <a href="img/gallery-4.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-5.jpg" alt="">
            <a href="img/gallery-5.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-7.jpg" alt="">
            <a href="img/gallery-7.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-8.jpg" alt="">
            <a href="img/gallery-8.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
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
<button class="open-button" onclick="openForm()" id="myButton">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
         stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
        <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
    </svg>
</button>

<jsp:include page="view/chatBox.jsp"></jsp:include>
<!-- Gallery End -->

<!-- Footer Start -->
<jsp:include page="view/footer.jsp"/>
<!-- Footer End -->


<!-- Scroll to Bottom -->
<i class="fa fa-2x fa-angle-down text-white scroll-to-bottom"></i>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-outline-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


<!-- JavaScript Libraries -->
<jsp:include page="view/script.jsp"/>
</body>

</html>