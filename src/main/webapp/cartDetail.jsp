<%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 11/10/2022
  Time: 6:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <%--    <link rel="apple-touch-icon" href="../../../app-assets/images/ico/apple-icon-120.png">--%>
    <%--    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/favicon.ico">--%>
    <%--    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"--%>
    <%--          rel="stylesheet">--%>

    <%--    <!-- BEGIN: Vendor CSS-->--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/vendors.min.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/forms/wizard/bs-stepper.min.css">--%>
    <%--    <link rel="stylesheet" type="text/css"--%>
    <%--          href="../../../app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/extensions/toastr.min.css">--%>
    <%--    <!-- END: Vendor CSS-->--%>

    <%--    <!-- BEGIN: Theme CSS-->--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/bootstrap.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/bootstrap-extended.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/colors.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/components.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/dark-layout.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/bordered-layout.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/semi-dark-layout.css">--%>

    <%--    <!-- BEGIN: Page CSS-->--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/core/menu/menu-types/vertical-menu.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/pages/app-ecommerce.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/plugins/forms/pickers/form-pickadate.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/plugins/forms/form-wizard.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/plugins/extensions/ext-component-toastr.css">--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/plugins/forms/form-number-input.css">--%>
    <%--    <!-- END: Page CSS-->--%>

    <%--    <!-- BEGIN: Custom CSS-->--%>
    <%--    <link rel="stylesheet" type="text/css" href="../../../assets/css/style.css">--%>
    <%--    <!-- END: Custom CSS-->--%>
    <jsp:include page="view/header.jsp"/>
</head>
<body class="pace-done vertical-layout navbar-floating footer-static menu-hide vertical-overlay-menu mt-5"
      data-open="click"
      data-menu="vertical-menu-modern" data-col="">
<div class="pace pace-inactive">
    <div class="pace-progress" data-progress-text="100%" data-progress="99"
         style="transform: translate3d(100%, 0px, 0px);">
        <div class="pace-progress-inner"></div>
    </div>
    <div class="pace-activity"></div>
