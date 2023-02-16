<%--
  Created by IntelliJ IDEA.
  User: shakh
  Date: 15-Feb-23
  Time: 08:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/fragments/css.jsp"/>
</head>


<body>
<!-- ====== Header Start ====== -->
<header class="ud-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg">
                    <a class="navbar-brand" href="index.html">
                        <img src="/resources//resources/assets/images/logo/logo.png" alt="Logo">
                    </a>
                    <button class="navbar-toggler">
                        <span class="toggler-icon"> </span>
                        <span class="toggler-icon"> </span>
                        <span class="toggler-icon"> </span>
                    </button>

                    <div class="navbar-collapse">
                        <ul id="nav" class="navbar-nav mx-auto">
                            <li class="nav-item">
                                <a class="ud-menu-scroll" href="#home">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="ud-menu-scroll" href="#demos">Demos</a>
                            </li>
                            <li class="nav-item">
                                <a class="ud-menu-scroll" href="#customize">Customize</a>
                            </li>
                            <li class="nav-item">
                                <a class="ud-menu-scroll" href="#features">Features</a>
                            </li>
                            <li class="nav-item">
                                <a class="ud-menu-scroll" href="#contact">Contact Us</a>
                            </li>
                        </ul>
                    </div>

                    <div class="navbar-btn d-none d-sm-inline-block">
                        <a href="doc/index.html" target="_blank" class="ud-main-btn ud-login-btn">
                            Document
                        </a>
                        <a class="ud-main-btn ud-white-btn" href="https://themeforest.net/item/cliniva-angular-8-hospital-admin-dashboard-template/24571066" target="_blank">
                            Buy Now
                        </a>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ====== Header End ====== -->

<!-- ====== Hero Start ====== -->
<section class="ud-hero" id="home">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="ud-hero-content wow fadeInUp" data-wow-delay=".2s">
                    <h1 class="ud-hero-title">
                        Cliniva - Angular 15+ Hospital Admin Template
                    </h1>
                    <p class="ud-hero-desc">
                        Hospital Admin Dashboard template to manage your hospital and clinics with ready to use modules to
                        help you build
                        your projects faster.
                    </p>
                    <ul class="ud-hero-buttons">
                        <li>
                            <a href="https://themeforest.net/item/cliniva-angular-8-hospital-admin-dashboard-template/24571066" rel="nofollow noopener" target="_blank" class="ud-main-btn ud-white-btn">
                                Buy Now
                            </a>
                        </li>
                        <li>
                            <a onclick="openURL('source/light')" rel="nofollow noopener" target="_blank" class="ud-main-btn ud-link-btn">
                                Live Demo <i class="lni lni-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="ud-hero-brands-wrapper wow fadeInUp" data-wow-delay=".3s">
                    <img src="/resources//resources/assets/images/technology/angular.svg" alt="brand" class="technology-icon" height="60px">
                    <img src="/resources//resources/assets/images/technology/typescript.svg" alt="brand" class="technology-icon" height="50px">
                    <img src="/resources//resources/assets/images/technology/bootstrap.svg" alt="brand" class="technology-icon" height="50px">
                    <img src="/resources//resources/assets/images/technology/sass.svg" alt="brand" class="technology-icon" height="60px">
                </div>
                <div class="ud-hero-image wow fadeInUp" data-wow-delay=".25s">
                    <img src="/resources//resources/assets/images/main.png" alt="hero-image">
                    <img src="/resources//resources/assets/images/dotted-shape.svg" alt="shape" class="shape shape-1">
                    <img src="/resources//resources/assets/images/dotted-shape.svg" alt="shape" class="shape shape-2">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ====== Hero End ====== -->


