<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 10/25/2022
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <div class="container-fluid p-0 mb-5 pb-5" id="home">
  <div id="header-carousel" class="carousel slide carousel-fade" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item position-relative active" style="height: 100vh; min-height: 400px;">
        <img class="position-absolute w-100 h-100" src="img/carousel-1.png" style="object-fit: cover;">
        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
          <div class="p-3" style="max-width: 900px;">
            <h1 class="display-1 text-white mt-n3 mb-md-4">BRILLIANT WEDDING</h1>
            <div class="d-inline-block border-top border-bottom border-light py-3 px-4">
              <h3 class="text-uppercase font-weight-normal text-white m-0" style="letter-spacing: 2px;">
                STUDIO TỔ CHỨC TIỆC CƯỚI HÀNG ĐẦU VIỆT NAM</h3>
            </div>
            <button type="button" class="btn-play mx-auto" data-toggle="modal"
                    data-target="#videoModal">
              <span></span>
            </button>
          </div>
        </div>
      </div>
      <div class="carousel-item position-relative" style="height: 100vh; min-height: 400px;">
        <img class="position-absolute w-100 h-100" src="img/carousel-2.jpg" style="object-fit: cover;">
        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
          <div class="p-3" style="max-width: 900px;">
            <h1 class="display-1 text-white mt-n3 mb-md-4">BRILLIANT WEDDING</h1>
            <div class="d-inline-block border-top border-bottom border-light py-3 px-4">
              <h3 class="text-uppercase font-weight-normal text-white m-0" style="letter-spacing: 2px;">
                STUDIO TỔ CHỨC TIỆC CƯỚI HÀNG ĐẦU VIỆT NAM</h3>
            </div>
            <button class="btn-play mx-auto btn-dark" data-target="#videoModal" data-toggle="modal"
                    type="button">
              <span></span>
            </button>
          </div>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev justify-content-start" href="#header-carousel" data-slide="prev">
      <div class="btn btn-secondary px-0" style="width: 68px; height: 68px;">
        <span class="carousel-control-prev-icon mt-3"></span>
      </div>
    </a>
    <a class="carousel-control-next justify-content-end" href="#header-carousel" data-slide="next">
      <div class="btn btn-secondary px-0" style="width: 68px; height: 68px;">
        <span class="carousel-control-next-icon mt-3"></span>
      </div>
    </a>
  </div>
</div>
