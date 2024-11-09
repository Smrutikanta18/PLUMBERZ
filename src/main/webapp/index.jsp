<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<%@ page import="entities.*" %>
<%
User users=(User)request.getSession().getAttribute("users");
if(users != null){
request.setAttribute("users",users);
}
%>

<% String email = (String) request.getAttribute("email"); %>
<% String phone = (String) request.getAttribute("phone"); %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Plumberz - Free Plumbing Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
    <style>
    .tech-image-container {
           overflow: hidden;
           position: relative;
           height: 250px; /* Fixed height for desktop */
           width: 100%;
       }
    </style>
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <div class="container-fluid bg-light d-none d-lg-block">
        <div class="row align-items-center top-bar">
            <div class="col-lg-3 col-md-12 text-center text-lg-start">
                <a href="" class="navbar-brand m-0 p-0">
                    <h1 class="text-primary m-0" style="font-size: 30px">PARIDA	ENGINEERING</h1>
                </a>
            </div>
            <div class="col-lg-9 col-md-12 text-end">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <i class="fa fa-map-marker-alt text-primary me-2"></i>
                    <p class="m-0">210-B, Shahpur Jat, Opp. Asiad Village, New Delhi-110049</p>
                </div>
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <i class="far fa-envelope-open text-primary me-2"></i>
                    <p class="m-0"><%= email %></p>
                </div>
                <div class="h-100 d-inline-flex align-items-center">
                    <a class="btn btn-sm-square bg-white text-primary me-1" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-sm-square bg-white text-primary me-1" href=""><i class="fab fa-whatsapp"></i></a>
                    <a class="btn btn-sm-square bg-white text-primary me-0" href=""><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid nav-bar bg-light">
        <nav class="navbar navbar-expand-lg navbar-light bg-white p-3 py-lg-0 px-lg-4">
            <a href="" class="navbar-brand d-flex align-items-center m-0 p-0 d-lg-none">
                <h1 class="text-primary m-0">Plumberz</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav me-auto">
                    <a href="index" class="nav-item nav-link active">Home</a>
                    <a href="about" class="nav-item nav-link">About</a>
                    <a href="service" class="nav-item nav-link">Services</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu fade-up m-0">
                            <a href="booking" class="dropdown-item">Booking</a>
                            <a href="team" class="dropdown-item">Technicians</a>
                            <a href="testimonial" class="dropdown-item">Testimonial</a>
                            <a href="404" class="dropdown-item">404 Page</a>
                        </div>
                    </div>
                    <a href="contact" class="nav-item nav-link">Contact</a>
                    <% if(users != null){ %>
                    <a href="profile" class="nav-item nav-link">Profile</a>
                    <a href="bookings" class="nav-item nav-link">Bookings</a>
                    <a href="userLogout" class="nav-item nav-link">Logout</a>
                    <% }else{ %>
                    <a href="login.jsp" class="nav-item nav-link">SignUp</a>
                    <% } %>
                </div>
                <div class="mt-4 mt-lg-0 me-lg-n4 py-3 px-4 bg-primary d-flex align-items-center">
                    <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-white" style="width: 45px; height: 45px;">
                        <i class="fa fa-phone-alt text-primary"></i>
                    </div>
                    <div class="ms-3">
                        <p class="mb-1 text-white">Phone</p>
                        <h5 class="m-0 text-secondary"><%= phone %></h5>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->


    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5">
        <div class="owl-carousel header-carousel position-relative">
            <%
                // Cast the attribute to a List of Banner objects
                List<Banner> banners = (List<Banner>) request.getAttribute("banners");
                if (banners != null) {
                    for (Banner banner : banners) {
            %>
                <div class="owl-carousel-item position-relative">
                    <img style="max-height: 700px" class="img-fluid" src="img/<%= banner.getImage() %>" alt="">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(0, 0, 0, .4);">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-10 col-lg-8">
                                    <h5 class="text-white text-uppercase mb-3 animated slideInDown">Plumbing & Repairing Services</h5>
                                    <h1 class="display-3 text-white animated slideInDown mb-4"><%= banner.getTitle() %></h1>
                                    <p class="fs-5 fw-medium text-white mb-4 pb-2"><%= banner.getDesc() %></p>
                                    <a href="login.jsp" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">SignIn</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <%
                    }
                }
            %>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- Service Start -->
   <div class="container-xxl py-5">
       <div class="container">
           <div class="row g-4">
               <c:forEach var="work" items="${works}">
                   <div class="col-lg-4 col-md-6 service-item-top wow fadeInUp" data-wow-delay="0.1s">
                       <div class="overflow-hidden">
                           <!-- Display work image dynamically -->
                           <img class="img-fluid w-100 h-100" src="img/${work.image}" alt="Service Image">
                       </div>
                       <div class="d-flex align-items-center justify-content-between bg-light p-4">
                           <!-- Display work detail dynamically -->
                           <h5 class="text-truncate me-3 mb-0">${work.detail}</h5>
                           <a class="btn btn-square btn-outline-primary border-2 border-white flex-shrink-0" href="serviceDetail?id=${work.id}">
                               <i class="fa fa-arrow-right"></i>
                           </a>
                       </div>
                   </div>
               </c:forEach>
           </div>
       </div>
   </div>
    <!-- Service End -->


    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="text-secondary text-uppercase">About Us</h6>
                    <h1 class="mb-4">We Are Trusted Plumbing Company Since 1990</h1>
                    <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                    <p class="fw-medium text-primary"><i class="fa fa-check text-success me-3"></i>Residential & commercial plumbing</p>
                    <p class="fw-medium text-primary"><i class="fa fa-check text-success me-3"></i>Quality services at affordable prices</p>
                    <p class="fw-medium text-primary"><i class="fa fa-check text-success me-3"></i>Immediate 24/ 7 emergency services</p>
                    <div class="bg-primary d-flex align-items-center p-4 mt-5">
                        <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-white" style="width: 60px; height: 60px;">
                            <i class="fa fa-phone-alt fa-2x text-primary"></i>
                        </div>
                        <div class="ms-3">
                            <p class="fs-5 fw-medium mb-2 text-white">Phone</p>
                            <h3 class="m-0 text-secondary"><%= phone %></h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 pt-4" style="min-height: 500px;">
                    <div class="position-relative h-100 wow fadeInUp" data-wow-delay="0.5s">
                        <img class="position-absolute img-fluid w-100 h-100" src="img/about-1.jpg" style="object-fit: cover; padding: 0 0 50px 100px;" alt="">
                        <img class="position-absolute start-0 bottom-0 img-fluid bg-white pt-2 pe-2 w-50 h-50" src="img/about-2.jpg" style="object-fit: cover;" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Fact Start -->
    <div class="container-fluid fact bg-dark my-5 py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-md-6 col-lg-3 text-center wow fadeIn" data-wow-delay="0.1s">
                    <i class="fa fa-check fa-2x text-white mb-3"></i>
                    <h2 class="text-white mb-2" data-toggle="counter-up">${experience}</h2>
                    <p class="text-white mb-0">Years Experience</p>
                </div>
                <div class="col-md-6 col-lg-3 text-center wow fadeIn" data-wow-delay="0.3s">
                    <i class="fa fa-users-cog fa-2x text-white mb-3"></i>
                    <h2 class="text-white mb-2" data-toggle="counter-up">${tech}</h2>
                    <p class="text-white mb-0">Expert Technicians</p>
                </div>
                <div class="col-md-6 col-lg-3 text-center wow fadeIn" data-wow-delay="0.5s">
                    <i class="fa fa-users fa-2x text-white mb-3"></i>
                    <h2 class="text-white mb-2" data-toggle="counter-up">${clients}</h2>
                    <p class="text-white mb-0">Satisfied Clients</p>
                </div>
                <div class="col-md-6 col-lg-3 text-center wow fadeIn" data-wow-delay="0.7s">
                    <i class="fa fa-wrench fa-2x text-white mb-3"></i>
                    <h2 class="text-white mb-2" data-toggle="counter-up">${projects}</h2>
                    <p class="text-white mb-0">Compleate Projects</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Fact End -->


    <!-- Service Start -->
    <div class="container-fluid py-5 px-4 px-lg-0">
        <div class="row g-0">
            <div class="col-lg-3 d-none d-lg-flex">
                <div class="d-flex align-items-center justify-content-center bg-primary w-100 h-100">
                    <h1 class="display-3 text-white m-0" style="transform: rotate(-90deg);">${experience} Years Experience</h1>
                </div>
            </div>
            <div class="col-md-12 col-lg-9">
                <div class="ms-lg-5 ps-lg-5">
                    <div class="text-center text-lg-start wow fadeInUp" data-wow-delay="0.1s">
                        <h6 class="text-secondary text-uppercase">Our Services</h6>
                        <h1 class="mb-5">Explore Our Services</h1>
                    </div>
                    <div class="owl-carousel service-carousel position-relative wow fadeInUp" data-wow-delay="0.1s">
                        <div class="bg-light p-4">
                            <div class="d-flex align-items-center justify-content-center border border-5 border-white mb-4" style="width: 75px; height: 75px;">
                                <i class="fa fa-water fa-2x text-primary"></i>
                            </div>
                            <h4 class="mb-3">Drain Repair</h4>
                            <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam justo.</p>
                            <p class="text-primary fw-medium"><i class="fa fa-check text-success me-2"></i>Quality Service</p>
                            <p class="text-primary fw-medium"><i class="fa fa-check text-success me-2"></i>Customer Satisfaction</p>
                        </div>
                        <div class="bg-light p-4">
                            <div class="d-flex align-items-center justify-content-center border border-5 border-white mb-4" style="width: 75px; height: 75px;">
                                <i class="fa fa-toilet fa-2x text-primary"></i>
                            </div>
                            <h4 class="mb-3">Toilet Pipe Repair</h4>
                            <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam justo.</p>
                            <p class="text-primary fw-medium"><i class="fa fa-check text-success me-2"></i>Quality Service</p>
                            <p class="text-primary fw-medium"><i class="fa fa-check text-success me-2"></i>Customer Satisfaction</p>
                        </div>
                        <div class="bg-light p-4">
                            <div class="d-flex align-items-center justify-content-center border border-5 border-white mb-4" style="width: 75px; height: 75px;">
                                <i class="fa fa-shower fa-2x text-primary"></i>
                            </div>
                            <h4 class="mb-3">Sewer Line Repair</h4>
                            <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam justo.</p>
                            <p class="text-primary fw-medium"><i class="fa fa-check text-success me-2"></i>Quality Service</p>
                            <p class="text-primary fw-medium"><i class="fa fa-check text-success me-2"></i>Customer Satisfaction</p>
                        </div>
                        <div class="bg-light p-4">
                            <div class="d-flex align-items-center justify-content-center border border-5 border-white mb-4" style="width: 75px; height: 75px;">
                                <i class="fa fa-tint fa-2x text-primary"></i>
                            </div>
                            <h4 class="mb-3">Water Heater Repair</h4>
                            <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam justo.</p>
                            <p class="text-primary fw-medium"><i class="fa fa-check text-success me-2"></i>Quality Service</p>
                            <p class="text-primary fw-medium"><i class="fa fa-check text-success me-2"></i>Customer Satisfaction</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->


    <!-- Booking Start -->
    <div class="container-fluid my-5 px-0">
        <div class="video wow fadeInUp" data-wow-delay="0.1s">
            <button type="button" class="btn-play" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/DWRcNpR6Kdc" data-bs-target="#videoModal">
                <span></span>
            </button>

            <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content rounded-0">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Youtube Video</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <!-- 16:9 aspect ratio -->
                            <div class="ratio ratio-16x9">
                                <iframe class="embed-responsive-item" src="" id="video" allowfullscreen allowscriptaccess="always"
                                    allow="autoplay"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <h1 class="text-white mb-4">Emergency Plumbing Service</h1>
            <h3 class="text-white mb-0"> 7 Days a Week</h3>
        </div>
        <div class="container position-relative wow fadeInUp" data-wow-delay="0.1s" style="margin-top: -6rem;">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="bg-light text-center p-5">
                        <h1 class="mb-4">Book For A Service</h1>
                        <form id="messageForm">
                            <div class="row g-3">
                                <div class="col-12 col-sm-6">
                                    <input type="text" name="name" class="form-control border-0" placeholder="Your Name" style="height: 55px;">
                                </div>
                                <div class="col-12 col-sm-6">
                                    <input type="number" name="phone" class="form-control border-0" placeholder="Your Phone" style="height: 55px;"
                                           pattern="^\d{10}$" title="Phone number must be 10 digits" required>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <select class="form-select border-0" name="service" style="height: 55px;">
                                        <option selected>Select A Service</option>
                                        <option value="1">Service 1</option>
                                        <option value="2">Service 2</option>
                                        <option value="3">Service 3</option>
                                    </select>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="date" id="date1" data-target-input="nearest">
                                        <input type="text" name="date"
                                            class="form-control border-0 datetimepicker-input"
                                            placeholder="Service Date" data-target="#date1" data-toggle="datetimepicker" style="height: 55px;">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <textarea class="form-control border-0" name="request" placeholder="Special Request"></textarea>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Book Now</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Booking End -->

        <div id="errorPopup" class="modal fade" tabindex="-1" aria-labelledby="errorPopupLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="errorPopupLabel">Error</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" id="errorMessage"></div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>


    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="text-secondary text-uppercase">Our Technicians</h6>
                <h1 class="mb-5">Our Expert Technicians</h1>
            </div>
           <div class="row g-4">
               <c:forEach var="technician" items="${technicians}">
                   <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                       <div class="team-item">
                           <div class="tech-image-container position-relative overflow-hidden">
                               <!-- Dynamic Image -->
                               <img class="img-fluid" src="img/${technician.image}" alt="${technician.name}">
                           </div>
                           <div class="team-text">
                               <div class="bg-light">
                                   <!-- Dynamic Name and Experience -->
                                   <h5 class="fw-bold mb-0">${technician.name}</h5>
                                   <small>${technician.experience} years of experience</small>
                               </div>
                               <div class="bg-primary">
                                   <!-- Dynamic Social Media Links -->
                                   <a class="btn btn-square mx-1" href="${technician.faceBook}" target="_blank">
                                       <i class="fab fa-facebook-f"></i>
                                   </a>
                                   <a class="btn btn-square mx-1" href="${technician.instagram}" target="_blank">
                                       <i class="fab fa-instagram"></i>
                                   </a>
                               </div>
                           </div>
                       </div>
                   </div>
               </c:forEach>
           </div>
        </div>
    </div>
    <!-- Team End -->


    <!-- Testimonial Start -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="text-center">
                <h6 class="text-secondary text-uppercase">Testimonial</h6>
                <h1 class="mb-5">Our Clients Say!</h1>
            </div>
            <div class="owl-carousel testimonial-carousel position-relative wow fadeInUp" data-wow-delay="0.1s">
                <div class="testimonial-item text-center">
                    <div class="testimonial-text bg-light text-center p-4 mb-4">
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                    <img class="bg-light rounded-circle p-2 mx-auto mb-2" src="img/testimonial-1.jpg" style="width: 80px; height: 80px;">
                    <div class="mb-2">
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                    </div>
                    <h5 class="mb-1">Client Name</h5>
                    <p class="m-0">Profession</p>
                </div>
                <div class="testimonial-item text-center">
                    <div class="testimonial-text bg-light text-center p-4 mb-4">
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                    <img class="bg-light rounded-circle p-2 mx-auto mb-2" src="img/testimonial-2.jpg" style="width: 80px; height: 80px;">
                    <div class="mb-2">
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                    </div>
                    <h5 class="mb-1">Client Name</h5>
                    <p class="m-0">Profession</p>
                </div>
                <div class="testimonial-item text-center">
                    <div class="testimonial-text bg-light text-center p-4 mb-4">
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                    <img class="bg-light rounded-circle p-2 mx-auto mb-2" src="img/testimonial-3.jpg" style="width: 80px; height: 80px;">
                    <div class="mb-2">
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                    </div>
                    <h5 class="mb-1">Client Name</h5>
                    <p class="m-0">Profession</p>
                </div>
                <div class="testimonial-item text-center">
                    <div class="testimonial-text bg-light text-center p-4 mb-4">
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                    <img class="bg-light rounded-circle p-2 mx-auto mb-2" src="img/testimonial-4.jpg" style="width: 80px; height: 80px;">
                    <div class="mb-2">
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                        <small class="fa fa-star text-secondary"></small>
                    </div>
                    <h5 class="mb-1">Client Name</h5>
                    <p class="m-0">Profession</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->


    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Address</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>210-B, Shahpur Jat, Opp. Asiad Village, New Delhi-110049</p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i><%= phone %></p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i><%= email %></p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-whatsapp"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Opening Hours</h4>
                    <h6 class="text-light">Monday - Friday:</h6>
                    <p class="mb-4">09.00 AM - 09.00 PM</p>
                    <h6 class="text-light">Saturday - Sunday:</h6>
                    <p class="mb-0">09.00 AM - 12.00 PM</p>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Services</h4>
                    <a class="btn btn-link" href="">Drain Cleaning</a>
                    <a class="btn btn-link" href="">Sewer Line</a>
                    <a class="btn btn-link" href="">Water Heating</a>
                    <a class="btn btn-link" href="">Toilet Cleaning</a>
                    <a class="btn btn-link" href="">Broken Pipe</a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Newsletter</h4>
                    <p>Reach to us.</p>
                    <div class="position-relative mx-auto" style="max-width: 400px;">
                        <form id="contactForm1">
                            <div class="position-relative">
                                <input
                                    class="form-control border-0 w-100 py-3 ps-4 pe-5"
                                    type="text"
                                    name="phone"
                                    id="number9"
                                    placeholder="Your Phone"
                                >

                                <button
                                    type="button"
                                    onclick="submitPhone()"
                                    class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2"
                                >
                                    Submit
                                </button>
                            </div>

                            <!-- Updated message area with a unique id -->
                            <div id="statusMessagePhone" class="mt-2" style="font-size: 10px;"></div> <!-- Message area for success/error -->
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a class="border-bottom" href="#">PARIDA	ENGINEERING</a>, All Right Reserved.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js">
    </script>
       <script>
           $(document).ready(function () {
               $("#messageForm").on("submit", function (e) {
                   e.preventDefault(); // Prevent the form from submitting automatically

                   var phoneInput = $("input[name='phone']");
                   // Check validity using client-side validation
                   if (!phoneInput[0].checkValidity()) {
                       alert("Phone number must be 10 digits and valid.");
                       return; // Stop the form from submitting
                   }

                   var dateValue = $("input[name='date']").val();
                   if (dateValue) {
                       var dateParts = dateValue.split("/");
                       var formattedDate = dateParts[2] + "-" + dateParts[0] + "-" + dateParts[1];
                       $("input[name='date']").val(formattedDate); // Update the date field with formatted date
                   }

                   var formData = $(this).serialize();

                   // Send form data via AJAX
                   $.ajax({
                       type: "POST",
                       url: "submitMessage", // Servlet URL
                       data: formData,
                       success: function (response) {
                           if (response.status === "success") {
                               alert("Message sent successfully!");
                               $("#messageForm")[0].reset(); // Reset the form
                           } else if (response.status === "error") {
                               alert(response.message); // Display the error message
                           }
                       },
                       error: function (xhr, status, error) {
                           // Handle AJAX errors
                           var errorMessage = xhr.responseText ? xhr.responseText : "An error occurred.";
                           alert(errorMessage); // Show error message
                       }
                   });
               });
           });
       </script>
       <script>
           function submitPhone() {
               const phone = document.getElementById("number9").value.trim(); // Use trim() to remove extra spaces

               console.log(phone);

               console.log(phone.length);

               // Check for 10 digits and numbers only
               if (phone.length !== 10 || !/^\d{10}$/.test(phone)) {
                   document.getElementById("statusMessagePhone").innerHTML = "<div style='color: red;'>Phone number must be 10 digits.</div>";
                   setTimeout(() => document.getElementById("statusMessagePhone").innerHTML = "", 3000);
                   return;
               }

               const formData1 = $("#contactForm1").serialize(); // Prepare data to send
               console.log('Phone number:', phone);

               // AJAX request to send data to the servlet
               $.ajax({
                   type: "POST",
                   url: "phone",  // Ensure this matches the servlet mapping
                   data: formData1,
                   success: function(response) {
                       if (response.status === "success") {
                           $("#statusMessagePhone").html("<div style='color: green;'>Message sent successfully!</div>");
                           $("#contactForm1")[0].reset(); // Reset the form on success
                       } else {
                           $("#statusMessagePhone").html("<div style='color: red;'>" + (response.message || "Error submitting message.") + "</div>");
                       }

                       clearMessageAfterTimeoutPhone();
                   },
                   error: function(xhr, status, error) {
                       console.error("AJAX error:", status, error); // Debugging: Log AJAX error
                       $("#statusMessagePhone").html("<div style='color: red;'>An error occurred.</div>");
                       clearMessageAfterTimeoutPhone();
                   }
               });
           }

           function clearMessageAfterTimeoutPhone() {
               setTimeout(function() {
                   $("#statusMessagePhone").html(""); // Clears the status message
               }, 3000);
           }
       </script>
</body>

</html>