<section class="pt-20 pb-10 lg:pt-[120px] lg:pb-20" id="demos">
    <div class="container">
        <div class="row mt-5">
            <div class="col-lg-12">
                <div class="ud-section-title mx-auto text-center">
                    <h4>DEFAULT DEMOS</h4>
                    <div class="section-title-border mt-3"></div>
                    <p class="small-font">
                        Cliniva is a clean, professional and modern designed admin dashboard template with Dark and Light Layout
                        options and RTL options.
                    </p>
                </div>
            </div>
        </div>
        <div class="row g-5 justify-content-center text-center">
            <div class="col-md-6">
                <div class="demo-box">
                    <a onclick="openURL('source/light')" class="demo-link cursor-pointer" target="_blank">
                        <img src="/resources//resources/assets/images/light.png" alt="">
                    </a>
                    <h4 class="mt-4 demo-link-title cursor-pointer"><a onclick="openURL('source/light')" target="_blank">Light</a></h4>
                </div>
            </div>
            <div class="col-md-6">
                <div class="demo-box">
                    <a onclick="openURL('source/dark')" class="demo-link cursor-pointer" target="_blank">
                        <img src="/resources//resources/assets/images/dark.png" alt="">
                    </a>
                    <h4 class="mt-4 demo-link-title cursor-pointer"><a onclick="openURL('source/dark')" target="_blank">Dark</a>
                    </h4>
                </div>
            </div>
            <div class="col-md-6">
                <div class="demo-box">
                    <a href="" onclick="openURL('source/rtl')" class="demo-link cursor-pointer" target="_blank">
                        <img src="/resources//resources/assets/images/rtl.png" alt="">
                    </a>
                    <h4 class="mt-4 demo-link-title cursor-pointer"><a href="" onclick="openURL('source/rtl')" target="_blank">RTL</a></h4>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="pt-20 pb-10 lg:pt-[120px] lg:pb-20" id="customize">
    <div class="container">
        <div class="row mt-5">
            <div class="col-lg-12">
                <div class="ud-section-title mx-auto text-center">
                    <h4>LIVE STYLE CUSTOMIZER</h4>
                    <div class="section-title-border mt-3"></div>
                    <p class="small-font">
                        Fantastic Live Customizer Will allow you to create the most unique and incredible style for your app in
                        only a few seconds!
                    </p>
                </div>
            </div>
        </div>
        <div class="row sp50">
            <div class="col-md-12 col-lg-12 col-sm-12">
                <div class="dashboard-item">
                    <div class="demo-box1">
                        <div class="img-fluid mx-auto d-block">
                            <img class="img-center" alt="gif-alt" src="/resources//resources/assets/images/video.gif">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ====== Features Start ====== -->
<section id="features" class="ud-features">
    <div class="container">
        <div class="row mt-5">
            <div class="col-lg-12">
                <div class="ud-section-title mx-auto text-center">
                    <h4>FEATURES</h4>
                    <div class="section-title-border mt-3"></div>
                    <p class="small-font">
                        With the help of this ready to use features make your web application spectacular and more professional.
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-green">
                        <i class="material-icons md-48">code</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Quality &amp; Clean Code</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-orange">
                        <i class="material-icons md-48">space_dashboard</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Angular Material</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".2s">
                    <div class="ud-feature-icon col-cyan">
                        <i class="material-icons md-48">update</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Life time free Updates</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-red">
                        <i class="material-icons md-48">people_alt</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Role Base Authentication</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-purple">
                        <i class="material-icons md-48">hide_source</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">No jQuery</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".2s">
                    <div class="ud-feature-icon col-red">
                        <i class="material-icons md-48">work_outline</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Ready to widgets</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-green">
                        <i class="material-icons md-48">history_edu</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Documentation</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-orange">
                        <i class="material-icons md-48">insert_chart_outlined</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">5 Types Of Charts</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".2s">
                    <div class="ud-feature-icon col-cyan">
                        <i class="material-icons md-48">table_view</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Multifunction Table</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-orange">
                        <i class="material-icons md-48">calendar_month</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Calendar App</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-purple">
                        <i class="material-icons md-48">color_lens</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Color templates</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-red">
                        <i class="material-icons md-48">font_download</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Google Fonts</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-green">
                        <i class="material-icons md-48">business_center</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Stater kit</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-red">
                        <i class="material-icons md-48">settings_suggest</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Built-in Customizer</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-cyan">
                        <i class="material-icons md-48">translate</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">Multi Language</h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-6">
                <div class="ud-single-feature wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-feature-icon col-orange">
                        <i class="material-icons md-48">format_textdirection_r_to_l</i>
                    </div>
                    <div class="ud-feature-content">
                        <h3 class="ud-feature-title">RTL Ready</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ====== Features End ====== -->



