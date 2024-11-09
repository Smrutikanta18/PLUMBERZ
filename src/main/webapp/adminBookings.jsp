<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page import="entities.*" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DarkPan - Bootstrap 5 Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
    <style>
  .booking-container {
      margin-top: 50px;
  }

  /* Header */
  .booking-header {
      font-size: 36px;
      color: white;
      font-weight: 600;
      text-align: center;
      margin-bottom: 30px;
  }

  /* Table Styling */
  .booking-table-wrapper {
      overflow-x: auto;
      border-radius: 8px;
      background-color: #fff;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      padding: 15px;
  }

  .booking-table {
      width: 100%;
      border-collapse: collapse;
      table-layout: auto;
  }

  .booking-table-header {
      background-color: #343a40;
      color: white;
      font-weight: bold;
      font-size: 16px;
  }

  .booking-table-row {
      background-color: #f9f9f9;
      color: black;
  }

  .booking-table-row:hover {
      background-color: #f1f1f1;
  }

  td {
      padding: 12px;
      text-align: center;
      font-size: 14px;
  }

  /* Button Styles */
  .booking-table-actions {
      display: flex;
      justify-content: space-around;
  }

  .action-form {
      margin: 0;
  }

  .btn {
      padding: 8px 16px;
      font-size: 14px;
      border-radius: 5px;
      border: none;
      color: black;
      cursor: pointer;
      transition: background-color 0.3s ease;
  }

  .btn-work {
      background-color: #28a745;
      color: black;
  }

  .btn-work:hover {
      background-color: #218838;
  }

  .btn-delete {
      background-color: #dc3545;
      color: white;
  }

  .btn-delete:hover {
      background-color: #c82333;
  }

  /* Scrollbar Styling for Overflowing Data */
  .booking-table-wrapper {
      max-width: 100%;
      overflow-x: auto;
  }

  /* Mobile Responsiveness */
  @media (max-width: 768px) {
      .booking-header {
          font-size: 28px;
      }

      td {
          font-size: 12px;
          padding: 10px;
      }
      .booking-table-row {
            color: black;
        }

      .btn {
          font-size: 12px;
          padding: 6px 12px;
      }

      .booking-table-wrapper {
          padding: 10px;
      }

      .booking-table {
          font-size: 12px;
      }

      .booking-table-header th {
          padding: 8px;
      }

      .booking-table-actions {
          flex-direction: column;
          align-items: flex-start;
      }

      .btn {
          width: 100%;
          margin-bottom: 10px;
      }
  }

  @media (max-width: 576px) {
      .booking-header {
          font-size: 24px;
      }

      td {
          font-size: 10px;
          padding: 8px;
      }

      .btn {
          font-size: 10px;
          padding: 5px 10px;
      }

      .booking-table-wrapper {
          padding: 5px;
      }

      .booking-table {
          font-size: 10px;
      }

      .booking-table-header th {
          padding: 6px;
      }
  }
    </style>
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib1/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib1/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css1/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css1/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-secondary navbar-dark">
                <a href="index.html" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary">Plumberz</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="img1/<%= session.getAttribute("image") %>" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0"><%= session.getAttribute("firstname") %> <%= session.getAttribute("lastname") %></h6>
                        <span>Admin</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="adminIndex" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-user"></i>  Profile</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="adminProfile.jsp" class="dropdown-item">Profile</a>
                            <a href="adminChangePass.jsp" class="dropdown-item">Change Password</a>
                        </div>
                    </div>
                    <a href="showAllContactUs" class="nav-item nav-link"><i class="fa fa-phone me-2"></i>Messages</a>
                    <a href="adminBookings" class="nav-item nav-link">Bookings</a>
                    <a href="bannerImages" class="nav-item nav-link">Banner</a>
                    <a href="adminTeam" class="nav-item nav-link">team</a>
                    <a href="work" class="nav-item nav-link">work</a>
                    <a href="data" class="nav-item nav-link">Data</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Login</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="adminLogin.jsp" class="dropdown-item">Sign In</a>
                            <a href="admin_logout" class="dropdown-item">Logout</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="img1/<%= session.getAttribute("image") %>" alt="" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex"><%= session.getAttribute("firstname") %> <%= session.getAttribute("lastname") %></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="adminProfile.jsp" class="dropdown-item">My Profile</a>
                            <a href="admin_logout" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->

             <div class="container booking-container">
                    <h2 class="booking-header">Admin Bookings</h2>
                    <div class="table-responsive booking-table-wrapper">
                        <table class="table booking-table">
                            <thead class="booking-table-header">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Phone</th>
                                    <th>Service</th>
                                    <th>Request</th>
                                    <th>Date</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="message" items="${message}">
                                    <tr class="booking-table-row">
                                        <td>${message.id}</td>
                                        <td>${message.name}</td>
                                        <td>${message.phone}</td>
                                        <td>${message.service}</td>
                                        <td>${message.request}</td>
                                        <td>${message.date}</td>
                                        <td class="booking-table-actions">
                                            <form>
                                                <input type="hidden" name="id" value="${message.id}">
                                                <button style="color: black;font-weight: bold;" type="submit" class="btn btn-work">Work</button>
                                            </form>
                                            <form>
                                                <input type="hidden" name="id" value="${message.id}">
                                                <button style="color: black;font-weight: bold;" type="submit" class="btn btn-delete">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-secondary rounded-top p-4">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="#">Plumberz</a>, All Right Reserved.
                        </div>
                        <div class="col-12 col-sm-6 text-center text-sm-end">
                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By <a> Smrutikanta Parida</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib1/chart/chart.min.js"></script>
    <script src="lib1/easing/easing.min.js"></script>
    <script src="lib1/waypoints/waypoints.min.js"></script>
    <script src="lib1/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib1/tempusdominus/js/moment.min.js"></script>
    <script src="lib1/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib1/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js1/main.js"></script>
     <script>
         function addTeam() {
             const formData = new FormData();

             const image = document.getElementById("image").files[0];
             const name = document.getElementById("name").value;
             const experience = document.getElementById("experience").value;
             const facebook = document.getElementById("facebook").value;
             const instagram = document.getElementById("instagram").value;

             formData.append("image", image);
             formData.append("name", name);
             formData.append("experience", experience);
             formData.append("facebook", facebook);
             formData.append("instagram", instagram);

             const statusMessage = document.getElementById("statusMessagePhone");

             fetch("addTechnician", {
                 method: "POST",
                 body: formData
             })
             .then(response => response.json())
             .then(data => {
                 if (data.success) {
                     statusMessage.textContent = data.message;
                     statusMessage.style.color = "green";
                 } else {
                     statusMessage.textContent = data.message;
                     statusMessage.style.color = "red";
                 }

                 statusMessage.style.display = "block";
                 setTimeout(() => {
                     statusMessage.style.display = "none";
                 }, 3000);
             })
             .catch(error => {
                 console.error("Error:", error);
                 statusMessage.textContent = "An error occurred. Please try again.";
                 statusMessage.style.color = "red";
                 statusMessage.style.display = "block";
                 setTimeout(() => {
                     statusMessage.style.display = "none";
                 }, 3000);
             });
         }
     </script>

</body>

</html>