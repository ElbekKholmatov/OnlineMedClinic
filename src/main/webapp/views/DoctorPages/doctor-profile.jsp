<%--
  Created by IntelliJ IDEA.
  User: shakh
  Date: 19-Feb-23
  Time: 08:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    a charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/assets/img/favicon.png">
    <title>Preclinic - Medical & Hospital - Bootstrap 5 Admin Template</title>
    <link href="../icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/resources/assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="/resources/assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="/resources/assets/plugins/fontawesome/css/all.min.css">

    <link rel="stylesheet" type="text/css" href="/resources/assets/css/select2.min.css">

    <link rel="stylesheet" href="/resources/assets/css/bootstrap-datetimepicker.min.css">

    <link rel="stylesheet" href="/resources/assets/plugins/feather/feather.css">

    <link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css">
</head>
<body>

<div class="main-wrapper">
    <div class="header">
        <div class="header-left">
            <a href="index.html" class="logo">
                <img src="/resources/assets/img/logo.png" width="35" height="35" alt=""> <span>Pre Clinic</span>
            </a>
        </div>
        <a id="toggle_btn" href="javascript:void(0);"><img src="/resources/assets/img/icons/bar-icon.svg" alt=""></a>
        <a id="mobile_btn" class="mobile_btn float-start" href="#sidebar"><img
                src="/resources/assets/img/icons/bar-icon.svg" alt=""></a>
        <div class="top-nav-search mob-view">
            <form>
                <input type="text" class="form-control" placeholder="Search here">
                <a class="btn"><img src="/resources/assets/img/icons/search-normal.svg" alt=""></a>
            </form>
        </div>
        <ul class="nav user-menu float-end">
            <li class="nav-item dropdown d-none d-sm-block">
                <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown"><img
                        src="/resources/assets/img/icons/note-icon-02.svg" alt=""><span class="pulse"></span> </a>
                <div class="dropdown-menu notifications">
                    <div class="topnav-dropdown-header">
                        <span>Notifications</span>
                    </div>
                    <div class="drop-scroll">
                        <ul class="notification-list">
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media">
<span class="avatar">
<img alt="John Doe" src="/resources/assets/img/user.jpg" class="img-fluid">
</span>
                                        <div class="media-body">
                                            <p class="noti-details"><span class="noti-title">John Doe</span> added new
                                                task <span class="noti-title">Patient appointment booking</span></p>
                                            <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media">
                                        <span class="avatar">V</span>
                                        <div class="media-body">
                                            <p class="noti-details"><span class="noti-title">Tarah Shropshire</span>
                                                changed the task name <span class="noti-title">Appointment booking with payment gateway</span>
                                            </p>
                                            <p class="noti-time"><span class="notification-time">6 mins ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media">
                                        <span class="avatar">L</span>
                                        <div class="media-body">
                                            <p class="noti-details"><span class="noti-title">Misty Tison</span> added
                                                <span class="noti-title">Domenic Houston</span> and <span
                                                        class="noti-title">Claire Mapes</span> to project <span
                                                        class="noti-title">Doctor available module</span></p>
                                            <p class="noti-time"><span class="notification-time">8 mins ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media">
                                        <span class="avatar">G</span>
                                        <div class="media-body">
                                            <p class="noti-details"><span class="noti-title">Rolland Webber</span>
                                                completed task <span class="noti-title">Patient and Doctor video conferencing</span>
                                            </p>
                                            <p class="noti-time"><span class="notification-time">12 mins ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media">
                                        <span class="avatar">V</span>
                                        <div class="media-body">
                                            <p class="noti-details"><span class="noti-title">Bernardo Galaviz</span>
                                                added new task <span class="noti-title">Private chat module</span></p>
                                            <p class="noti-time"><span class="notification-time">2 days ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="topnav-dropdown-footer">
                        <a href="activities.html">View all Notifications</a>
                    </div>
                </div>
            </li>
            <li class="nav-item dropdown d-none d-sm-block">
                <a href="javascript:void(0);" id="open_msg_box" class="hasnotifications nav-link"><img
                        src="/resources/assets/img/icons/note-icon-01.svg" alt=""><span class="pulse"></span> </a>
            </li>
            <li class="nav-item dropdown has-arrow user-profile-list">
                <a href="#" class="dropdown-toggle nav-link user-link" data-bs-toggle="dropdown">
                    <div class="user-names">
                        <h5>Liam Michael </h5>
                        <span>Admin</span>
                    </div>
                    <span class="user-img">