</div>
<jsp:include page="view/navbar.jsp"/>
<!-- BEGIN: Content-->
<div class="container">
    <div class="app-content content ecommerce-application">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-left mb-0">Giỏ hàng của bạn</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">
                <div class="bs-stepper checkout-tab-steps">
                    <%--                    <!-- Wizard starts -->--%>
                    <%--                    <div class="bs-stepper-header">--%>
                    <%--                        <div class="step active" data-target="#step-cart">--%>
                    <%--                            <button type="button" class="step-trigger" aria-selected="true">--%>
                    <%--                                <span class="bs-stepper-box">--%>
                    <%--                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"--%>
                    <%--                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"--%>
                    <%--                                         stroke-linejoin="round" class="feather feather-shopping-cart font-medium-3"><circle--%>
                    <%--                                            cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path--%>
                    <%--                                            d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>--%>
                    <%--                                </span>--%>
                    <%--                                <span class="bs-stepper-label">--%>
                    <%--                                    <span class="bs-stepper-title">Cart</span>--%>
                    <%--                                    <span class="bs-stepper-subtitle">Your Cart Items</span>--%>
                    <%--                                </span>--%>
                    <%--                            </button>--%>
                    <%--                        </div>--%>
                    <%--                        <div class="line">--%>
                    <%--                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"--%>
                    <%--                                 fill="none"--%>
                    <%--                                 stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"--%>
                    <%--                                 class="feather feather-chevron-right font-medium-2">--%>
                    <%--                                <polyline points="9 18 15 12 9 6"></polyline>--%>
                    <%--                            </svg>--%>
                    <%--                        </div>--%>
                    <%--                        <div class="step" data-target="#step-address">--%>
                    <%--                            <button type="button" class="step-trigger" aria-selected="false">--%>
                    <%--                                <span class="bs-stepper-box">--%>
                    <%--                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"--%>
                    <%--                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"--%>
                    <%--                                         stroke-linejoin="round" class="feather feather-home font-medium-3"><path--%>
                    <%--                                            d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline--%>
                    <%--                                            points="9 22 9 12 15 12 15 22"></polyline></svg>--%>
                    <%--                                </span>--%>
                    <%--                                <span class="bs-stepper-label">--%>
                    <%--                                    <span class="bs-stepper-title">Address</span>--%>
                    <%--                                    <span class="bs-stepper-subtitle">Enter Your Address</span>--%>
                    <%--                                </span>--%>
                    <%--                            </button>--%>
                    <%--                        </div>--%>
                    <%--                        <div class="line">--%>
                    <%--                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"--%>
                    <%--                                 fill="none"--%>
                    <%--                                 stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"--%>
                    <%--                                 class="feather feather-chevron-right font-medium-2">--%>
                    <%--                                <polyline points="9 18 15 12 9 6"></polyline>--%>
                    <%--                            </svg>--%>
                    <%--                        </div>--%>
                    <%--                        <div class="step" data-target="#step-payment">--%>
                    <%--                            <button type="button" class="step-trigger" aria-selected="false">--%>
                    <%--                                <span class="bs-stepper-box">--%>
                    <%--                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"--%>
                    <%--                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"--%>
                    <%--                                         stroke-linejoin="round" class="feather feather-credit-card font-medium-3"><rect--%>
                    <%--                                            x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10"--%>
                    <%--                                                                                                          x2="23"--%>
                    <%--                                                                                                          y2="10"></line></svg>--%>
                    <%--                                </span>--%>
                    <%--                                <span class="bs-stepper-label">--%>
                    <%--                                    <span class="bs-stepper-title">Payment</span>--%>
                    <%--                                    <span class="bs-stepper-subtitle">Select Payment Method</span>--%>
                    <%--                                </span>--%>
                    <%--                            </button>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <!-- Wizard ends -->--%>

                    <div class="bs-stepper-content">
                        <!-- Checkout Place order starts -->
                        <div id="step-cart" class="content active dstepper-block">
                            <div id="place-order" class="list-view product-checkout">
                                <!-- Checkout Place Order Left starts -->
                                <div class="checkout-items">
                                    <div class="card ecommerce-card">
                                        <div class="item-img col-sm-3">
                                            <a href="app-ecommerce-details.html">
                                                <img src="../../../app-assets/images/pages/eCommerce/1.png"
                                                     alt="img-placeholder">
                                            </a>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="item-name">
                                                <h6 class="mb-0"><a href="app-ecommerce-details.html" class="text-body">Apple
                                                    Watch Series 5</a></h6>
                                                <span class="item-company">By <a href="javascript:void(0)"
                                                                                 class="company-name">Apple</a></span>
                                            </div>
                                        </div>
                                        <div class="item-options text-center col-sm-4">
                                            <div class="item-wrapper">
                                                <div class="item-cost">
                                                    <h4 class="item-price">$19.99</h4>
                                                    <p class="card-text shipping">
                                                        <span class="badge badge-pill badge-light-success">Free Shipping</span>
                                                    </p>
                                                </div>
                                            </div>
                                            <button type="button"
                                                    class="btn btn-light mt-1 remove-wishlist waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-x align-middle mr-25">
                                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                                </svg>
                                                <span>Remove</span>
                                            </button>
                                            <button type="button"
                                                    class="btn btn-primary btn-cart move-cart waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-heart align-middle mr-25">
                                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                                </svg>
                                                <span class="text-truncate">Add to Wishlist</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card ecommerce-card">
                                        <div class="item-img">
                                            <a href="app-ecommerce-details.html">
                                                <img src="../../../app-assets/images/pages/eCommerce/2.png"
                                                     alt="img-placeholder">
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <div class="item-name">
                                                <h6 class="mb-0">
                                                    <a href="app-ecommerce-details.html" class="text-body">Apple iPhone
                                                        11
                                                        (64GB, Black)</a>
                                                </h6>
                                                <span class="item-company">By <a href="javascript:void(0)"
                                                                                 class="company-name">Apple</a></span>
                                                <div class="item-rating">
                                                    <ul class="unstyled-list list-inline">
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <span class="text-success mb-1">In Stock</span>
                                            <div class="item-quantity">
                                                <span class="quantity-title">Qty:</span>
                                                <div class="input-group quantity-counter-wrapper bootstrap-touchspin">
                                                <span class="input-group-btn input-group-prepend bootstrap-touchspin-injected"><button
                                                        class="btn btn-primary bootstrap-touchspin-down"
                                                        type="button">-</button></span><input type="text"
                                                                                              class="quantity-counter form-control"
                                                                                              value="1"><span
                                                        class="input-group-btn input-group-append bootstrap-touchspin-injected"><button
                                                        class="btn btn-primary bootstrap-touchspin-up"
                                                        type="button">+</button></span>
                                                </div>
                                            </div>
                                            <span class="delivery-date text-muted">Delivery by, Wed Apr 24</span>
                                            <span class="text-success">7% off 1 offers Available</span>
                                        </div>
                                        <div class="item-options text-center">
                                            <div class="item-wrapper">
                                                <div class="item-cost">
                                                    <h4 class="item-price">$4999.99</h4>
                                                    <p class="card-text shipping">
                                                        <span class="badge badge-pill badge-light-success">Free Shipping</span>
                                                    </p>
                                                </div>
                                            </div>
                                            <button type="button"
                                                    class="btn btn-light mt-1 remove-wishlist waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-x align-middle mr-25">
                                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                                </svg>
                                                <span>Remove</span>
                                            </button>
                                            <button type="button"
                                                    class="btn btn-primary btn-cart move-cart waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-heart align-middle mr-25">
                                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                                </svg>
                                                <span class="text-truncate">Add to Wishlist</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card ecommerce-card">
                                        <div class="item-img">
                                            <a href="app-ecommerce-details.html">
                                                <img src="../../../app-assets/images/pages/eCommerce/3.png"
                                                     alt="img-placeholder">
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <div class="item-name">
                                                <h6 class="mb-0"><a href="app-ecommerce-details.html" class="text-body">Apple
                                                    iMac 27-inch</a></h6>
                                                <span class="item-company">By <a href="javascript:void(0)"
                                                                                 class="company-name">Apple</a></span>
                                                <div class="item-rating">
                                                    <ul class="unstyled-list list-inline">
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star unfilled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <span class="text-success mb-1">In Stock</span>
                                            <div class="item-quantity">
                                                <span class="quantity-title">Qty:</span>
                                                <div class="input-group quantity-counter-wrapper bootstrap-touchspin">
                                                <span class="input-group-btn input-group-prepend bootstrap-touchspin-injected"><button
                                                        class="btn btn-primary bootstrap-touchspin-down"
                                                        type="button">-</button></span><input type="text"
                                                                                              class="quantity-counter form-control"
                                                                                              value="1"><span
                                                        class="input-group-btn input-group-append bootstrap-touchspin-injected"><button
                                                        class="btn btn-primary bootstrap-touchspin-up"
                                                        type="button">+</button></span>
                                                </div>
                                            </div>
                                            <span class="delivery-date text-muted">Delivery by, Wed Apr 27</span>
                                            <span class="text-success">3% off 1 offers Available</span>
                                        </div>
                                        <div class="item-options text-center">
                                            <div class="item-wrapper">
                                                <div class="item-cost">
                                                    <h4 class="item-price">$4499.99</h4>
                                                </div>
                                            </div>
                                            <button type="button"
                                                    class="btn btn-light mt-1 remove-wishlist waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-x align-middle mr-25">
                                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                                </svg>
                                                <span>Remove</span>
                                            </button>
                                            <button type="button"
                                                    class="btn btn-primary btn-cart move-cart waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-heart align-middle mr-25">
                                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                                </svg>
                                                <span class="text-truncate">Add to Wishlist</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card ecommerce-card">
                                        <div class="item-img">
                                            <a href="app-ecommerce-details.html">
                                                <img src="../../../app-assets/images/pages/eCommerce/4.png"
                                                     alt="img-placeholder">
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <div class="item-name">
                                                <h6 class="mb-0">
                                                    <a href="app-ecommerce-details.html" class="text-body">OneOdio A71
                                                        Wired
                                                        Headphones</a>
                                                </h6>
                                                <span class="item-company">By <a href="javascript:void(0)"
                                                                                 class="company-name">OneOdio</a></span>
                                                <div class="item-rating">
                                                    <ul class="unstyled-list list-inline">
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star unfilled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star unfilled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <span class="text-success mb-1">In Stock</span>
                                            <div class="item-quantity">
                                                <span class="quantity-title">Qty:</span>
                                                <div class="input-group quantity-counter-wrapper bootstrap-touchspin">
                                                <span class="input-group-btn input-group-prepend bootstrap-touchspin-injected"><button
                                                        class="btn btn-primary bootstrap-touchspin-down"
                                                        type="button">-</button></span><input type="text"
                                                                                              class="quantity-counter form-control"
                                                                                              value="1"><span
                                                        class="input-group-btn input-group-append bootstrap-touchspin-injected"><button
                                                        class="btn btn-primary bootstrap-touchspin-up"
                                                        type="button">+</button></span>
                                                </div>
                                            </div>
                                            <span class="delivery-date text-muted">Delivery by, Wed Apr 29</span>
                                            <span class="text-success">5% off 2 offers Available</span>
                                        </div>
                                        <div class="item-options text-center">
                                            <div class="item-wrapper">
                                                <div class="item-cost">
                                                    <h4 class="item-price">$599.99</h4>
                                                    <p class="card-text shipping">
                                                        <span class="badge badge-pill badge-light-success">Free Shipping</span>
                                                    </p>
                                                </div>
                                            </div>
                                            <button type="button"
                                                    class="btn btn-light mt-1 remove-wishlist waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-x align-middle mr-25">
                                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                                </svg>
                                                <span>Remove</span>
                                            </button>
                                            <button type="button"
                                                    class="btn btn-primary btn-cart move-cart waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-heart align-middle mr-25">
                                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                                </svg>
                                                <span class="text-truncate">Add to Wishlist</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card ecommerce-card">
                                        <div class="item-img">
                                            <a href="app-ecommerce-details.html">
                                                <img src="../../../app-assets/images/pages/eCommerce/5.png"
                                                     alt="img-placeholder">
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <div class="item-name">
                                                <h6 class="mb-0">
                                                    <a href="app-ecommerce-details.html" class="text-body">Apple -
                                                        MacBook
                                                        Air® (Latest Model) - 13.3" Display - Silver</a>
                                                </h6>
                                                <span class="item-company">By <a href="javascript:void(0)"
                                                                                 class="company-name">Apple</a></span>
                                                <div class="item-rating">
                                                    <ul class="unstyled-list list-inline">
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star unfilled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <span class="text-success mb-1">In Stock</span>
                                            <div class="item-quantity">
                                                <span class="quantity-title">Qty:</span>
                                                <div class="input-group quantity-counter-wrapper bootstrap-touchspin">
                                                <span class="input-group-btn input-group-prepend bootstrap-touchspin-injected"><button
                                                        class="btn btn-primary bootstrap-touchspin-down"
                                                        type="button">-</button></span><input type="text"
                                                                                              class="quantity-counter form-control"
                                                                                              value="1"><span
                                                        class="input-group-btn input-group-append bootstrap-touchspin-injected"><button
                                                        class="btn btn-primary bootstrap-touchspin-up"
                                                        type="button">+</button></span>
                                                </div>
                                            </div>
                                            <span class="delivery-date text-muted">Delivery by, Wed Apr 30</span>
                                            <span class="text-success">3% off 1 offers Available</span>
                                        </div>
                                        <div class="item-options text-center">
                                            <div class="item-wrapper">
                                                <div class="item-cost">
                                                    <h4 class="item-price">$649.99</h4>
                                                    <p class="card-text shipping">
                                                        <span class="badge badge-pill badge-light-success">Free Shipping</span>
                                                    </p>
                                                </div>
                                            </div>
                                            <button type="button"
                                                    class="btn btn-light mt-1 remove-wishlist waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-x align-middle mr-25">
                                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                                </svg>
                                                <span>Remove</span>
                                            </button>
                                            <button type="button"
                                                    class="btn btn-primary btn-cart move-cart waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-heart align-middle mr-25">
                                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                                </svg>
                                                <span class="text-truncate">Add to Wishlist</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card ecommerce-card">
                                        <div class="item-img">
                                            <a href="app-ecommerce-details.html">
                                                <img src="../../../app-assets/images/pages/eCommerce/6.png"
                                                     alt="img-placeholder">
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <div class="item-name">
                                                <h6 class="mb-0">
                                                    <a href="app-ecommerce-details.html" class="text-body">Switch Pro
                                                        Controller </a>
                                                </h6>
                                                <span class="item-company">By <a href="javascript:void(0)"
                                                                                 class="company-name">Sharp</a></span>
                                                <div class="item-rating">
                                                    <ul class="unstyled-list list-inline">
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star filled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star unfilled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star unfilled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                        <li class="ratings-list-item">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14"
                                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                                 stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round"
                                                                 class="feather feather-star unfilled-star">
                                                                <polygon
                                                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                                            </svg>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <span class="text-success mb-1">In Stock</span>
                                            <div class="item-quantity">
                                                <span class="quantity-title">Qty:</span>
                                                <div class="input-group quantity-counter-wrapper bootstrap-touchspin">
                                                <span class="input-group-btn input-group-prepend bootstrap-touchspin-injected"><button
                                                        class="btn btn-primary bootstrap-touchspin-down"
                                                        type="button">-</button></span><input type="text"
                                                                                              class="quantity-counter form-control"
                                                                                              value="1"><span
                                                        class="input-group-btn input-group-append bootstrap-touchspin-injected"><button
                                                        class="btn btn-primary bootstrap-touchspin-up"
                                                        type="button">+</button></span>
                                                </div>
                                            </div>
                                            <span class="delivery-date text-muted">Delivery by, Wed Apr 30</span>
                                            <span class="text-success">6% off 3 offers Available</span>
                                        </div>
                                        <div class="item-options text-center">
                                            <div class="item-wrapper">
                                                <div class="item-cost">
                                                    <h4 class="item-price">$1999.99</h4>
                                                </div>
                                            </div>
                                            <button type="button"
                                                    class="btn btn-light mt-1 remove-wishlist waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-x align-middle mr-25">
                                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                                </svg>
                                                <span>Remove</span>
                                            </button>
                                            <button type="button"
                                                    class="btn btn-primary btn-cart move-cart waves-effect waves-float waves-light">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-heart align-middle mr-25">
                                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                                </svg>
                                                <span class="text-truncate">Add to Wishlist</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <!-- Checkout Place Order Left ends -->

                                <!-- Checkout Place Order Right starts -->
                                <div class="checkout-options">
                                    <div class="card">
                                        <div class="card-body">
                                            <label class="section-label mb-1">Options</label>
                                            <div class="coupons input-group input-group-merge">
                                                <input type="text" class="form-control" placeholder="Coupons"
                                                       aria-label="Coupons" aria-describedby="input-coupons">
                                                <div class="input-group-append">
                                                <span class="input-group-text text-primary"
                                                      id="input-coupons">Apply</span>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="price-details">
                                                <h6 class="price-title">Price Details</h6>
                                                <ul class="list-unstyled">
                                                    <li class="price-detail">
                                                        <div class="detail-title">Total MRP</div>
                                                        <div class="detail-amt">$598</div>
                                                    </li>
                                                    <li class="price-detail">
                                                        <div class="detail-title">Bag Discount</div>
                                                        <div class="detail-amt discount-amt text-success">-25$</div>
                                                    </li>
                                                    <li class="price-detail">
                                                        <div class="detail-title">Estimated Tax</div>
                                                        <div class="detail-amt">$1.3</div>
                                                    </li>
                                                    <li class="price-detail">
                                                        <div class="detail-title">EMI Eligibility</div>
                                                        <a href="javascript:void(0)"
                                                           class="detail-amt text-primary">Details</a>
                                                    </li>
                                                    <li class="price-detail">
                                                        <div class="detail-title">Delivery Charges</div>
                                                        <div class="detail-amt discount-amt text-success">Free</div>
                                                    </li>
                                                </ul>
                                                <hr>
                                                <ul class="list-unstyled">
                                                    <li class="price-detail">
                                                        <div class="detail-title detail-total">Total</div>
                                                        <div class="detail-amt font-weight-bolder">$574</div>
                                                    </li>
                                                </ul>
                                                <button type="button"
                                                        class="btn btn-primary btn-block btn-next place-order waves-effect waves-float waves-light">
                                                    Place Order
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Checkout Place Order Right ends -->
                                </div>
                            </div>
                            <!-- Checkout Place order Ends -->
                        </div>
                        <!-- Checkout Customer Address Starts -->
                        <div id="step-address" class="content">
                            <form id="checkout-address" class="list-view product-checkout">
                                <!-- Checkout Customer Address Left starts -->
                                <div class="card">
                                    <div class="card-header flex-column align-items-start">
                                        <h4 class="card-title">Add New Address</h4>
                                        <p class="card-text text-muted mt-25">Be sure to check "Deliver to this address"
                                            when you have finished</p>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group mb-2">
                                                    <label for="checkout-name">Full Name:</label>
                                                    <input type="text" id="checkout-name" class="form-control"
                                                           name="fname"
                                                           placeholder="John Doe">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group mb-2">
                                                    <label for="checkout-number">Mobile Number:</label>
                                                    <input type="number" id="checkout-number" class="form-control"
                                                           name="mnumber" placeholder="0123456789">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group mb-2">
                                                    <label for="checkout-apt-number">Flat, House No:</label>
                                                    <input type="number" id="checkout-apt-number" class="form-control"
                                                           name="apt-number" placeholder="9447 Glen Eagles Drive">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group mb-2">
                                                    <label for="checkout-landmark">Landmark e.g. near apollo
                                                        hospital:</label>
                                                    <input type="text" id="checkout-landmark" class="form-control"
                                                           name="landmark" placeholder="Near Apollo Hospital">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group mb-2">
                                                    <label for="checkout-city">Town/City:</label>
                                                    <input type="text" id="checkout-city" class="form-control"
                                                           name="city"
                                                           placeholder="Tokyo">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group mb-2">
                                                    <label for="checkout-pincode">Pincode:</label>
                                                    <input type="number" id="checkout-pincode" class="form-control"
                                                           name="pincode" placeholder="201301">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group mb-2">
                                                    <label for="checkout-state">State:</label>
                                                    <input type="text" id="checkout-state" class="form-control"
                                                           name="state"
                                                           placeholder="California">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group mb-2">
                                                    <label for="add-type">Address Type:</label>
                                                    <select class="form-control" id="add-type">
                                                        <option>Home</option>
                                                        <option>Work</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button type="button"
                                                        class="btn btn-primary btn-next delivery-address waves-effect waves-float waves-light">
                                                    Save And Deliver Here
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Checkout Customer Address Left ends -->

                                <!-- Checkout Customer Address Right starts -->
                                <div class="customer-card">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">John Doe</h4>
                                        </div>
                                        <div class="card-body actions">
                                            <p class="card-text mb-0">9447 Glen Eagles Drive</p>
                                            <p class="card-text">Lewis Center, OH 43035</p>
                                            <p class="card-text">UTC-5: Eastern Standard Time (EST)</p>
                                            <p class="card-text">202-555-0140</p>
                                            <button type="button"
                                                    class="btn btn-primary btn-block btn-next delivery-address mt-2 waves-effect waves-float waves-light">
                                                Deliver To This Address
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <!-- Checkout Customer Address Right ends -->
                            </form>
                        </div>
                        <!-- Checkout Customer Address Ends -->

                        <!-- Checkout Payment Starts -->
                        <div id="step-payment" class="content">
                            <form id="checkout-payment" class="list-view product-checkout" onsubmit="return false;">
                                <div class="payment-type">
                                    <div class="card">
                                        <div class="card-header flex-column align-items-start">
                                            <h4 class="card-title">Payment options</h4>
                                            <p class="card-text text-muted mt-25">Be sure to click on correct payment
                                                option</p>
                                        </div>
                                        <div class="card-body">
                                            <h6 class="card-holder-name my-75">John Doe</h6>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="customColorRadio1" name="paymentOptions"
                                                       class="custom-control-input" checked="">
                                                <label class="custom-control-label" for="customColorRadio1">
                                                    US Unlocked Debit Card 12XX XXXX XXXX 0000
                                                </label>
                                            </div>
                                            <div class="customer-cvv mt-1">
                                                <div class="form-inline">
                                                    <label class="mb-50" for="card-holder-cvv">Enter CVV:</label>
                                                    <input type="password"
                                                           class="form-control ml-sm-75 ml-0 mb-50 input-cvv"
                                                           name="input-cvv" id="card-holder-cvv">
                                                    <button type="button"
                                                            class="btn btn-primary btn-cvv ml-0 ml-sm-1 mb-50 waves-effect waves-float waves-light">
                                                        Continue
                                                    </button>
                                                </div>
                                            </div>
                                            <hr class="my-2">
                                            <ul class="other-payment-options list-unstyled">
                                                <li class="py-50">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="customColorRadio2" name="paymentOptions"
                                                               class="custom-control-input">
                                                        <label class="custom-control-label" for="customColorRadio2">
                                                            Credit
                                                            / Debit / ATM Card </label>
                                                    </div>
                                                </li>
                                                <li class="py-50">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="customColorRadio3" name="paymentOptions"
                                                               class="custom-control-input">
                                                        <label class="custom-control-label" for="customColorRadio3"> Net
                                                            Banking </label>
                                                    </div>
                                                </li>
                                                <li class="py-50">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="customColorRadio4" name="paymentOptions"
                                                               class="custom-control-input">
                                                        <label class="custom-control-label" for="customColorRadio4"> EMI
                                                            (Easy Installment) </label>
                                                    </div>
                                                </li>
                                                <li class="py-50">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="customColorRadio5" name="paymentOptions"
                                                               class="custom-control-input">
                                                        <label class="custom-control-label" for="customColorRadio5">
                                                            Cash On
                                                            Delivery </label>
                                                    </div>
                                                </li>
                                            </ul>
                                            <hr class="my-2">
                                            <div class="gift-card mb-25">
                                                <p class="card-text">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                         viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                         stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                         class="feather feather-plus-circle mr-50 font-medium-5">
                                                        <circle cx="12" cy="12" r="10"></circle>
                                                        <line x1="12" y1="8" x2="12" y2="16"></line>
                                                        <line x1="8" y1="12" x2="16" y2="12"></line>
                                                    </svg>
                                                    <span class="align-middle">Add Gift Card</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="amount-payable checkout-options">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Price Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <ul class="list-unstyled price-details">
                                                <li class="price-detail">
                                                    <div class="details-title">Price of 3 items</div>
                                                    <div class="detail-amt">
                                                        <strong>$699.30</strong>
                                                    </div>
                                                </li>
                                                <li class="price-detail">
                                                    <div class="details-title">Delivery Charges</div>
                                                    <div class="detail-amt discount-amt text-success">Free</div>
                                                </li>
                                            </ul>
                                            <hr>
                                            <ul class="list-unstyled price-details">
                                                <li class="price-detail">
                                                    <div class="details-title">Amount Payable</div>
                                                    <div class="detail-amt font-weight-bolder">$699.30</div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- Checkout Payment Ends -->
                        <!-- </div> -->
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- END: Content-->