<!-- ====== Pricing Start ====== -->
<!-- <section id="pricing" class="ud-pricing">
  <div class="container">
    <div class="row mt-5">
      <div class="col-lg-12">
        <div class="ud-section-title mx-auto text-center">
          <h4>PRICING</h4>
          <div class="section-title-border mt-3"></div>
          <p class="small-font">
            There are many variations of passages of Lorem Ipsum available
            but the majority have suffered alteration in some form.
          </p>
        </div>
      </div>
    </div>

    <div class="row g-0 align-items-center justify-content-center">
      <div class="col-lg-4 col-md-6 col-sm-10">
        <div class="ud-single-pricing first-item wow fadeInUp" data-wow-delay=".15s">
          <div class="ud-pricing-header">
            <h3>STARTING FROM</h3>
            <h4>$ 19.99/mo</h4>
          </div>
          <div class="ud-pricing-body">
            <ul>
              <li>5 User</li>
              <li>All UI components</li>
              <li>Lifetime access</li>
              <li>Free updates</li>
              <li>Use on 1 (one) project</li>
              <li>4 Months support</li>
            </ul>
          </div>
          <div class="ud-pricing-footer">
            <a href="javascript:void(0)" class="ud-main-btn ud-border-btn">
              Purchase Now
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-10">
        <div class="ud-single-pricing last-item wow fadeInUp" data-wow-delay=".15s">
          <div class="ud-pricing-header">
            <h3>STARTING FROM</h3>
            <h4>$ 70.99/mo</h4>
          </div>
          <div class="ud-pricing-body">
            <ul>
              <li>5 User</li>
              <li>All UI components</li>
              <li>Lifetime access</li>
              <li>Free updates</li>
              <li>Use on 1 (one) project</li>
              <li>4 Months support</li>
            </ul>
          </div>
          <div class="ud-pricing-footer">
            <a href="javascript:void(0)" class="ud-main-btn ud-border-btn">
              Purchase Now
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section> -->
<!-- ====== Pricing End ====== -->

<!-- ====== Testimonials Start ====== -->
<section id="testimonials" class="ud-testimonials">
    <div class="container">
        <div class="row mt-5">
            <div class="col-lg-12">
                <div class="ud-section-title mx-auto text-center">
                    <h4>WHAT OUR CUSTOMERS SAY</h4>
                    <div class="section-title-border mt-3"></div>
                    <p class="small-font">
                        The opinions of our valuable Customers
                    </p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="ud-single-testimonial wow fadeInUp" data-wow-delay=".1s">
                    <div class="ud-testimonial-ratings">
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                    </div>
                    <div class="ud-testimonial-content">
                        <p>
                            Best Design and Best code with best customer support. All the screen are well designed and have good
                            documentation.
                        </p>
                    </div>
                    <div class="ud-testimonial-info">
                        <div class="ud-testimonial-image">
                            <img src="/resources//resources/assets/images/testimonials/author1.png" alt="author">
                        </div>
                        <div class="ud-testimonial-meta">
                            <h4>Valuable Customer</h4>
                            <p>Customer @Envato</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="ud-single-testimonial wow fadeInUp" data-wow-delay=".15s">
                    <div class="ud-testimonial-ratings">
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                    </div>
                    <div class="ud-testimonial-content">
                        <p>
                            I really liked the template of "Cliniva Hospita".
                            Simple structure.
                            Excellent examples!
                            Comfortable documentation.
                        </p>
                    </div>
                    <div class="ud-testimonial-info">
                        <div class="ud-testimonial-image">
                            <img src="/resources//resources/assets/images/testimonials/author1.png" alt="author">
                        </div>
                        <div class="ud-testimonial-meta">
                            <h4>Valuable Customer</h4>
                            <p>Customer @Envato</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="ud-single-testimonial wow fadeInUp" data-wow-delay=".2s">
                    <div class="ud-testimonial-ratings">
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                        <i class="lni lni-star-filled"></i>
                    </div>
                    <div class="ud-testimonial-content">
                        <p>
                            - nice template with a lot of functionality<br>
                            - flexible design<br>
                            - great and fast customer support
                        </p>
                    </div>
                    <div class="ud-testimonial-info">
                        <div class="ud-testimonial-image">
                            <img src="/resources//resources/assets/images/testimonials/author1.png" alt="author">
                        </div>
                        <div class="ud-testimonial-meta">
                            <h4>Valuable Customer</h4>
                            <p>Customer @Envato</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ====== Testimonials End ====== -->


<!-- ====== About Start ====== -->
<section id="about" class="ud-about">
    <div class="container">
        <div class="ud-about-wrapper wow fadeInUp" data-wow-delay=".2s">
            <div class="ud-about-content-wrapper">
                <div class="ud-about-content">
                    <img src="/resources//resources/assets/images/elite.png" alt="about-image" class="mb-3">
                    <h2>A Template By Envato Elite Author</h2>
                    <p>
                        Proud to be a member of The Envato Elite Club, We offer the top admin dashboard templates that can
                        accelerate your development. Every template is developer-friendly, and our team will help you to build
                        your business.
                    </p>
                    <a href="https://themeforest.net/user/redstartheme/portfolio" class="ud-main-btn" target="_blank">View
                        Portfolio</a>
                </div>
            </div>
            <div class="ud-about-image">
                <img src="/resources//resources/assets/images/about-image.svg" alt="about-image">
            </div>
        </div>
    </div>