<img src="/resources/assets/img/user-06.jpg" alt="Admin">
</span>
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="profile.html">My Profile</a>
                    <a class="dropdown-item" href="edit-profile.html">Edit Profile</a>
                    <a class="dropdown-item" href="settings.jsp">Settings</a>
                    <a class="dropdown-item" href="login.html">Logout</a>
                </div>
            </li>
            <li class="nav-item ">
                <a href="settings.jsp" class="hasnotifications nav-link"><img
                        src="/resources/assets/img/icons/setting-icon-01.svg" alt=""> </a>
            </li>
        </ul>
        <div class="dropdown mobile-user-menu float-end">
            <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i
                    class="fa-solid fa-ellipsis-vertical"></i></a>
            <div class="dropdown-menu dropdown-menu-end">
                <a class="dropdown-item" href="profile.html">My Profile</a>
                <a class="dropdown-item" href="edit-profile.html">Edit Profile</a>
                <a class="dropdown-item" href="settings.jsp">Settings</a>
                <a class="dropdown-item" href="login.html">Logout</a>
            </div>
        </div>
    </div>
    <div class="sidebar" id="sidebar">
        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li class="menu-title">Main</li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-01.svg"
                                                                 alt=""></span> <span> Dashboard </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="index.html">Admin Dashboard</a></li>
                            <li><a href="doctor-dashboard.jsp">Doctor Dashboard</a></li>
                            <li><a href="patient-dashboard.html">Patient Dashboard</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-02.svg"
                                                                 alt=""></span> <span> Doctors </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="doctors.jsp">Doctor List</a></li>
                            <li><a href="add-doctor.html">Add Doctor</a></li>
                            <li><a href="edit-doctor.jsp">Edit Doctor</a></li>
                            <li><a class="active" href="doctor-profile.jsp">Doctor Profile</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-03.svg"
                                                                 alt=""></span> <span>Patients </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="patients.html">Patients List</a></li>
                            <li><a href="add-patient.html">Add Patients</a></li>
                            <li><a href="edit-patient.html">Edit Patients</a></li>
                            <li><a href="patient-profile.html">Patients Profile</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-08.svg"
                                                                 alt=""></span> <span> Staff </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="staff-list.html">Staff List</a></li>
                            <li><a href="add-staff.html">Add Staff</a></li>
                            <li><a href="staff-profile.html">Staff Profile</a></li>
                            <li><a href="staff-leave.html">Leaves</a></li>
                            <li><a href="staff-holiday.html">Holidays</a></li>
                            <li><a href="staff-attendance.html">Attendance</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-04.svg"
                                                                 alt=""></span> <span> Appointments </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="appointments.html">Appointment List</a></li>
                            <li><a href="add-appointment.html">Book Appointment</a></li>
                            <li><a href="edit-appointment.html">Edit Appointment</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-05.svg"
                                                                 alt=""></span> <span> Doctor Schedule </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="schedule.html">Schedule List</a></li>
                            <li><a href="add-schedule.html">Add Schedule</a></li>
                            <li><a href="edit-schedule.html">Edit Schedule</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-06.svg"
                                                                 alt=""></span> <span> Departments </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="departments.html">Department List</a></li>
                            <li><a href="add-department.html">Add Department</a></li>
                            <li><a href="edit-department.html">Edit Department</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-07.svg"
                                                                 alt=""></span> <span> Accounts </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="invoices.html">Invoices</a></li>
                            <li><a href="payments.html">Payments</a></li>
                            <li><a href="expenses.html">Expenses</a></li>
                            <li><a href="taxes.html">Taxes</a></li>
                            <li><a href="provident-fund.html">Provident Fund</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-09.svg"
                                                                 alt=""></span> <span> Payroll </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="salary.html"> Employee Salary </a></li>
                            <li><a href="salary-view.html"> Payslip </a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="chat.html"><span class="menu-side"><img
                                src="/resources/assets/img/icons/menu-icon-10.svg" alt=""></span> <span>Chat</span></a>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-11.svg"
                                                                 alt=""></span> <span> Calls</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="voice-call.html">Voice Call</a></li>
                            <li><a href="video-call.html">Video Call</a></li>
                            <li><a href="incoming-call.html">Incoming Call</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-12.svg"
                                                                 alt=""></span> <span> Email</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="compose.html">Compose Mail</a></li>
                            <li><a href="inbox.html">Inbox</a></li>
                            <li><a href="mail-view.html">Mail View</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-13.svg"
                                                                 alt=""></span> <span> Blog</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="blog-details.html">Blog View</a></li>
                            <li><a href="add-blog.html">Add Blog</a></li>
                            <li><a href="edit-blog.html">Edit Blog</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="assets.html"><i class="fa fa-cube"></i> <span>Assets</span></a>
                    </li>
                    <li>
                        <a href="activities.html"><span class="menu-side"><img
                                src="/resources/assets/img/icons/menu-icon-14.svg" alt=""></span>
                            <span>Activities</span></a>
                    </li>
                    <li class="submenu">
                        <a href="#"><i class="fa fa-flag"></i> <span> Reports </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="expense-reports.html"> Expense Report </a></li>
                            <li><a href="invoice-reports.html"> Invoice Report </a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><span class="menu-side"><img src="/resources/assets/img/icons/menu-icon-15.svg"
                                                                 alt=""></span> <span> Invoice </span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="invoices-list.html"> Invoices List </a></li>
                            <li><a href="invoices-grid.html"> Invoices Grid</a></li>
                            <li><a href="add-invoice.html"> Add Invoices</a></li>
                            <li><a href="edit-invoices.html"> Edit Invoices</a></li>
                            <li><a href="view-invoice.html"> Invoices Details</a></li>
                            <li><a href="invoices-settings.jsp"> Invoices Settings</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="settings.jsp"><span class="menu-side"><img
                                src="/resources/assets/img/icons/menu-icon-16.svg" alt=""></span> <span>Settings</span></a>
                    </li>
                    <li class="menu-title">UI Elements</li>
                    <li class="submenu">
                        <a href="#"><i class="fa fa-laptop"></i> <span> Components</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="uikit.html">UI Kit</a></li>
                            <li><a href="typography.html">Typography</a></li>
                            <li><a href="tabs.html">Tabs</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><i class="fa fa-edit"></i> <span> Forms</span> <span class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="form-basic-inputs.html">Basic Inputs</a></li>
                            <li><a href="form-input-groups.html">Input Groups</a></li>
                            <li><a href="form-horizontal.html">Horizontal Form</a></li>
                            <li><a href="form-vertical.html">Vertical Form</a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="#"><i class="fa fa-table"></i> <span> Tables</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="tables-basic.html">Basic Tables</a></li>
                            <li><a href="tables-datatables.html">Data Table</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="calendar.html"><i class="fa fa-calendar"></i> <span>Calendar</span></a>
                    </li>
                    <li class="menu-title">Extras</li>
                    <li class="submenu">
                        <a href="#"><i class="fa fa-columns"></i> <span>Pages</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="login.html"> Login </a></li>
                            <li><a href="register.html"> Register </a></li>
                            <li><a href="forgot-password.jsp"> Forgot Password </a></li>
                            <li><a href="change-password2.html"> Change Password </a></li>
                            <li><a href="lock-screen.html"> Lock Screen </a></li>
                            <li><a href="profile.html"> Profile </a></li>
                            <li><a href="gallery.html"> Gallery </a></li>
                            <li><a href="error-404.html">404 Error </a></li>
                            <li><a href="error-500.html">500 Error </a></li>
                            <li><a href="blank-page.html"> Blank Page </a></li>
                        </ul>
                    </li>
                    <li class="submenu">
                        <a href="javascript:void(0);"><i class="fa fa-share-alt"></i> <span>Multi Level</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li class="submenu">
                                <a href="javascript:void(0);"><span>Level 1</span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="javascript:void(0);"><span>Level 2</span></a></li>
                                    <li class="submenu">
                                        <a href="javascript:void(0);"> <span> Level 2</span> <span
                                                class="menu-arrow"></span></a>
                                        <ul style="display: none;">
                                            <li><a href="javascript:void(0);">Level 3</a></li>
                                            <li><a href="javascript:void(0);">Level 3</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="javascript:void(0);"><span>Level 2</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0);"><span>Level 1</span></a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div class="logout-btn">
                    <a href="login.html"><span class="menu-side"><img src="/resources/assets/img/icons/logout.svg"
                                                                      alt=""></span> <span>Logout</span></a>
                </div>
            </div>
        </div>
    </div>
    <div class="page-wrapper">
        <div class="content">

            <div class="page-header">
                <div class="row">
                    <div class="col-sm-12">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="doctors.jsp">Doctors </a></li>
                            <li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
                            <li class="breadcrumb-item active">Doctors Profile</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="about-info">
                                        <h4>Doctor Profile <span><a href="javascript:;"><i
                                                class="feather-more-vertical"></i></a></span></h4>
                                    </div>
                                    <div class="doctor-profile-head">
                                        <div class="profile-bg-img">
                                            <img src="/resources/assets/img/profile-bg.jpg" alt="Profile">
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <div class="profile-user-box">
                                                    <div class="profile-user-img">
                                                        <img src="/resources/assets/img/profile-user.jpg" alt="Profile">
                                                        <div class="form-group doctor-up-files profile-edit-icon mb-0">
                                                            <div class="uplod d-flex">
                                                                <label class="file-upload profile-upbtn mb-0">
                                                                    <img src="/resources/assets/img/icons/camera-icon.svg"
                                                                         alt="Profile"><input type="file">
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="names-profiles">
                                                        <h4>Dr. Bruce Willis</h4>
                                                        <h5>Senior Doctor</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 d-flex align-items-center">
                                                <div class="follow-group">
                                                    <div class="doctor-follows">
                                                        <h5>Followers</h5>
                                                        <h4>850</h4>
                                                    </div>
                                                    <div class="doctor-follows">
                                                        <h5>Following</h5>
                                                        <h4>18K</h4>
                                                    </div>
                                                    <div class="doctor-follows">
                                                        <h5>Posts</h5>
                                                        <h4>250</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 d-flex align-items-center">
                                                <div class="follow-btn-group">
                                                    <button type="submit" class="btn btn-info follow-btns">Follow
                                                    </button>
                                                    <button type="submit" class="btn btn-info message-btns">Message
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="doctor-personals-grp">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="heading-detail ">
                                            <h4 class="mb-3">About me</h4>
                                            <p>Hello I am Dr. Bruce Willis a Gynaecologist in Sanjivni Hospital Surat. I
                                                love to work with all my hospital staff and seniour doctors.</p>
                                        </div>
                                        <div class="about-me-list">
                                            <ul class="list-space">
                                                <li>
                                                    <h4>Gender</h4>
                                                    <span>Female</span>
                                                </li>
                                                <li>
                                                    <h4>Operation Done</h4>
                                                    <span>30+</span>
                                                </li>
                                                <li>
                                                    <h4>Designation</h4>
                                                    <span>Sr. Doctor</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="doctor-personals-grp">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="heading-detail">
                                            <h4>Skills:</h4>
                                        </div>
                                        <div class="skill-blk">
                                            <div class="skill-statistics">
                                                <div class="skills-head">
                                                    <h5>Operations</h5>
                                                    <p>45%</p>
                                                </div>
                                                <div class="progress mb-0">
                                                    <div class="progress-bar bg-operations" role="progressbar"
                                                         style="width: 45%" aria-valuenow="45" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="skill-statistics">
                                                <div class="skills-head">
                                                    <h5>Patient Care</h5>
                                                    <p>85%</p>
                                                </div>
                                                <div class="progress mb-0">
                                                    <div class="progress-bar bg-statistics" role="progressbar"
                                                         style="width: 85%" aria-valuenow="85" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="skill-statistics">
                                                <div class="skills-head">
                                                    <h5>Endoscopic </h5>
                                                    <p>65%</p>
                                                </div>
                                                <div class="progress mb-0">
                                                    <div class="progress-bar bg-endoscopic" role="progressbar"
                                                         style="width: 65%" aria-valuenow="65" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="skill-statistics">
                                                <div class="skills-head">
                                                    <h5>Patient Visit </h5>
                                                    <p>90%</p>
                                                </div>
                                                <div class="progress mb-0">
                                                    <div class="progress-bar bg-visit" role="progressbar"
                                                         style="width: 90%" aria-valuenow="90" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="doctor-personals-grp">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="heading-detail">
                                            <h4>Speciality</h4>
                                        </div>
                                        <div class="personal-activity">
                                            <div class="personal-icons status-grey">
                                                <img src="/resources/assets/img/icons/medal-01.svg" alt="">
                                            </div>
                                            <div class="views-personal">
                                                <h4>Proffesionals</h4>
                                                <h5>Certified Skin Treatment</h5>
                                            </div>
                                        </div>
                                        <div class="personal-activity">
                                            <div class="personal-icons status-green">
                                                <img src="/resources/assets/img/icons/medal-02.svg" alt="">
                                            </div>
                                            <div class="views-personal">
                                                <h4>Certified</h4>
                                                <h5>Cold Laser Operation</h5>
                                            </div>
                                        </div>
                                        <div class="personal-activity mb-0">
                                            <div class="personal-icons status-orange">
                                                <img src="/resources/assets/img/icons/medal-03.svg" alt="">
                                            </div>
                                            <div class="views-personal">
                                                <h4>Medication Laser</h4>
                                                <h5>Hair Lose Product</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="doctor-personals-grp">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="tab-content-set">
                                            <ul class="nav">
                                                <li>
                                                    <a href="doctor-profile.jsp" class="active"><span
                                                            class="set-about-icon me-2"><img
                                                            src="/resources/assets/img/icons/menu-icon-02.svg"
                                                            alt=""></span>About me</a>
                                                </li>
                                                <li>
                                                    <a href="doctor-setting.jsp"><span class="set-about-icon me-2"><img
                                                            src="/resources/assets/img/icons/menu-icon-16.svg"
                                                            alt=""></span>Settings</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="personal-list-out">
                                            <div class="row">
                                                <div class="col-xl-3 col-md-6">
                                                    <div class="detail-personal">
                                                        <h2>Full Name</h2>
                                                        <h3>Dr.Bruce Willis</h3>
                                                    </div>
                                                </div>
                                                <div class="col-xl-3 col-md-6">
                                                    <div class="detail-personal">
                                                        <h2>Mobile </h2>
                                                        <h3>264-625-2583</h3>
                                                    </div>
                                                </div>
                                                <div class="col-xl-3 col-md-6">
                                                    <div class="detail-personal">
                                                        <h2>Email</h2>
                                                        <h3><a href="../cdn-cgi/l/email-protection.html"
                                                               class="__cf_email__"
                                                               data-cfemail="46243433252306232b272f2a6825292b">[email&#160;protected]</a>
                                                        </h3>
                                                    </div>
                                                </div>
                                                <div class="col-xl-3 col-md-6">
                                                    <div class="detail-personal">
                                                        <h2>Location</h2>
                                                        <h3>Los Angeles</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="hello-park">
                                            <p>Completed my graduation in Gynaecologist Medicine from the well known and
                                                renowned institution of India – SARDAR PATEL MEDICAL COLLEGE, BARODA in
                                                2000-01, which was affiliated to M.S. University. I ranker in University
                                                exams from the same university from 1996-01.</p>
                                            <p>Worked as Professor and Head of the department ; Community medicine
                                                Department at Sterline Hospital, Rajkot, Gujarat from 2003-2015</p>
                                        </div>
                                        <div class="hello-park mb-2">
                                            <h5>Education</h5>
                                            <div class="table-responsive">
                                                <table class="table mb-0 border-0 custom-table profile-table">
                                                    <thead>
                                                    <th>Year</th>
                                                    <th>Degree</th>
                                                    <th>Institute</th>
                                                    <th>Result</th>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>2002-2005</td>
                                                        <td>M.D. of Medicine</td>
                                                        <td>University of Wyoming</td>
                                                        <td>
                                                            <button class="custom-badge status-green ">Distinction
                                                            </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>2005-2014</td>
                                                        <td>MBBS</td>
                                                        <td>Netherland Medical College</td>
                                                        <td>
                                                            <button class="custom-badge status-green ">Distinction
                                                            </button>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="hello-park mb-2">
                                            <h5>Experience</h5>
                                            <div class="table-responsive">
                                                <table class="table mb-0 border-0 custom-table profile-table">
                                                    <thead>
                                                    <th>Year</th>
                                                    <th>Position</th>
                                                    <th>Hospital</th>
                                                    <th>Feedback</th>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>2002-2005</td>
                                                        <td>Senior doctor</td>
                                                        <td>Midtown Medical Clinic</td>
                                                        <td>
                                                            <button class="custom-badge status-orange ">Good</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>2005-2014</td>
                                                        <td>Associate Prof.</td>
                                                        <td>Netherland Medical College</td>
                                                        <td>
                                                            <button class="custom-badge status-green ">Excellence
                                                            </button>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="hello-park">
                                            <h5>Conferences, Cources & Workshop Attended</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua.</p>
                                            <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                                deserunt mollit anim id est laborum.</p>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                                                accusantium doloremque laudantium, totam rem aperiam</p>
                                            <p class="mb-0">Ut enim ad minima veniam, quis nostrum exercitationem ullam
                                                corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
                                                Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse
                                                quam nihil molestiae consequatur</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="notification-box">
            <div class="msg-sidebar notifications msg-noti">
                <div class="topnav-dropdown-header">
                    <span>Messages</span>
                </div>
                <div class="drop-scroll msg-list-scroll" id="msg_list">
                    <ul class="list-box">
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">R</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Richard Miles </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item new-message">
                                    <div class="list-left">
                                        <span class="avatar">J</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">John Doe</span>
                                        <span class="message-time">1 Aug</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">T</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Tarah Shropshire </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">M</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Mike Litorus</span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">C</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Catherine Manseau </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">D</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Domenic Houston </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">B</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Buster Wigton </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">R</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Rolland Webber </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">C</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Claire Mapes </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">M</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Melita Faucher</span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">J</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Jeffery Lalor</span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">L</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Loren Gatlin</span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">T</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Tarah Shropshire</span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="topnav-dropdown-footer">
                    <a href="chat.html">See all messages</a>
                </div>
            </div>
        </div>
    </div>
    <div id="delete_patient" class="modal fade delete-modal" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body text-center">
                    <img src="/resources/assets/img/sent.png" alt="" width="50" height="46">
                    <h3>Are you sure want to delete this ?</h3>
                    <div class="m-t-20"><a href="#" class="btn btn-white" data-bs-dismiss="modal">Close</a>
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="sidebar-overlay" data-reff=""></div>

<script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="/resources/assets/js/jquery-3.6.1.min.js"></script>

<script src="/resources/assets/js/bootstrap.bundle.min.js"></script>

<script src="/resources/assets/js/feather.min.js"></script>

<script src="/resources/assets/js/jquery.slimscroll.js"></script>

<script src="/resources/assets/js/select2.min.js"></script>

<script src="/resources/assets/plugins/moment/moment.min.js"></script>
<script src="/resources/assets/js/bootstrap-datetimepicker.min.js"></script>

<script src="/resources/assets/js/app.js"></script>
</body>
</html>