<div class="sidenav-overlay"
     style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></div>
<div class="drag-target"
     style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></div>

<!-- BEGIN: Footer-->
<footer class="footer footer-static footer-light">
    <p class="clearfix mb-0"><span class="float-md-left d-block d-md-inline-block mt-25">COPYRIGHT © 2021<a
            class="ml-25" href="https://1.envato.market/pixinvent_portfolio" target="_blank">Pixinvent</a><span
            class="d-none d-sm-inline-block">, All rights Reserved</span></span><span
            class="float-md-right d-none d-md-block">Hand-crafted &amp; Made with<svg xmlns="http://www.w3.org/2000/svg"
                                                                                      width="14" height="14"
                                                                                      viewBox="0 0 24 24" fill="none"
                                                                                      stroke="currentColor"
                                                                                      stroke-width="2"
                                                                                      stroke-linecap="round"
                                                                                      stroke-linejoin="round"
                                                                                      class="feather feather-heart"><path
            d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg></span>
    </p>
</footer>
<button class="btn btn-primary btn-icon scroll-top waves-effect waves-float waves-light" type="button"
        style="display: none;">
    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor"
         stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-up">
        <line x1="12" y1="19" x2="12" y2="5"></line>
        <polyline points="5 12 12 5 19 12"></polyline>
    </svg>
</button>
<!-- END: Footer-->
<jsp:include page="view/footer.jsp"/>
<jsp:include page="view/script.jsp"/>
<!-- BEGIN: Vendor JS-->
<script src="../../../app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="../../../app-assets/vendors/js/forms/wizard/bs-stepper.min.js"></script>
<script src="../../../app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
<script src="../../../app-assets/vendors/js/extensions/toastr.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="../../../app-assets/js/core/app-menu.js"></script>
<script src="../../../app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="../../../app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>
<!-- END: Page JS-->

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


</body>
</html>
