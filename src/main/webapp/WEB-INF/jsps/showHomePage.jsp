<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="commonParts/header.jsp" %>
</head>
<body>
<%@ include file="commonParts/navbar2.jsp" %>  
<div class="page-wrapper">
        <!-- PAGE CONTAINER-->
        <div class="page-container">

        <!-- HEADER DESKTOP-->
                    <header class="header-desktop">
                        <div class="section__content section__content--p30">
                            <div class="container-fluid">
                                <div class="header-wrap">
                                    <form class="form-header" action="" method="POST">
                                        <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                                        <button class="au-btn--submit" type="submit">
                                            <i class="zmdi zmdi-search"></i>
                                        </button>
                                    </form>
                                    <div class="header-button">
                                        <div class="noti-wrap">
                                            <div class="noti__item js-item-menu">
                                                <i class="zmdi zmdi-comment-more"></i>
                                                <span class="quantity">1</span>
                                                <div class="mess-dropdown js-dropdown">
                                                    <div class="mess__title">
                                                        <p>You have 2 news message</p>
                                                    </div>
                                                    <div class="mess__item">
                                                        <div class="image img-cir img-40">
                                                            <img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" />
                                                        </div>
                                                        <div class="content">
                                                            <h6>Michelle Moreno</h6>
                                                            <p>Have sent a photo</p>
                                                            <span class="time">3 min ago</span>
                                                        </div>
                                                    </div>
                                                    <div class="mess__item">
                                                        <div class="image img-cir img-40">
                                                            <img src="images/icon/avatar-04.jpg" alt="Diane Myers" />
                                                        </div>
                                                        <div class="content">
                                                            <h6>Diane Myers</h6>
                                                            <p>You are now connected on message</p>
                                                            <span class="time">Yesterday</span>
                                                        </div>
                                                    </div>
                                                    <div class="mess__footer">
                                                        <a href="#">View all messages</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="noti__item js-item-menu">
                                                <i class="zmdi zmdi-email"></i>
                                                <span class="quantity">1</span>
                                                <div class="email-dropdown js-dropdown">
                                                    <div class="email__title">
                                                        <p>You have 3 New Emails</p>
                                                    </div>
                                                    <div class="email__item">
                                                        <div class="image img-cir img-40">
                                                            <img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
                                                        </div>
                                                        <div class="content">
                                                            <p>Meeting about new dashboard...</p>
                                                            <span>Cynthia Harvey, 3 min ago</span>
                                                        </div>
                                                    </div>
                                                    <div class="email__item">
                                                        <div class="image img-cir img-40">
                                                            <img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
                                                        </div>
                                                        <div class="content">
                                                            <p>Meeting about new dashboard...</p>
                                                            <span>Cynthia Harvey, Yesterday</span>
                                                        </div>
                                                    </div>
                                                    <div class="email__item">
                                                        <div class="image img-cir img-40">
                                                            <img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
                                                        </div>
                                                        <div class="content">
                                                            <p>Meeting about new dashboard...</p>
                                                            <span>Cynthia Harvey, April 12,,2018</span>
                                                        </div>
                                                    </div>
                                                    <div class="email__footer">
                                                        <a href="#">See all emails</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="noti__item js-item-menu">
                                                <i class="zmdi zmdi-notifications"></i>
                                                <span class="quantity">3</span>
                                                <div class="notifi-dropdown js-dropdown">
                                                    <div class="notifi__title">
                                                        <p>You have 3 Notifications</p>
                                                    </div>
                                                    <div class="notifi__item">
                                                        <div class="bg-c1 img-cir img-40">
                                                            <i class="zmdi zmdi-email-open"></i>
                                                        </div>
                                                        <div class="content">
                                                            <p>You got a email notification</p>
                                                            <span class="date">April 12, 2018 06:50</span>
                                                        </div>
                                                    </div>
                                                    <div class="notifi__item">
                                                        <div class="bg-c2 img-cir img-40">
                                                            <i class="zmdi zmdi-account-box"></i>
                                                        </div>
                                                        <div class="content">
                                                            <p>Your account has been blocked</p>
                                                            <span class="date">April 12, 2018 06:50</span>
                                                        </div>
                                                    </div>
                                                    <div class="notifi__item">
                                                        <div class="bg-c3 img-cir img-40">
                                                            <i class="zmdi zmdi-file-text"></i>
                                                        </div>
                                                        <div class="content">
                                                            <p>You got a new file</p>
                                                            <span class="date">April 12, 2018 06:50</span>
                                                        </div>
                                                    </div>
                                                    <div class="notifi__footer">
                                                        <a href="#">All notifications</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="account-wrap">
                                            <div class="account-item clearfix js-item-menu">
                                                <div class="image">
                                                    <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                                </div>
                                                <div class="content">
                                                    <a class="js-acc-btn" href="#">john doe</a>
                                                </div>
                                                <div class="account-dropdown js-dropdown">
                                                    <div class="info clearfix">
                                                        <div class="image">
                                                            <a href="#">
                                                                <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                                            </a>
                                                        </div>
                                                        <div class="content">
                                                            <h5 class="name">
                                                                <a href="#">john doe</a>
                                                            </h5>
                                                            <span class="email">johndoe@example.com</span>
                                                        </div>
                                                    </div>
                                                    <div class="account-dropdown__body">
                                                        <div class="account-dropdown__item">
                                                            <a href="#">
                                                                <i class="zmdi zmdi-account"></i>Account</a>
                                                        </div>
                                                        <div class="account-dropdown__item">
                                                            <a href="#">
                                                                <i class="zmdi zmdi-settings"></i>Setting</a>
                                                        </div>
                                                        <div class="account-dropdown__item">
                                                            <a href="#">
                                                                <i class="zmdi zmdi-money-box"></i>Billing</a>
                                                        </div>
                                                    </div>
                                                    <div class="account-dropdown__footer">
                                                        <a href="#">
                                                            <i class="zmdi zmdi-power"></i>Logout</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
        <!-- HEADER DESKTOP-->
        
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                         <div class="row">
                           <div class="col-md-12">
                                <div class="overview-wrap">
                                     <h2 class="title-1">PuraDesi Admin Dashboard</h2>
                                         </div>
                                </div>
                            </div>
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1" onclick="location.href='showUsers';" style="cursor: pointer;">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-basket"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${totalUsers}</h2>
                                                <span style="font-weight: bold;">Total Orders</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                        <!--     <canvas id="widgetChart1"></canvas> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2" onclick="location.href='showCustomers';" style="cursor: pointer;">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-basket"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${totalCustomers}</h2>
                                                <span style="font-weight: bold;">Total Shipped</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                           <!--  <canvas id="widgetChart2"></canvas> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3" onclick="location.href='showPaymentsByMonth';" style="cursor: pointer;">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-basket"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${todayPayment}</h2>
                                                <span style="font-weight: bold;">Total Delivered</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                          <!--   <canvas id="widgetChart3"></canvas> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4" onclick="location.href='showAllPayments';" style="cursor: pointer;">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-basket"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${totalPayment}</h2>
                                                <span style="font-weight: bold;">Total Cancelled</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                          <!--   <canvas id="widgetChart4"></canvas> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                       <div class="row">
                            <div class="col-lg-12">
                                <div class="au-card m-b-30">
                                    <div class="au-card-inner">
                                        <h3 style="color: black;">Last 10 Days Orders Chart</h3>
                                        <canvas id="singelBarChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>
<%@ include file="commonParts/footer.jsp" %>  
<!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>
</body>
</html>