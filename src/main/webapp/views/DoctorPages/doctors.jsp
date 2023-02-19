<%--
  Created by IntelliJ IDEA.
  User: shakh
  Date: 19-Feb-23
  Time: 08:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/assets/img/favicon.png">
    <title>Preclinic - Medical & Hospital - Bootstrap 5 Admin Template</title>
    <link href="../icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/resources/assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="/resources/assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="/resources/assets/plugins/fontawesome/css/all.min.css">

    <link rel="stylesheet" href="/resources/assets/plugins/datatables/datatables.min.css">

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
                            <li><a class="active" href="doctors.jsp">Doctor List</a></li>
                            <li><a href="add-doctor.html">Add Doctor</a></li>
                            <li><a href="edit-doctor.jsp">Edit Doctor</a></li>
                            <li><a href="doctor-profile.jsp">Doctor Profile</a></li>
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
                            <li class="breadcrumb-item active">Doctors List</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="card card-table show-entire">
                        <div class="card-body">

                            <div class="page-table-header mb-2">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <div class="doctor-table-blk">
                                            <h3>Doctors List</h3>
                                            <div class="doctor-search-blk">
                                                <div class="top-nav-search table-search-blk">
                                                    <form>
                                                        <input type="text" class="form-control"
                                                               placeholder="Search here">
                                                        <a class="btn"><img
                                                                src="/resources/assets/img/icons/search-normal.svg"
                                                                alt=""></a>
                                                    </form>
                                                </div>
                                                <div class="add-group">
                                                    <a href="add-doctor.html"
                                                       class="btn btn-primary add-pluss ms-2"><img
                                                            src="/resources/assets/img/icons/plus.svg" alt=""></a>
                                                    <a href="javascript:;"
                                                       class="btn btn-primary doctor-refresh ms-2"><img
                                                            src="/resources/assets/img/icons/re-fresh.svg" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-auto text-end float-end ms-auto download-grp">
                                        <a href="javascript:;" class=" me-2"><img
                                                src="/resources/assets/img/icons/pdf-icon-01.svg" alt=""></a>
                                        <a href="javascript:;" class=" me-2"><img
                                                src="/resources/assets/img/icons/pdf-icon-02.svg" alt=""></a>
                                        <a href="javascript:;" class=" me-2"><img
                                                src="/resources/assets/img/icons/pdf-icon-03.svg" alt=""></a>
                                        <a href="javascript:;"><img src="/resources/assets/img/icons/pdf-icon-04.svg"
                                                                    alt=""></a>
                                    </div>
                                </div>
                            </div>

                            <div class="table-responsive">
                                <table class="table border-0 custom-table comman-table datatable mb-0">
                                    <thead>
                                    <tr>
                                        <th>
                                            <div class="form-check check-tables">
                                                <input class="form-check-input" type="checkbox" value="something">
                                            </div>
                                        </th>
                                        <th>Name</th>
                                        <th>Department</th>
                                        <th>Specialization</th>
                                        <th>Degree</th>
                                        <th>Mobile</th>
                                        <th>Email</th>
                                        <th>Joining Date</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <div class="form-check check-tables">
                                                <input class="form-check-input" type="checkbox" value="something">
                                            </div>
                                        </td>
                                        <td class="profile-image"><a href="profile.html"><img width="28" height="28"
                                                                                              src="/resources/assets/img/profiles/avatar-01.jpg"
                                                                                              class="rounded-circle m-r-5"
                                                                                              alt=""> Andrea Lalema</a>
                                        </td>
                                        <td>Otolaryngology</td>
                                        <td>Infertility</td>
                                        <td>MBBS, MS</td>
                                        <td><a href="javascript:;">+1 23 456890</a></td>
                                        <td><a href="../cdn-cgi/l/email-protection.html" class="__cf_email__"
                                               data-cfemail="94f1ecf5f9e4f8f1d4f1f9f5fdf8baf7fbf9">[email&#160;protected]</a>
                                        </td>
                                        <td>01.10.2022</td>
                                        <td class="text-end">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle"
                                                   data-bs-toggle="dropdown" aria-expanded="false"><i
                                                        class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="edit-doctor.jsp"><i
                                                            class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="#" data-bs-toggle="modal"
                                                       data-bs-target="#delete_patient"><i
                                                            class="fa fa-trash-alt m-r-5"></i> Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check check-tables">
                                                <input class="form-check-input" type="checkbox" value="something">
                                            </div>
                                        </td>
                                        <td class="profile-image"><a href="profile.html"><img width="28" height="28"
                                                                                              src="/resources/assets/img/profiles/avatar-02.jpg"
                                                                                              class="rounded-circle m-r-5"
                                                                                              alt=""> Dr.Smith
                                            Bruklin</a></td>
                                        <td>Urology</td>
                                        <td>Prostate</td>
                                        <td>MBBS, MS</td>
                                        <td><a href="javascript:;">+1 23 456890</a></td>
                                        <td><a href="../cdn-cgi/l/email-protection.html" class="__cf_email__"
                                               data-cfemail="5b3e233a362b373e1b3e363a323775383436">[email&#160;protected]</a>
                                        </td>
                                        <td>01.10.2022</td>
                                        <td class="text-end">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle"
                                                   data-bs-toggle="dropdown" aria-expanded="false"><i
                                                        class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="edit-doctor.jsp"><i
                                                            class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="#" data-bs-toggle="modal"
                                                       data-bs-target="#delete_patient"><i
                                                            class="fa fa-trash-alt m-r-5"></i> Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check check-tables">
                                                <input class="form-check-input" type="checkbox" value="something">
                                            </div>
                                        </td>
                                        <td class="profile-image"><a href="profile.html"><img width="28" height="28"
                                                                                              src="/resources/assets/img/profiles/avatar-03.jpg"
                                                                                              class="rounded-circle m-r-5"
                                                                                              alt=""> Dr.William Stephin</a>
                                        </td>
                                        <td>Radiology</td>
                                        <td>Cancer</td>
                                        <td>MBBS, MS</td>
                                        <td><a href="javascript:;">+1 23 456890</a></td>
                                        <td><a href="../cdn-cgi/l/email-protection.html" class="__cf_email__"
                                               data-cfemail="aecbd6cfc3dec2cbeecbc3cfc7c280cdc1c3">[email&#160;protected]</a>
                                        </td>
                                        <td>01.10.2022</td>
                                        <td class="text-end">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle"
                                                   data-bs-toggle="dropdown" aria-expanded="false"><i
                                                        class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="edit-doctor.jsp"><i
                                                            class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="#" data-bs-toggle="modal"
                                                       data-bs-target="#delete_patient"><i
                                                            class="fa fa-trash-alt m-r-5"></i> Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check check-tables">
                                                <input class="form-check-input" type="checkbox" value="something">
                                            </div>
                                        </td>
                                        <td class="profile-image"><a href="profile.html"><img width="28" height="28"
                                                                                              src="/resources/assets/img/profiles/avatar-04.jpg"
                                                                                              class="rounded-circle m-r-5"
                                                                                              alt=""> Bernardo James</a>
                                        </td>
                                        <td>Dentist</td>
                                        <td>Prostate</td>
                                        <td>MBBS, MS</td>
                                        <td><a href="javascript:;">+1 23 456890</a></td>
                                        <td><a href="../cdn-cgi/l/email-protection.html" class="__cf_email__"
                                               data-cfemail="c7a2bfa6aab7aba287a2aaa6aeabe9a4a8aa">[email&#160;protected]</a>
                                        </td>
                                        <td>01.10.2022</td>
                                        <td class="text-end">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle"
                                                   data-bs-toggle="dropdown" aria-expanded="false"><i
                                                        class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="edit-doctor.jsp"><i
                                                            class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="#" data-bs-toggle="modal"
                                                       data-bs-target="#delete_patient"><i
                                                            class="fa fa-trash-alt m-r-5"></i> Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check check-tables">
                                                <input class="form-check-input" type="checkbox" value="something">
                                            </div>
                                        </td>
                                        <td class="profile-image"><a href="profile.html"><img width="28" height="28"
                                                                                              src="/resources/assets/img/profiles/avatar-06.jpg"
                                                                                              class="rounded-circle m-r-5"
                                                                                              alt="">Cristina Groves</a>
                                        </td>
                                        <td>Gynocolgy</td>
                                        <td>Prostate</td>
                                        <td>MBBS, MS</td>
                                        <td><a href="javascript:;">+1 23 456890</a></td>
                                        <td><a href="../cdn-cgi/l/email-protection.html" class="__cf_email__"
                                               data-cfemail="fb9e839a968b979ebb9e969a9297d5989496">[email&#160;protected]</a>
                                        </td>
                                        <td>01.10.2022</td>
                                        <td class="text-end">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle"
                                                   data-bs-toggle="dropdown" aria-expanded="false"><i
                                                        class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="edit-doctor.jsp"><i
                                                            class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="#" data-bs-toggle="modal"
                                                       data-bs-target="#delete_patient"><i
                                                            class="fa fa-trash-alt m-r-5"></i> Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check check-tables">
                                                <input class="form-check-input" type="checkbox" value="something">
                                            </div>
                                        </td>
                                        <td class="profile-image"><a href="profile.html"><img width="28" height="28"
                                                                                              src="/resources/assets/img/profiles/avatar-05.jpg"
                                                                                              class="rounded-circle m-r-5"
                                                                                              alt=""> Mark Hay Smith</a>
                                        </td>
                                        <td>Gynocolgy</td>
                                        <td>Prostate</td>
                                        <td>MBBS, MS</td>
                                        <td><a href="javascript:;">+1 23 456890</a></td>
                                        <td><a href="../cdn-cgi/l/email-protection.html" class="__cf_email__"
                                               data-cfemail="117469707c617d7451747c70787d3f727e7c">[email&#160;protected]</a>
                                        </td>
                                        <td>01.10.2022</td>
                                        <td class="text-end">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle"
                                                   data-bs-toggle="dropdown" aria-expanded="false"><i
                                                        class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="edit-doctor.jsp"><i
                                                            class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="#" data-bs-toggle="modal"
                                                       data-bs-target="#delete_patient"><i
                                                            class="fa fa-trash-alt m-r-5"></i> Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check check-tables">
                                                <input class="form-check-input" type="checkbox" value="something">
                                            </div>
                                        </td>
                                        <td class="profile-image"><a href="profile.html"><img width="28" height="28"
                                                                                              src="/resources/assets/img/profiles/avatar-01.jpg"
                                                                                              class="rounded-circle m-r-5"
                                                                                              alt=""> Andrea Lalema</a>
                                        </td>
                                        <td>Otolaryngology</td>
                                        <td>Infertility</td>
                                        <td>MBBS, MS</td>
                                        <td><a href="javascript:;">+1 23 456890</a></td>
                                        <td><a href="../cdn-cgi/l/email-protection.html" class="__cf_email__"
                                               data-cfemail="aecbd6cfc3dec2cbeecbc3cfc7c280cdc1c3">[email&#160;protected]</a>
                                        </td>
                                        <td>01.10.2022</td>
                                        <td class="text-end">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle"
                                                   data-bs-toggle="dropdown" aria-expanded="false"><i
                                                        class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="edit-doctor.jsp"><i
                                                            class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="#" data-bs-toggle="modal"
                                                       data-bs-target="#delete_patient"><i
                                                            class="fa fa-trash-alt m-r-5"></i> Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check check-tables">
                                                <input class="form-check-input" type="checkbox" value="something">
                                            </div>
                                        </td>
                                        <td class="profile-image"><a href="profile.html"><img width="28" height="28"
                                                                                              src="/resources/assets/img/profiles/avatar-02.jpg"
                                                                                              class="rounded-circle m-r-5"
                                                                                              alt=""> Dr.Smith
                                            Bruklin</a></td>
                                        <td>Urology</td>
                                        <td>Prostate</td>
                                        <td>MBBS, MS</td>
                                        <td><a href="javascript:;">+1 23 456890</a></td>
                                        <td><a href="../cdn-cgi/l/email-protection.html" class="__cf_email__"
                                               data-cfemail="fa9f829b978a969fba9f979b9396d4999597">[email&#160;protected]</a>
                                        </td>
                                        <td>01.10.2022</td>
                                        <td class="text-end">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle"
                                                   data-bs-toggle="dropdown" aria-expanded="false"><i
                                                        class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="edit-doctor.jsp"><i
                                                            class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="#" data-bs-toggle="modal"
                                                       data-bs-target="#delete_patient"><i
                                                            class="fa fa-trash-alt m-r-5"></i> Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
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

<script src="/resources/assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/resources/assets/plugins/datatables/datatables.min.js"></script>

<script src="/resources/assets/js/app.js"></script>
</body>
</html>