</section>
<!-- ====== About End ====== -->
<section id="contact" class="">
    <div class="container">
        <div class="row mt-5">
            <div class="col-lg-12">
                <div class="ud-section-title mx-auto text-center">
                    <h4>CONTACT US</h4>
                    <div class="section-title-border mt-3"></div>
                    <p class="small-font">
                        Let’s talk about
                        Love to hear from you!
                    </p>
                </div>
            </div>
        </div>
        <div class="row align-items-center mb-5">
            <div class="col-xl-8 col-lg-7">
                <div class="ud-contact-content-wrapper">
                    <div class="ud-contact-info-wrapper">
                        <div class="ud-single-info">
                            <div class="ud-info-icon">
                                <i class="material-icons icon-font-contact">
                                    mail_outline
                                </i>
                            </div>
                            <div class="ud-info-meta">
                                <h5>Get Support</h5>
                                <p class="mb-2">Fell free to contact us on our email. Our dedicated
                                    team
                                    will
                                    help you.</p>
                                <h6 class="mb-1"><a class="contact-email-text" href="https://themeforest.net/item/cliniva-angular-8-hospital-admin-dashboard-template/24571066/comments" target="_blank">Envato
                                    Comment</a>
                                </h6>

                                <h6 class="mb-0"><a class="contact-email-text" href="mailto:redstartheme@gmail.com">redstartheme@gmail.com</a>
                                </h6>
                            </div>
                        </div>
                        <div class="ud-single-info">
                            <div class="ud-info-icon">
                                <i class="material-icons icon-font-contact">
                                    chat_bubble_outline
                                </i>
                            </div>
                            <div class="ud-info-meta">
                                <h5>Pre-Sale Questions</h5>
                                <p class="mb-2">Don't hesitate to ask any questions before making the purchase.</p>
                                <h6 class="mb-0"><a class="contact-email-text" href="mailto:redstartheme@gmail.com">redstartheme@gmail.com</a>
                                </h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-5">

            </div>
        </div>

    </div>
</section>

<!-- ====== Footer Start ====== -->
<footer class="ud-footer wow fadeInUp" data-wow-delay=".15s">
    <div class="ud-footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <p class="ud-footer-bottom-right">
                        Designed and Developed by
                        <a href="https://einfosoft.com/" rel="nofollow" class="text-danger">einfosoft</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- ====== Footer End ====== -->

<!-- ====== Back To Top Start ====== -->
<a href="javascript:void(0)" class="back-to-top">
    <i class="lni lni-chevron-up"> </i>
</a>
<!-- ====== Back To Top End ====== -->

<!-- ====== All Javascript Files ====== -->
<script src="/resources//resources/assets/js/bootstrap.bundle.min.js"></script>
<script src="/resources//resources/assets/js/wow.min.js"></script>
<script src="/resources//resources/assets/js/main.js"></script>
<script>
    // ==== for menu scroll
    const pageLink = document.querySelectorAll(".ud-menu-scroll");

    pageLink.forEach((elem) => {
        elem.addEventListener("click", (e) => {
            e.preventDefault();
            document.querySelector(elem.getAttribute("href")).scrollIntoView({
                behavior: "smooth",
                offsetTop: 1 - 60,
            });
        });
    });

    // section menu active
    function onScroll(event) {
        const sections = document.querySelectorAll(".ud-menu-scroll");
        const scrollPos =
            window.pageYOffset ||
            document.documentElement.scrollTop ||
            document.body.scrollTop;

        for (let i = 0; i < sections.length; i++) {
            const currLink = sections[i];
            const val = currLink.getAttribute("href");
            const refElement = document.querySelector(val);
            const scrollTopMinus = scrollPos + 73;
            if (
                refElement.offsetTop <= scrollTopMinus &&
                refElement.offsetTop + refElement.offsetHeight > scrollTopMinus
            ) {
                document
                    .querySelector(".ud-menu-scroll")
                    .classList.remove("active");
                currLink.classList.add("active");
            } else {
                currLink.classList.remove("active");
            }
        }
    }

    window.document.addEventListener("scroll", onScroll);

    function openURL(url) {
        window.open(url, "_blank");
        window.localStorage.clear();
        window.location.reload();
    }
</script>


</body>
</html>
