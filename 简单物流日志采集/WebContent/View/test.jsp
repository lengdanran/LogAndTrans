<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Beid - Responsive HTML5 Template</title>
    
    <!-- CSS -->
    <link href="assets/css/fonts/fontawesome/all.min.css" rel="stylesheet">
    <link href="assets/css/fonts/beid.css" rel="stylesheet">
    
    <link href="assets/css/main.css" rel="stylesheet">
    <link href="assets/css/styles.css" rel="stylesheet">

    <!-- JQVMAP -->
    <link href="assets/plugins/jqvmap/jqvmap.min.css" rel="stylesheet">

    <!-- dateRangePicker -->
    <link href="assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="assets/img/apple-touch-icon.png">
    <link rel="icon" href="assets/img/favicon.png">

    <!-- Fonts -->
    <link href="assets/fonts/inter/inter.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="body">

    <!-- header -->
    <header class="main-header">
      <!-- nav -->
      <nav class="main-navbar navbar navbar-expand-lg navbar-light shadow-2">
        <div class="lnav-box d-flex">
          <div class="logo-wrapper px-3 d-none d-md-flex">
            <img src="assets/img/logo.png" alt="Logo">
          </div>
          <div class="sidebar-toggler-wrapper ml-auto">
            <button class="p-collapsing-sidebar-toggler sidebar-toggler-secondary transition rounded-circle" data-collapsing="partially" data-collapsing-target="#adminNav" type="button">
              <span class="icon-menu-options"></span>
            </button>
          </div>
        </div>
        <div class="d-none d-lg-block ml-0 mr-auto pl-4">
          <ul class="nav navbar-nav flex-row">
            <li class="nav-item dropdown">
              <a class="nav-link d-inline-flex align-items-center h-100 text-capitalize ls-normal small-1" id="dropdownDashboards" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="fw-400"><i class="far fa-folder mr-1"></i><span class="d-none d-xl-inline">Dashboards</span></span>
              </a>
              <div class="dropdown-menu dropdown-menu-left shadow-1 py-3 position-absolute mt-1" aria-labelledby="dropdownDashboards">
                <a class="dropdown-item" href="index-dashboard.html">Default</a>
                <a class="dropdown-item" href="index-eCommerce.html">E-Commerce</a>
                <a class="dropdown-item" href="#">Charts</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link d-inline-flex align-items-center h-100 text-capitalize ls-normal small-1" id="dropdownEcommerce" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="fw-400"><i class="icon-cart mr-1"></i><span class="d-none d-xl-inline">E-Commerce</span></span>
              </a>
              <div class="dropdown-menu dropdown-menu-left shadow-1 py-3 position-absolute mt-1" aria-labelledby="dropdownEcommerce">
                <a class="dropdown-item" href="shop.html">Shop</a>
                <a class="dropdown-item" href="product-details.html">Product details</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link d-inline-flex align-items-center h-100 text-capitalize ls-normal small-1" href="email.html">
                <span class="fw-400"><i class="icon-closed-envelope-email mr-1"></i><span class="d-none d-xl-inline">Email</span></span>
              </a>
            </li>
          </ul>
        </div>
        <div class="pr-6">
          <ul class="nav sec-nav navbar-nav flex-row">
            <li class="nav-item dropdown">
              <a class="nav-link text-capitalize d-none d-md-inline-flex align-items-center h-100 small-2" href="#" id="dropdownLang_02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img class="img-lang mr-3" src="assets/img/icons/flag/usa.svg" alt="USA">
                <div class="lh-1 fw-400">
                  English
                </div>
              </a>
              <div class="dropdown-menu dropdown-menu-right shadow-1 py-3 position-absolute mt-1" aria-labelledby="dropdownAdmin">
                <a class="dropdown-item d-flex align-items-center py-1" href="#">
                  <img class="img-lang mr-3" src="assets/img/icons/flag/usa.svg" alt="USA">
                  English
                </a>
                <a class="dropdown-item d-flex align-items-center py-1" href="#">
                  <img class="img-lang mr-3" src="assets/img/icons/flag/ger.svg" alt="GR">
                  German
                </a>
                <a class="dropdown-item d-flex align-items-center py-1" href="#">
                  <img class="img-lang mr-3" src="assets/img/icons/flag/fr.svg" alt="FR">
                  France
                </a>
                <a class="dropdown-item d-flex align-items-center py-1" href="#">
                  <img class="img-lang mr-3" src="assets/img/icons/flag/cn.svg" alt="CN">
                  Chinese
                </a>
              </div>
            </li>
            <li class="nav-item">
              <a href="#" data-toggle="offcanvas" data-target="#offcanvas-search" class="nav-link lead-2 pl-2 pl-md-3"><span class="icon-search"></span></a>
            </li>
            <li class="notf-item nav-item p-static p-md-relative dropdown">
              <a class="notf-link nav-link d-inline-flex align-items-center h-100 small-1 pl-2 pl-md-3" href="#" id="dropdownAdmin" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="p-relative d-inline-flex">
                  <span class="badge badge-counter badge-warning l-1">8</span><span class="icon-bell lead-2"></span>
                </span>
              </a>
              <div class="dropdown-menu dropdown-menu-lg dropdown-menu-sm-center dropdown-menu-right dropdown-menu-wh shadow-1 bc-t position-absolute mt-1" aria-labelledby="dropdownAdmin">
                <div class="dropdown-inner rounded-2">
                  <div class="warning-gradient px-4 py-3 text-center">
                    <h5 class="mb-0">Notifications (+5)</h5>
                  </div>
                  <div class="pl-4 pr-3 py-5">
                    <div class="dropdown-scrollbar" data-scrollbar="dropdown">
                      <ul class="list-unstyled">
                        <li class="pb-4">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning lead-2"><i class="fas fa-box"></i></div>
                            <div class="px-4">
                              <span class="text-warning lead-1 lh-2 fw-600 d-block">New Message</span>
                              <span>New message?</span>
                            </div>
                            <div class="text-nowrap ml-auto pr-4">
                              2 hours ago
                            </div>
                          </div>
                        </li>
                        <li class="pb-4">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning lead-2"><i class="fas fa-box"></i></div>
                            <div class="px-4">
                              <span class="text-warning lead-1 lh-2 fw-600 d-block">New Message</span>
                              <span>New message?</span>
                            </div>
                            <div class="text-nowrap ml-auto pr-4">
                              3 hours ago
                            </div>
                          </div>
                        </li>
                        <li class="pb-4">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning lead-2"><i class="fas fa-box"></i></div>
                            <div class="px-4">
                              <span class="text-warning lead-1 lh-2 fw-600 d-block">New Message</span>
                              <span>New message?</span>
                            </div>
                            <div class="text-nowrap ml-auto pr-4">
                              6 hours ago
                            </div>
                          </div>
                        </li>
                        <li class="pb-4">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning lead-2"><i class="fas fa-box"></i></div>
                            <div class="px-4">
                              <span class="text-warning lead-1 lh-2 fw-600 d-block">New Message</span>
                              <span>New message?</span>
                            </div>
                            <div class="text-nowrap ml-auto pr-4">
                              6 hours ago
                            </div>
                          </div>
                        </li>
                        <li class="pb-4">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning lead-2"><i class="fas fa-box"></i></div>
                            <div class="px-4">
                              <span class="text-warning lead-1 lh-2 fw-600 d-block">New Message</span>
                              <span>New message?</span>
                            </div>
                            <div class="text-nowrap ml-auto pr-4">
                              6 hours ago
                            </div>
                          </div>
                        </li>
                        <li class="pb-4">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning lead-2"><i class="fas fa-box"></i></div>
                            <div class="px-4">
                              <span class="text-warning lead-1 lh-2 fw-600 d-block">New Message</span>
                              <span>New message?</span>
                            </div>
                            <div class="text-nowrap ml-auto pr-4">
                              7 hours ago
                            </div>
                          </div>
                        </li>
                        <li class="pb-4">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning lead-2"><i class="fas fa-box"></i></div>
                            <div class="px-4">
                              <span class="text-warning lead-1 lh-2 fw-600 d-block">New Message</span>
                              <span>New message?</span>
                            </div>
                            <div class="text-nowrap ml-auto pr-4">
                              7 hours ago
                            </div>
                          </div>
                        </li>
                        <li class="pb-4">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning lead-2"><i class="fas fa-box"></i></div>
                            <div class="px-4">
                              <span class="text-warning lead-1 lh-2 fw-600 d-block">New Message</span>
                              <span>New message?</span>
                            </div>
                            <div class="text-nowrap ml-auto pr-4">
                              8 hours ago
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="dropdown-load-more text-center px-4 py-2">
                    <a href="#">load more</a>
                  </div>
                </div>
              </div>
            </li>
            <li class="notf-item nav-item p-static p-md-relative dropdown">
              <a class="notf-link nav-link d-inline-flex align-items-center h-100 small-1 pl-2 pl-md-3" href="#" id="dropdownCart" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="p-relative d-inline-flex">
                  <span class="badge badge-counter badge-warning l-1">7</span><span class="icon-cart lead-2"></span>
                </span>
              </a>
              <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right dropdown-menu-sm-center dropdown-menu-wh shadow-1 bc-t position-absolute mt-1" aria-labelledby="dropdownCart">
                <div class="dropdown-inner rounded-2">
                  <div class="warning-gradient px-4 py-3 text-center">
                    <h5 class="mb-0">Cart (+3)</h5>
                  </div>
                  <div class="pl-4 pr-3 py-5">
                    <div class="dropdown-scrollbar" data-scrollbar="dropdown">
                      <ul class="cart_list_hr list-unstyled">
                        <li class="cart_list_item_hr">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning cart-img lead-2">
                              <img src="assets/img/eCommerce/eCe-01.jpg" class="" alt="Smart Watch">
                            </div>
                            <div class="flex-1 px-4">
                              <div class="d-flex align-items-center">
                                <div class="pr-4">
                                  <span class="text-warning lead-1 lh-2 fw-600 d-block">Apple Watch OS</span>
                                  <div class="cart-nav-desc">Learn small ways to make a big difference to.</div>
                                </div>
                                <div class="px-3 ml-auto">
                                  <a href="#" class="text-nowrap text-warning"><i class="fas fa-trash"></i></a>
                                </div>
                              </div>
                              <div class="d-flex">
                                <div>x1</div>
                                <div class="ml-auto">$1000</div>
                              </div>
                            </div>
                          </div>
                        </li>
                        <li class="cart_list_item_hr">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning cart-img lead-2">
                              <img src="assets/img/eCommerce/eCe-02.jpg" class="" alt="Smart Watch">
                            </div>
                            <div class="flex-1 px-4">
                              <div class="d-flex align-items-center">
                                <div class="pr-4">
                                  <span class="text-warning lead-1 lh-2 fw-600 d-block">Apple iMac</span>
                                  <div class="cart-nav-desc">Learn small ways to make a big difference to.</div>
                                </div>
                                <div class="px-3 ml-auto">
                                  <a href="#" class="text-nowrap text-warning"><i class="fas fa-trash"></i></a>
                                </div>
                              </div>
                              <div class="d-flex">
                                <div>x1</div>
                                <div class="ml-auto">$1000</div>
                              </div>
                            </div>
                          </div>
                        </li>
                        <li class="cart_list_item_hr">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning cart-img lead-2">
                              <img src="assets/img/eCommerce/eCe-03.jpg" class="" alt="Smart Watch">
                            </div>
                            <div class="flex-1 px-4">
                              <div class="d-flex align-items-center">
                                <div class="pr-4">
                                  <span class="text-warning lead-1 lh-2 fw-600 d-block">Apple Watch OS</span>
                                  <div class="cart-nav-desc">Learn small ways to make a big difference to.</div>
                                </div>
                                <div class="px-3 ml-auto">
                                  <a href="#" class="text-nowrap text-warning"><i class="fas fa-trash"></i></a>
                                </div>
                              </div>
                              <div class="d-flex">
                                <div>x1</div>
                                <div class="ml-auto">$1000</div>
                              </div>
                            </div>
                          </div>
                        </li>
                        <li class="cart_list_item_hr">
                          <div class="d-flex align-items-center text-white">
                            <div class="text-warning cart-img lead-2">
                              <img src="assets/img/eCommerce/eCe-04.jpg" class="" alt="Smart Watch">
                            </div>
                            <div class="flex-1 px-4">
                              <div class="d-flex align-items-center">
                                <div class="pr-4">
                                  <span class="text-warning lead-1 lh-2 fw-600 d-block">Apple Watch OS</span>
                                  <div class="cart-nav-desc">Learn small ways to make a big difference to.</div>
                                </div>
                                <div class="px-3 ml-auto">
                                  <a href="#" class="text-nowrap text-warning"><i class="fas fa-trash"></i></a>
                                </div>
                              </div>
                              <div class="d-flex">
                                <div>x1</div>
                                <div class="ml-auto">$1000</div>
                              </div>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="dropdown-load-more text-center px-4 py-2">
                    <a href="#"><span class="icon-cart mr-1"></span> View Cart</a>
                  </div>
                </div>
              </div>
            </li>
            <li class="userTH-item nav-item dropdown">
              <a class="userTH-link nav-link d-inline-flex align-items-center h-100 small-1 pl-2 pl-md-3" href="#" id="dropdownAdmin_01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="icon-options lead-2"></span></a>
              <div class="dropdown-menu dropdown-menu-right shadow-1 py-3 position-absolute mt-1" aria-labelledby="dropdownAdmin">
                <a class="dropdown-item" href="#">Dashboards</a>
                <a class="dropdown-item" href="#">UI</a>
                <a class="dropdown-item" href="#">Charts</a>
              </div>
            </li>
            <li class="user-item nav-item dropdown">
              <a class="user-link nav-link d-inline-flex align-items-center h-100 small-1 pl-1 pl-sm-3 pr-0" href="#" id="dropdownAdmin_02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img class="user-avatar rounded-circle mr-sm-3" src="assets/img/avatar/1.jpg" alt="Avatar">
                <div class="d-none d-sm-block lh-1">
                  <div class="lh-5">Albert Scott</div>
                  <span class="small-3"><i class="fas fa-circle text-warning small-5"></i> Online</span>
                </div>
              </a>
              <div class="dropdown-menu dropdown-menu-right shadow-1 py-3 position-absolute mt-2" aria-labelledby="dropdownAdmin">
                <a class="dropdown-item" href="#"><span class="icon-messenger-user-avatar mr-2"></span>My Profile</a>
                <a class="dropdown-item" href="#"><span class="icon-closed-envelope-email mr-2"></span>Messages</a>
                <a class="dropdown-item" href="#"><span class="icon-options-gear mr-2"></span>Settings</a>
                <a class="dropdown-item" href="#"><span class="icon-power-on-buton mr-2"></span>Logout</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>
      <!-- /.nav -->
    </header>
    <!-- /.header -->

    <!-- main -->
    <main>
      <!-- sidebar -->
      <nav id="adminNav" class="main-sidebar p-collapsing-sidebar sidebar-fixed sidebar-left d-flex flex-column">
        <div class="main-sidebar-inner" data-scrollbar="sidebar">
          <ul class="sidebar-nav sidebar-nav-light-hover list-unstyled text-unset small-3 fw-600 content-list">
            <li class="nav-item text-light transition active">
              <a href="" aria-expanded="false" data-toggle="collapse" class="sbr-collapse nav-link nav-link-border collapsed collapser collapser-active">
                <i class="fas fa-desktop"></i> <span class="p-collapsing-title">Dashboard</span>
              </a>
              <div class="collapse nav-collapse collapse show">
                <ul class="list-unstyled">
                  <li class="nav-item active">
                    <a href="index-dashboard.html" class="p-collapsing-title nav-link">
                      <span>Default</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="index-eCommerce.html" class="p-collapsing-title nav-link">
                      <span>E-Commerce</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="index-analytics.html" class="p-collapsing-title nav-link">
                      <span>Analytics</span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="nav-item text-light transition">
              <a href="" aria-expanded="false" data-toggle="collapse" class="sbr-collapse nav-link nav-link-border collapser collapser-active open">
                <i class="far fa-sticky-note"></i> <span class="p-collapsing-title">App pages</span>
              </a>
              <div class="collapse nav-collapse collapse show">
                <ul class="list-unstyled">
                  <li class="nav-item">
                    <a href="email.html" class="p-collapsing-title nav-link">
                      <span>Email</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="chat.html" class="p-collapsing-title nav-link">
                      <span>Chat</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="profile.html" class="p-collapsing-title nav-link">
                      <span>Profile</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="login.html" class="p-collapsing-title nav-link">
                      <span>Login</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="register.html" class="p-collapsing-title nav-link">
                      <span>Register</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="reset-password.html" class="p-collapsing-title nav-link">
                      <span>Reset-password</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="forgot-password.html" class="p-collapsing-title nav-link">
                      <span>Forgot-password</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="lock-screen.html" class="p-collapsing-title nav-link">
                      <span>Lock-screen</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="404.html" class="p-collapsing-title nav-link">
                      <span>404 Error</span>
                    </a>
                  </li>
                </ul>
              </div>  
            </li>
            <li class="nav-item text-light transition">
              <a href="" aria-expanded="false" data-toggle="collapse" class="sbr-collapse nav-link nav-link-border collapser collapser-active open">
                <i class="fas fa-shopping-cart"></i> <span class="p-collapsing-title">E-Commerce</span>
              </a>
              <div class="collapse nav-collapse collapse show">
                <ul class="list-unstyled">
                  <li class="nav-item">
                    <a href="shop.html" class="p-collapsing-title nav-link">
                      <span>Shop</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="product-details.html" class="p-collapsing-title nav-link">
                      <span>Product details</span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="nav-item text-light transition">
              <a href="" aria-expanded="false" data-toggle="collapse" class="sbr-collapse nav-link nav-link-border collapser collapser-active open">
                <i class="far fa-clone"></i> <span class="p-collapsing-title">Form</span>
              </a>
              <div class="collapse nav-collapse collapse show">
                <ul class="list-unstyled">
                  <li class="nav-item">
                    <a href="form-controls.html" class="p-collapsing-title nav-link">
                      <span>Form Controls</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="input-group.html" class="p-collapsing-title nav-link">
                      <span>Input group</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="checkbox.html" class="p-collapsing-title nav-link">
                      <span>Checkbox</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="switch.html" class="p-collapsing-title nav-link">
                      <span>Switch</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="range.html" class="p-collapsing-title nav-link">
                      <span>Range</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="file-browser.html" class="p-collapsing-title nav-link">
                      <span>File Browser</span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="nav-item text-light transition">
              <a href="" aria-expanded="false" data-toggle="collapse" class="sbr-collapse nav-link nav-link-border collapser collapser-active open">
                <i class="fas fa-cube"></i> <span class="p-collapsing-title">Components</span>
              </a>
              <div class="collapse nav-collapse collapse show">
                <ul class="list-unstyled">
                  <li class="nav-item">
                    <a href="accordion.html" class="p-collapsing-title nav-link">
                      <span>Accordion</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="alerts.html" class="p-collapsing-title nav-link">
                      <span>Alerts</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="breadcrumb.html" class="p-collapsing-title nav-link">
                      <span>Breadcrumb</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="buttons.html" class="p-collapsing-title nav-link">
                      <span>Buttons</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="card.html" class="p-collapsing-title nav-link">
                      <span>Card</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="tabs.html" class="p-collapsing-title nav-link">
                      <span>Tabs</span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="nav-item text-light transition">
              <a href="" aria-expanded="false" data-toggle="collapse" class="sbr-collapse nav-link nav-link-border collapser collapser-active open">
                <i class="fas fa-chart-bar"></i> <span class="p-collapsing-title">Charts & Maps</span>
              </a>
              <div class="collapse nav-collapse collapse show">
                <ul class="list-unstyled">
                  <li class="nav-item">
                    <a href="charts.html" class="p-collapsing-title nav-link">
                      <span>Charts</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="google-map.html" class="p-collapsing-title nav-link">
                      <span>Google Map</span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      </nav>
      <!-- /.sidebar -->

      <!-- main content -->
      <div class="main-container">

        <div class="overflow-hidden">

          <div id="dashboard">

            <!-- content-header -->
            <div class="row flex-wrap align-items-center px-6 py-5">
              <div class="col">
                <div class="text-light pb-5 pb-lg-0 mr-auto">
                  <h2 class="fw-100 mb-0">Dashboard</h2>
                  <p class="mb-0">Summary of your App</p>
                </div>
              </div>
              <div class="col-12 col-lg-auto">
                <div class="d-flex flex-wrap">
                  <div class="w-100 w-sm-auto reportrange-btn d-flex align-items-center warning-gradient rounded-4 c-pointer">
                    <div class="d-flex align-items-center justify-content-center w-100">
                      <div id="reportrange" class="py-2 px-6">
                        <span></span>&nbsp;
                        <i class="fas fa-calendar-alt"></i>
                      </div>
                    </div>
                  </div>
                  <a href="#" class="mt-4 mt-sm-0 ml-sm-4 reportrange-btn btn btn-sm btn-circle warning-gradient lead-1 text-secondary">
                    <span class="icon-plus mr--1"></span>
                  </a>
                </div>
              </div>
            </div>
            <!-- /.content-header -->

            <div class="container-fluid p-0">

              <!-- panel-card -->
              <div class="card-row row no-gutters">
                <div class="card-item col-lg-6 col-xl-3">
                  <div class="main-card card text-light flex-wrap align-items-center h-100 shadow-1">
                    <div class="flex-1">
                      <span>Total Sales</span>
                      <h3 class="mb-0">$ 200.00 </h3>
                      <span class="small"><span class="text-success">3.00%</span> (30 days)</span>
                    </div>
                    <div class="card-icon">
                      <div class="text-warning">
                        <span class="fas fa-dollar-sign"></span>
                      </div>
                    </div>
                    <div class="progress w-100 h-5 mt-4 mb-2">
                      <div class="progress-bar bg-gradient-progress-warning" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card-item col-lg-6 col-xl-3">
                  <div class="main-card card text-light flex-wrap align-items-center h-100 shadow-1">
                    <div class="flex-1">
                      <span>Number Of Clients</span>
                      <h3 class="mb-0">527K</h3>
                      <span class="small"><span class="text-success">3.00%</span> (30 days)</span>
                    </div>
                    <div class="card-icon">
                      <div class="text-warning">
                        <span class="far fa-user"></span>
                      </div>
                    </div>
                    <div class="progress w-100 h-5 mt-4 mb-2">
                      <div class="progress-bar bg-gradient-progress-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card-item col-lg-6 col-xl-3">
                  <div class="main-card card text-light flex-wrap align-items-center h-100 shadow-1">
                    <div class="flex-1">
                      <span>Purchases</span>
                      <h3 class="mb-0">1028</h3>
                      <span class="small"><span class="text-success">47.00%</span> (30 days)</span>
                    </div>
                    <div class="card-icon">
                      <div class="text-warning">
                        <span class="fas fa-wallet"></span>
                      </div>
                    </div>
                    <div class="progress w-100 h-5 mt-4 mb-2">
                      <div class="progress-bar bg-gradient-progress-warning" role="progressbar" style="width: 68%" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card-item col-lg-6 col-xl-3">
                  <div class="main-card card text-light flex-wrap align-items-center h-100 shadow-1">
                    <div class="flex-1">
                      <span>Unique Visitors</span>
                      <h3 class="mb-0">24,300</h3>
                      <span class="small"><span class="text-success">3.00%</span> (30 days)</span>
                    </div>
                    <div class="card-icon">
                      <div class="text-warning">
                        <span class="far fa-eye"></span>
                      </div>
                    </div>
                    <div class="progress w-100 h-5 mt-4 mb-2">
                      <div class="progress-bar bg-gradient-progress-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.panel-card -->

              <!-- panel-status -->
              <div class="panel-row row no-gutters">
                <div class="panel-col col-lp-6 panel-pt-col">
                  <!-- panel -->
                  <div class="panel panel-pt">
                    <div class="panel-row row no-gutters">

                      <div class="panel-col col-xl-6">
                        <!-- welcome panel -->
                        <div class="panel">
                          <header class="panel-header primary-gradient">
                            <div class="panel-user w-100">
                              <div>
                                <img class="panel-avatar rounded-circle" src="assets/img/avatar/1.jpg" alt="Avatar">
                              </div>
                              <div class="ml-4 lh-1">
                                <span class="d-block small-3 fw-400 text-uppercase mb-1">Welcome</span>
                                <h6 class="mb-0">Albert Scott</h6>
                              </div>
                              <div class="ml-auto">
                                <div class="panel-profile">
                                  <div class="panel-profile-item panel-secondary-icon"><a href="#"><i class="fas fa-user-alt"></i></a></div>
                                  <div class="panel-profile-item panel-secondary-icon"><a href="#"><i class="far fa-comment"></i></a></div>
                                  <div class="panel-profile-item panel-secondary-icon"><a href="#"><i class="fas fa-cog"></i></a></div>
                                </div>
                              </div>
                            </div>
                          </header>
                          <div class="panel-body">
                            <div class="panel-user-stat panel-list my-4">
                              <!-- profit -->
                              <div class="panel-stat-item panel-list-item">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="lead-4 text-warning">
                                          <img src="assets/img/icons/profit.svg" alt="profit" class="panel-icon">
                                        </span>
                                      </div>
                                      <div class="pl-3 lh-1">
                                        <span class="d-block lead-2 mb-2">52,020 $</span>
                                        <span class="small">Sales this month</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="CJSA-wrapper CJSA-grid p-relative w-50">
                                    <canvas id="chart-sm-01" data-chart="animated" height="49"></canvas>
                                  </div>
                                </div>
                              </div>
                              <!-- /.profit -->
                              <!-- delivered -->
                              <div class="panel-stat-item panel-list-item">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="lead-4 text-primary">
                                          <img src="assets/img/icons/outbox.svg" alt="outbox" class="panel-icon">
                                        </span>
                                      </div>
                                      <div class="pl-3 lh-1">
                                        <span class="d-block lead-2 mb-2">12,742</span>
                                        <span class="small">Successfully delivered</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="CJSA-wrapper CJSA-grid p-relative w-50">
                                    <canvas id="chart-sm-02" data-chart="animated" height="49"></canvas>
                                  </div>
                                </div>
                              </div>
                              <!-- /.delivered -->
                              <!-- cart -->
                              <div class="panel-stat-item panel-list-item">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="lead-4 text-danger">
                                          <img src="assets/img/icons/cart.svg" alt="cart" class="panel-icon">
                                        </span>
                                      </div>
                                      <div class="pl-3 lh-1">
                                        <span class="d-block lead-2 mb-2">8,317</span>
                                        <span class="small">Low stock</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="CJSA-wrapper CJSA-grid p-relative w-50">
                                    <canvas id="chart-sm-03" data-chart="animated" height="49"></canvas>
                                  </div>
                                </div>
                              </div>
                              <!-- /.cart -->
                              <!-- support -->
                              <div class="panel-stat-item panel-list-item">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="lead-4 text-success">
                                            <img src="assets/img/icons/headset.svg" alt="headset" class="panel-icon">
                                        </span>
                                      </div>
                                      <div class="pl-3 lh-1">
                                        <span class="d-block lead-2 mb-2">12,210</span>
                                        <span class="small">Support</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="CJSA-wrapper CJSA-grid p-relative w-50">
                                    <canvas id="chart-sm-04" data-chart="animated" height="49"></canvas>
                                  </div>
                                </div>
                              </div>
                              <!-- /.support -->
                            </div>
                          </div>
                        </div>
                        <!-- /.welcome panel -->
                        <!-- settings -->
                        <div class="panel">
                          <header class="panel-header">
                            <div class="panel-user w-100">
                              <h6 class="fw-200 lh-1 text-uppercase mb-0">Settings</h6>
                              <div class="ml-auto">
                                <a href="#" class="d-flex align-items-center justify-content-center">
                                  <span class="lead-3 text-warning icon-options-gear"></span>
                                </a>
                              </div>
                            </div>
                          </header>
                          <div class="panel-body">
                            <div class="panel-user-stat panel-list">
                              <!-- time -->
                              <div class="panel-stat-item mb-4">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="text-uppercase fw-500 o-90"><span class="icon-circular-wall-clock text-warning mr-2"></span>Time</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div>
                                    <span>10:00am - 1:00pm</span>
                                  </div>
                                </div>
                              </div>
                              <!-- /.time -->
                              <!-- date -->
                              <div class="panel-stat-item mb-4">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="text-uppercase fw-500 o-90"><span class="icon-office-monthly-calendar text-warning mr-2"></span>Date</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div>
                                    <span>March 27th, 2019</span>
                                  </div>
                                </div>
                              </div>
                              <!-- /.date -->
                              <!-- security -->
                              <div class="panel-stat-item mb-4">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="text-uppercase fw-500 o-90"><span class="icon-open-padlock text-warning mr-2"></span>Security</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div>
                                    <div class="custom-switch custom-switch-outline">
                                      <input type="checkbox" class="custom-switch-input" id="defaultSwitchOutline1" checked="">
                                      <label class="custom-switch-label" for="defaultSwitchOutline1"></label>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- /.security -->
                              <!-- notifications -->
                              <div class="panel-stat-item mb-4">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="text-uppercase fw-500 o-90"><span class="icon-bell text-warning mr-2"></span>Notifications</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div>
                                    <div class="custom-switch custom-switch-outline">
                                      <input type="checkbox" class="custom-switch-input" id="defaultSwitchOutline_nn">
                                      <label class="custom-switch-label" for="defaultSwitchOutline_nn"></label>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- /.notifications -->
                              <!-- location -->
                              <div class="panel-stat-item mb-4">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="text-uppercase fw-500 o-90"><span class="icon-pirate-treasure-map text-warning mr-2"></span>Location</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div>
                                    <span>Glamorgan St, Alliance OH</span>
                                  </div>
                                </div>
                              </div>
                              <!-- /.location -->
                              <!-- team members -->
                              <div class="panel-stat-item mb-4">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="text-uppercase fw-500 o-90"><span class="icon-messenger-user-avatar text-warning mr-2"></span>Team members</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="panel-team">
                                    <div class="flex-1">
                                      <a href="#"><img class="panel-member img-xs rounded-circle" src="assets/img/avatar/1.jpg" alt="Avatar"></a>
                                      <a href="#"><img class="panel-member img-xs rounded-circle" src="assets/img/avatar/2.jpg" alt="Avatar"></a>
                                      <a href="#"><img class="panel-member img-xs rounded-circle" src="assets/img/avatar/3.jpg" alt="Avatar"></a>
                                    </div>
                                    <div class="d-flex align-items-center pl-1">
                                      <a href="#">
                                        <div class="btn-add-warning">
                                          <span class="icon-plus"></span>
                                        </div>
                                      </a>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- /.team members -->
                              <!-- active -->
                              <div class="panel-stat-item">
                                <div class="d-flex">
                                  <div class="flex-1">
                                    <div class="d-flex align-items-center h-100">
                                      <div class="lh-1">
                                        <span class="text-uppercase fw-500 o-90"><span class="icon-power-on-buton text-warning mr-2"></span>Active</span>
                                      </div>
                                    </div>
                                  </div>
                                  <div>
                                    <div class="custom-switch custom-switch-outline">
                                      <input type="checkbox" class="custom-switch-input" id="defaultSwitchOutline2" checked="">
                                      <label class="custom-switch-label" for="defaultSwitchOutline2"></label>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- /.active -->
                            </div>
                          </div>
                        </div>
                        <!-- /.settings -->
                        <!-- social -->
                        <div>
                          <!-- facebook -->
                          <div class="text-light btn-social d-flex">
                            <div class="flex-1">
                              <div class="d-flex">
                                <div class="subtn-social">
                                  <div class="subtn-social-item">
                                    <i class="fab fa-facebook-f"></i>
                                  </div>
                                </div>
                                <div class="py-3 px-4"><a href="" class="text-light fw-600">Facebook</a></div>
                              </div>
                            </div>
                            <div class="d-flex align-items-center p-3"><span class="badge badge-pill bg-light_A-20">+32K Feeds</span></div>
                          </div>
                          <!-- /.facebook -->
                          <!-- twitter -->
                          <div class="text-light btn-social d-flex">
                            <div class="flex-1">
                              <div class="d-flex">
                                <div class="subtn-social">
                                  <div class="subtn-social-item">
                                    <i class="fab fa-twitter"></i>
                                  </div>
                                </div>
                                <div class="py-3 px-4"><a href="" class="text-light fw-600">Twitter</a></div>
                              </div>
                            </div>
                            <div class="d-flex align-items-center p-3"><span class="badge badge-pill bg-light_A-20">+22.6K Tweets</span></div>
                          </div>
                          <!-- /.twitter -->
                          <!-- google+ -->
                          <div class="text-light btn-social d-flex">
                            <div class="flex-1">
                              <div class="d-flex">
                                <div class="subtn-social">
                                  <div class="subtn-social-item">
                                    <i class="fab fa-google-plus-g"></i>
                                  </div>
                                </div>
                                <div class="py-3 px-4"><a href="" class="text-light fw-600">Google+</a></div>
                              </div>
                            </div>
                            <div class="d-flex align-items-center p-3"><span class="badge badge-pill bg-light_A-20">+16.8K Circles</span></div>
                          </div>
                          <!-- /.google+ -->
                          <!-- linkedIn -->
                          <div class="text-light btn-social d-flex">
                            <div class="flex-1">
                              <div class="d-flex">
                                <div class="subtn-social">
                                  <div class="subtn-social-item">
                                    <i class="fab fa-linkedin-in"></i>
                                  </div>
                                </div>
                                <div class="py-3 px-4"><a href="" class="text-light fw-600">LinkedIn</a></div>
                              </div>
                            </div>
                            <div class="d-flex align-items-center p-3"><span class="badge badge-pill bg-light_A-20">+7.1K Feeds</span></div>
                          </div>
                          <!-- /.linkedIn -->
                        </div>
                        <!-- /.social -->
                        <!-- calendar panel -->
                        <div class="panel">
                          <header class="panel-header">
                            <h5 class="fw-200 text-uppercase mb-0">Calendar</h5>
                            <a href="#" class="d-flex align-items-center justify-content-center ml-auto">
                              <span class="lead-3 text-warning icon-office-monthly-calendar"></span>
                            </a>
                          </header>
                          <div id="calendar" class="panel-calendar carousel slide carousel-fade" data-ride="carousel" data-interval="false">
                            <div class="carousel-inner">
                              <!-- calendar-item -->
                              <div class="carousel-item active">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/jan-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">January, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td>3</td>
                                      <td class="cldr-event">4</td>
                                      <td>5</td>
                                      <td>6</td>
                                      <td>7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>9</td>
                                      <td>10</td>
                                      <td>11</td>
                                      <td>12</td>
                                      <td>13</td>
                                      <td>14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td class="cldr-event">17</td>
                                      <td>18</td>
                                      <td>19</td>
                                      <td class="cldr-event">20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td>25</td>
                                      <td>26</td>
                                      <td>27</td>
                                      <td>28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td>31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                              <!-- calendar-item -->
                              <div class="carousel-item">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/feb-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">February, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td>3</td>
                                      <td>4</td>
                                      <td>5</td>
                                      <td>6</td>
                                      <td>7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>9</td>
                                      <td>10</td>
                                      <td>11</td>
                                      <td class="cldr-event">12</td>
                                      <td>13</td>
                                      <td>14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td>17</td>
                                      <td class="cldr-event">18</td>
                                      <td>19</td>
                                      <td>20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td>25</td>
                                      <td>26</td>
                                      <td class="cldr-event">27</td>
                                      <td>28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td>31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                              <!-- calendar-item -->
                              <div class="carousel-item">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/april-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">April, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td>3</td>
                                      <td>4</td>
                                      <td class="cldr-event">5</td>
                                      <td>6</td>
                                      <td>7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>9</td>
                                      <td>10</td>
                                      <td>11</td>
                                      <td>12</td>
                                      <td>13</td>
                                      <td>14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td class="cldr-event">17</td>
                                      <td>18</td>
                                      <td>19</td>
                                      <td class="cldr-event">20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td>25</td>
                                      <td>26</td>
                                      <td class="cldr-event">27</td>
                                      <td>28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td>31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                              <!-- calendar-item -->
                              <div class="carousel-item">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/may-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">May, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td>3</td>
                                      <td>4</td>
                                      <td>5</td>
                                      <td>6</td>
                                      <td>7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>9</td>
                                      <td>10</td>
                                      <td>11</td>
                                      <td>12</td>
                                      <td>13</td>
                                      <td class="cldr-event">14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td>17</td>
                                      <td>18</td>
                                      <td>19</td>
                                      <td>20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td>25</td>
                                      <td>26</td>
                                      <td>27</td>
                                      <td>28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td>31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                              <!-- calendar-item -->
                              <div class="carousel-item">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/june-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">June, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td class="cldr-event">3</td>
                                      <td class="cldr-event">4</td>
                                      <td>5</td>
                                      <td>6</td>
                                      <td class="cldr-event">7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>9</td>
                                      <td>10</td>
                                      <td>11</td>
                                      <td>12</td>
                                      <td>13</td>
                                      <td>14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td class="cldr-event">17</td>
                                      <td>18</td>
                                      <td>19</td>
                                      <td>20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td>25</td>
                                      <td>26</td>
                                      <td>27</td>
                                      <td class="cldr-event">28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td>31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                              <!-- calendar-item -->
                              <div class="carousel-item">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/july-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">July, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td>3</td>
                                      <td>4</td>
                                      <td>5</td>
                                      <td>6</td>
                                      <td>7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>9</td>
                                      <td>10</td>
                                      <td>11</td>
                                      <td>12</td>
                                      <td>13</td>
                                      <td>14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td>17</td>
                                      <td>18</td>
                                      <td class="cldr-event">19</td>
                                      <td>20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td>25</td>
                                      <td>26</td>
                                      <td>27</td>
                                      <td>28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td>31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                              <!-- calendar-item -->
                              <div class="carousel-item">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/aug-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">August, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td>3</td>
                                      <td>4</td>
                                      <td>5</td>
                                      <td>6</td>
                                      <td>7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>9</td>
                                      <td>10</td>
                                      <td>11</td>
                                      <td class="cldr-event">12</td>
                                      <td class="cldr-event">13</td>
                                      <td>14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td>17</td>
                                      <td>18</td>
                                      <td>19</td>
                                      <td>20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td>25</td>
                                      <td>26</td>
                                      <td class="cldr-event">27</td>
                                      <td>28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td>31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                              <!-- calendar-item -->
                              <div class="carousel-item">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/sep-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">September, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td>3</td>
                                      <td>4</td>
                                      <td>5</td>
                                      <td>6</td>
                                      <td class="cldr-event">7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td class="cldr-event">9</td>
                                      <td class="cldr-event">10</td>
                                      <td>11</td>
                                      <td>12</td>
                                      <td>13</td>
                                      <td>14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td>17</td>
                                      <td>18</td>
                                      <td>19</td>
                                      <td>20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td>25</td>
                                      <td>26</td>
                                      <td>27</td>
                                      <td>28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td>31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                              <!-- calendar-item -->
                              <div class="carousel-item">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/oct-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">October, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td>3</td>
                                      <td>4</td>
                                      <td>5</td>
                                      <td>6</td>
                                      <td>7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>9</td>
                                      <td>10</td>
                                      <td>11</td>
                                      <td>12</td>
                                      <td>13</td>
                                      <td>14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td>17</td>
                                      <td>18</td>
                                      <td>19</td>
                                      <td>20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td class="cldr-event">25</td>
                                      <td class="cldr-event">26</td>
                                      <td>27</td>
                                      <td>28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td>31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                              <!-- calendar-item -->
                              <div class="carousel-item">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/nov-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">November, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td>3</td>
                                      <td>4</td>
                                      <td>5</td>
                                      <td>6</td>
                                      <td>7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>9</td>
                                      <td>10</td>
                                      <td>11</td>
                                      <td>12</td>
                                      <td>13</td>
                                      <td>14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td>17</td>
                                      <td>18</td>
                                      <td>19</td>
                                      <td class="cldr-event">20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td>25</td>
                                      <td>26</td>
                                      <td class="cldr-event">27</td>
                                      <td class="cldr-event">28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td>31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                              <!-- calendar-item -->
                              <div class="carousel-item">
                                <div class="position-relative ar-16_9 bp-c bs-c" style="background: url(assets/img/calendar/dec-bg.jpg)">
                                  <div class="calendar-header position-absolute w-100 b-0 text-center">
                                    <div class="position-relative">
                                      <div class="py-4">
                                        <span class="lead-2 fw-100 mb-0">December, 2019</span>
                                      </div>
                                      <div>
                                        <a class="carousel-control-prev" href="#calendar" data-slide="prev">
                                          <img src="assets/img/icons/left-arrow.svg" class="left-arrow" alt="<">
                                        </a>
                                        <a class="carousel-control-next" href="#calendar" data-slide="next">
                                          <img src="assets/img/icons/right-arrow.svg" class="right-arrow" alt=">">
                                        </a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table table-bordered table-dark my-2">
                                  <thead>
                                    <tr>
                                      <th scope="col">Mo</th>
                                      <th scope="col">Tu</th>
                                      <th scope="col">We</th>
                                      <th scope="col">Th</th>
                                      <th scope="col">Fr</th>
                                      <th scope="col">Sa</th>
                                      <th scope="col">Su</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>2</td>
                                      <td class="cldr-event">3</td>
                                      <td>4</td>
                                      <td>5</td>
                                      <td>6</td>
                                      <td>7</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>9</td>
                                      <td>10</td>
                                      <td>11</td>
                                      <td>12</td>
                                      <td>13</td>
                                      <td>14</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">15</th>
                                      <td>16</td>
                                      <td>17</td>
                                      <td>18</td>
                                      <td class="cldr-event">19</td>
                                      <td class="cldr-event">20</td>
                                      <td>21</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">22</th>
                                      <td>23</td>
                                      <td>24</td>
                                      <td>25</td>
                                      <td>26</td>
                                      <td>27</td>
                                      <td>28</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">29</th>
                                      <td>30</td>
                                      <td class="cldr-event">31</td>
                                      <td class="text-gray">1</td>
                                      <td class="text-gray">2</td>
                                      <td class="text-gray">3</td>
                                      <td class="text-gray">4</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <!-- /.calendar-item -->
                            </div>
                          </div>
                        </div>
                        <!-- /.calendar panel -->
                      </div>

                      <div class="panel-col col-xl-6">
                        <!-- chart panel -->
                        <div class="panel">
                          <header class="panel-header text-center">
                            <div class="w-100">
                              <h5 class="title mb-0">Monday</h5>
                              <span class="text-info small-2">May 25, 2019</span>
                            </div>
                          </header>
                          <div class="panel-body border-top-0 p-0">
                            <div class="mb-9">
                              <canvas id="chart-radar" width="300" height="300"></canvas>
                            </div>
                            <div>
                              <div class="d-flex align-items-center warning-gradient py-4 px-5">
                                <div class="panel-secondary-icon"><i class="fas fa-exclamation"></i></div>
                                <div class="ml-4">
                                  <h5 class="mb-0">Purchase History</h5>
                                  <span>+50% vs last month</span>
                                </div>
                              </div>
                              <ul class="panel-list list-unstyled px-5 py-6">
                                <li class="panel-list-item">
                                  <div class="d-flex align-items-center">
                                    <div class="text-warning">
                                      <div class="btn-add-warning">
                                        <span class="icon-check"></span>
                                      </div>
                                    </div>
                                    <div class="ml-4 lh-5">
                                      <h6 class="small-1 mb-0">Databases</h6>
                                      <span class="small-3">Total: 315K</span>
                                    </div>
                                    <div class="ml-auto">
                                      +257K<span class="small-3 text-warning ml-1 icon-up-arrow-sign"></span>
                                    </div>
                                  </div>
                                </li>
                                <li class="panel-list-item">
                                  <div class="d-flex align-items-center">
                                    <div class="text-warning">
                                      <div class="btn-add-warning">
                                        <span class="icon-check"></span>
                                      </div>
                                    </div>
                                    <div class="ml-4 lh-5">
                                      <h6 class="small-1 mb-0">Servers</h6>
                                      <span class="small-3">Total: 104K</span>
                                    </div>
                                    <div class="ml-auto">
                                      +392K<span class="small-3 text-warning ml-1 icon-up-arrow-sign"></span>
                                    </div>
                                  </div>
                                </li>
                                <li class="panel-list-item">
                                  <div class="d-flex align-items-center">
                                    <div class="text-warning">
                                      <div class="btn-add-warning">
                                        <span class="icon-check"></span>
                                      </div>
                                    </div>
                                    <div class="ml-4 lh-5">
                                      <h6 class="small-1 mb-0">Sales</h6>
                                      <span class="small-3">Total: 517K</span>
                                    </div>
                                    <div class="ml-auto">
                                      +422K<span class="small-3 text-warning ml-1 icon-up-arrow-sign"></span>
                                    </div>
                                  </div>
                                </li>
                                <li class="panel-list-item">
                                  <div class="d-flex align-items-center">
                                    <div class="text-warning">
                                      <div class="btn-add-warning">
                                        <span class="icon-check"></span>
                                      </div>
                                    </div>
                                    <div class="ml-4 lh-5">
                                      <h6 class="small-1 mb-0">Users</h6>
                                      <span class="small-3">Total: 468K</span>
                                    </div>
                                    <div class="ml-auto">
                                      +726K<span class="small-3 text-danger ml-1 icon-directional-down-arrow"></span>
                                    </div>
                                  </div>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <!-- /.chart panel -->
                        <!-- server panel -->
                        <div class="panel panel-lg-bottom-line border-lp-bottom-0">
                          <header class="panel-header">
                            <div>
                              <h5 class="title mb-0">Server</h5>
                            </div>
                            <div class="ml-auto">
                              <div class="custom-switch custom-switch-outline">
                                <input type="checkbox" class="custom-switch-input" id="defaultSwitchOutline3" checked="">
                                <label class="custom-switch-label" for="defaultSwitchOutline3"></label>
                              </div>
                            </div>
                          </header>
                          <div class="panel-body">
                            <!-- range -->
                            <div class="range-list range-list-md d-flex justify-content-center small-1 border-0 mt-4">
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="30" data-orientation="vertical" class="invisible">
                              </div>
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="42" data-orientation="vertical" class="invisible">
                              </div>
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="18" data-orientation="vertical" class="invisible">
                              </div>
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="68" data-orientation="vertical" class="invisible">
                              </div>
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="56" data-orientation="vertical" class="invisible">
                              </div>
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="89" data-orientation="vertical" class="invisible">
                              </div>
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="73" data-orientation="vertical" class="invisible">
                              </div>
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="44" data-orientation="vertical" class="invisible">
                              </div>
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="62" data-orientation="vertical" class="invisible">
                              </div>
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="71" data-orientation="vertical" class="invisible">
                              </div>
                              <div class="range-vertical-item">
                                <input type="range" min="1" max="100" step="1" value="68" data-orientation="vertical" class="invisible">
                              </div>
                            </div>
                            <!-- /.range -->
                            <!-- server -->
                            <div class="d-flex align-items-center mt-4">
                              <div class="input-rounded input-transparent flex-1">
                                <div class="form-group mb-0">
                                  <select class="form-control">
                                    <option>Server 1</option>
                                    <option>Server 2</option>
                                    <option>Server 3</option>
                                    <option>Server 4</option>
                                    <option>Server 5</option>
                                    <option>Server 6</option>
                                  </select>
                                </div>
                              </div>
                              <div class="ml-4">
                                <button class="btn btn-warning btn-round">Apply</button>
                              </div>
                            </div>
                            <!-- /.server -->
                            <hr class="panel-hr my-6">
                            <!-- input -->
                            <div class="row">
                              <div class="col-sm-4 mb-3 mb-sm-4">
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="defaultCheck100" checked>
                                  <label class="custom-control-label" for="defaultCheck100">
                                    Line charts
                                  </label>
                                </div>
                              </div>
                              <div class="col-sm-4 mb-3 mb-sm-4">
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="defaultCheck101" checked>
                                  <label class="custom-control-label" for="defaultCheck101">
                                    Pie charts
                                  </label>
                                </div>
                              </div>
                              <div class="col-sm-4 mb-3 mb-sm-4">
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="defaultCheck102" checked>
                                  <label class="custom-control-label" for="defaultCheck102">
                                    Flow charts
                                  </label>
                                </div>
                              </div>
                              <div class="col-sm-4 mb-3 mb-sm-4">
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="defaultCheck100_a" checked>
                                  <label class="custom-control-label" for="defaultCheck100_a">
                                    Line charts
                                  </label>
                                </div>
                              </div>
                              <div class="col-sm-4 mb-3 mb-sm-4">
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="defaultCheck101_a" checked>
                                  <label class="custom-control-label" for="defaultCheck101_a">
                                    Pie charts
                                  </label>
                                </div>
                              </div>
                              <div class="col-sm-4 mb-3 mb-sm-4">
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="defaultCheck102_a" checked>
                                  <label class="custom-control-label" for="defaultCheck102_a">
                                    Flow charts
                                  </label>
                                </div>
                              </div>
                              <div class="col-sm-4 mb-3 mb-sm-0">
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="defaultCheck103" checked>
                                  <label class="custom-control-label" for="defaultCheck103">
                                    Line charts
                                  </label>
                                </div>
                              </div>
                              <div class="col-sm-4 mb-3 mb-sm-0">
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="defaultCheck104" checked>
                                  <label class="custom-control-label" for="defaultCheck104">
                                    Pie charts
                                  </label>
                                </div>
                              </div>
                              <div class="col-sm-4">
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="defaultCheck105" checked>
                                  <label class="custom-control-label" for="defaultCheck105">
                                    Flow charts
                                  </label>
                                </div>
                              </div>
                            </div>
                            <!-- /.input -->
                            <hr class="panel-hr my-6">
                            <!-- raiting -->
                            <div>
                              <span class="d-block lead-1 lh-1 mb-4">Select raiting</span>
                              <div class="p-relative pb-4 mb-4">
                                <input type="range" min="1" max="100" step="1" value="42" class="range-label range-lg invisible" data-labels="1, 2, 3, 4, 5, 6, 7, 8, 9, 10">
                              </div>
                              <div class="mb-3">
                                <span class="small-4 text-info d-block text-uppercase">Average rating: <span>7.4</span></span>
                              </div>
                              <div class="text-center">
                                <button class="btn btn-warning btn-round">Apply</button>
                              </div>
                            </div>
                            <!-- /.raiting -->
                          </div>
                        </div>
                        <!-- /.server panel -->
                      </div>

                    </div>
                  </div>
                </div>

                <!-- panel-col -->
                <div class="panel-col col-lp-6 panel-pt-col">
                  <!-- panel -->
                  <div class="panel">
                    <div class="panel-header align-items-center p-relative">
                      <div class="position-absolute w-100 l-5 l-sm-0 pe-n text-sm-center">
                        <h5 class="title pe-a mb-0 d-inline">Views in the last 10 days</h5>
                      </div>
                      <div class="p-relative d-none d-sm-block">
                        <a href="#" class="d-flex align-items-center">
                          <span class="icon-left-chevron text-warning small-4 mr-1"></span> <span class="small-2 text-uppercase">Reports</span>
                        </a>
                      </div>
                      <div class="p-relative ml-auto">
                        <a href="#" data-toggle="fullscreen-btn" class="lead-1">
                          <span class="fas fa-expand text-warning"></span>
                        </a>
                      </div>
                    </div>
                    <div class="panel-body pt-0 pr-0">
                      <div>
                        <canvas id="chart-line-md" width="300" height="300"></canvas>
                      </div>
                    </div>
                  </div>
                  <!-- /.panel -->
                  <!-- panel -->
                  <div class="panel  panel-pt">
                    <div class="panel-row row no-gutters">
                      <div class="panel-col col-xl-6">
                        <div class="panel">
                          <header class="panel-header align-items-center">
                            <div>
                              <h5 class="title mb-0">Quick Stats</h5>
                            </div>
                            <div class="panel-header-nav ml-auto">
                              <a data-toggle="collapse" href="#collapseQuickStat" role="button" aria-expanded="false" aria-controls="collapseQuickStat" class="nav-item mr-3">
                                <span class="icon-minus"></span>
                              </a>
                              <a data-toggle="refresh" class="nav-item mr-3"><span class="icon-refresh"></span></a>
                              <a data-toggle="remove" class="nav-item"><span class="icon-close"></span></a>
                            </div>
                          </header>
                          <div class="collapse show" id="collapseQuickStat">
                            <div class="panel-body">
                              <ul class="panel-tabs nav nav-tabs mt-2 mb-5" id="defaultTab" role="tablist">
                                <li class="nav-item">
                                  <a class="nav-link active" id="home-tab" data-toggle="tab" href="#default-1" role="tab" aria-controls="default-1" aria-selected="true">Today</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" id="week-tab" data-toggle="tab" href="#default-2" role="tab" aria-controls="default-2" aria-selected="false">Week</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" id="month-tab" data-toggle="tab" href="#default-3" role="tab" aria-controls="default-3" aria-selected="false">Month</a>
                                </li>
                              </ul>
                              <div class="panel-tabs-content tab-content" id="defaultTabContent">
                                <div class="tab-pane fade show active" id="default-1" role="tabpanel" aria-labelledby="home-tab">
                                  <div style="height: 270px;">
                                    <canvas id="pie-chart" width="600" height="270"></canvas>
                                  </div>
                                  <div class="d-flex align-items-center justify-content-center mt-6">
                                    <div class="d-flex align-items-center mr-4">
                                      <div class="mr-2 small-4 text-primary fas fa-circle"></div>
                                      <div class="lh-1">
                                        <div class="small-2">Finished</div>
                                      </div>
                                    </div>
                                    <div class="d-flex align-items-center mr-4">
                                      <div class="mr-2 small-4 text-warning fas fa-circle"></div>
                                      <div class="lh-1">
                                        <div class="small-2">Pending</div>
                                      </div>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="mr-2 small-4 text-danger fas fa-circle"></div>
                                      <div class="lh-1">
                                        <div class="small-2">Rejected</div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="mt-7">
                                    <div class="d-flex">
                                      <div><span class="panel-tabs-ctg">Online:</span></div>
                                      <div class="ml-auto d-flex w-50">
                                        <div class="ml-auto w-50">
                                          <div class="pl-4 flex-1"><span class="text-warning fw-800">248</span></div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="ml-auto d-flex w-50 py-3">
                                        <div class=" flex-1">
                                          <span class="panel-tabs-ord px-3 py-1">
                                            Users
                                          </span>
                                        </div>
                                        <div class="pl-3 flex-1">
                                          <span class="panel-tabs-ord px-3 py-1">
                                            Visitors
                                          </span>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Today:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">421</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">1620</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Yesterday:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">472</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">1519</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Week:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">10125</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">18329</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Month:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">54286</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">98236</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Year:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">255374</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">1255374</span></div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="tab-pane fade" id="default-2" role="tabpanel" aria-labelledby="week-tab">
                                  <div style="height: 270px;">
                                    <canvas id="pie-chart_02" width="600" height="270"></canvas>
                                  </div>
                                  <div class="d-flex align-items-center justify-content-center mt-6">
                                    <div class="d-flex align-items-center mr-4">
                                      <div class="mr-2 small-4 text-primary fas fa-circle"></div>
                                      <div class="lh-1">
                                        <div class="small-2">Finished</div>
                                      </div>
                                    </div>
                                    <div class="d-flex align-items-center mr-4">
                                      <div class="mr-2 small-4 text-warning fas fa-circle"></div>
                                      <div class="lh-1">
                                        <div class="small-2">Pending</div>
                                      </div>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="mr-2 small-4 text-danger fas fa-circle"></div>
                                      <div class="lh-1">
                                        <div class="small-2">Rejected</div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="mt-7">
                                    <div class="d-flex">
                                      <div><span class="panel-tabs-ctg">Online:</span></div>
                                      <div class="ml-auto d-flex w-50">
                                        <div class="ml-auto w-50">
                                          <div class="pl-4 flex-1"><span class="text-warning fw-800">248</span></div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="ml-auto d-flex w-50 py-3">
                                        <div class=" flex-1">
                                          <span class="panel-tabs-ord px-3 py-1">
                                            Users
                                          </span>
                                        </div>
                                        <div class="pl-3 flex-1">
                                          <span class="panel-tabs-ord px-3 py-1">
                                            Visitors
                                          </span>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Today:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">421</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">1620</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Yesterday:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">472</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">1519</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Week:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">10125</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">18329</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Month:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">54286</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">98236</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Year:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">255374</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">1255374</span></div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="tab-pane fade" id="default-3" role="tabpanel" aria-labelledby="month-tab">
                                  <div style="height: 270px;">
                                    <canvas id="pie-chart_03" width="600" height="270"></canvas>
                                  </div>
                                  <div class="d-flex align-items-center justify-content-center mt-6">
                                    <div class="d-flex align-items-center mr-4">
                                      <div class="mr-2 small-4 text-primary fas fa-circle"></div>
                                      <div class="lh-1">
                                        <div class="small-2">Finished</div>
                                      </div>
                                    </div>
                                    <div class="d-flex align-items-center mr-4">
                                      <div class="mr-2 small-4 text-warning fas fa-circle"></div>
                                      <div class="lh-1">
                                        <div class="small-2">Pending</div>
                                      </div>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="mr-2 small-4 text-danger fas fa-circle"></div>
                                      <div class="lh-1">
                                        <div class="small-2">Rejected</div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="mt-7">
                                    <div class="d-flex">
                                      <div><span class="panel-tabs-ctg">Online:</span></div>
                                      <div class="ml-auto d-flex w-50">
                                        <div class="ml-auto w-50">
                                          <div class="pl-4 flex-1"><span class="text-warning fw-800">248</span></div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="ml-auto d-flex w-50 py-3">
                                        <div class=" flex-1">
                                          <span class="panel-tabs-ord px-3 py-1">
                                            Users
                                          </span>
                                        </div>
                                        <div class="pl-3 flex-1">
                                          <span class="panel-tabs-ord px-3 py-1">
                                            Visitors
                                          </span>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Today:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">421</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">1620</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Yesterday:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">472</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">1519</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Week:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">10125</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">18329</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Month:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">54286</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">98236</span></div>
                                      </div>
                                    </div>
                                    <div class="d-flex">
                                      <div class="w-50"><span class="panel-tabs-ctg">Year:</span></div>
                                      <div class="d-flex w-50">
                                        <div class="px-3 flex-1"><span class="fw-500 text-warning fw-800">255374</span></div>
                                        <div class="pl-3 flex-1"><span class="fw-500 text-warning fw-800">1255374</span></div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="panel-col col-xl-6">
                        <div class="panel">
                          <header class="panel-header align-items-center">
                            <div>
                              <h5 class="title mb-0">Day stats</h5>
                            </div>
                            <div class="panel-header-nav ml-auto">
                              <a data-toggle="collapse" href="#collapseDayStat" role="button" aria-expanded="false" aria-controls="collapseDayStat" class="nav-item mr-3">
                                <span class="icon-minus"></span>
                              </a>
                              <a data-toggle="refresh" class="nav-item mr-3"><span class="icon-refresh"></span></a>
                              <a data-toggle="remove" class="nav-item"><span class="icon-close"></span></a>
                            </div>
                          </header>
                          <div class="collapse show" id="collapseDayStat">
                            <div class="panel-body">
                              <div class="d-flex w-100 text-center pt-2">
                                <div class="flex-1">
                                  <span class="d-block lead-5 text-warning icon-basket mb-4"></span>
                                  <h3 class="fw-200 lh-1 mb-2">834</h3>
                                  <span class="fw-700 text-warning">Completed</span>
                                </div>
                                <div class="flex-1">
                                  <span class="d-block lead-5 text-danger icon-warning mb-4"></span>
                                  <h3 class="fw-200 lh-1 mb-2">327</h3>
                                  <span class="fw-700 text-danger">Low stock</span>
                                </div>
                                <div class="flex-1">
                                  <span class="d-block lead-5 text-primary icon-loss mb-4"></span>
                                  <h3 class="fw-200 lh-1 mb-2">108</h3>
                                  <span class="fw-700 text-primary">Override</span>
                                </div>
                              </div>
                              <div style="min-height: 500px;">
                                <canvas id="chart-line-sl" width="300" height="500"></canvas>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- /.panel -->
                  <!-- panel -->
                  <div class="panel">
                    <header class="panel-header">
                      <h5 class="fw-200 text-uppercase mb-0">Global Sales</h5>
                      <a href="#" class="d-flex align-items-center justify-content-center ml-auto">
                        <span class="lead-3 text-warning fas fa-globe-americas"></span>
                      </a>
                    </header>
                    <div class="panel-body px-0">
                      <div id="vmap" style="width: 100%; height: 400px;">
                        <a href="#" data-toggle="fullscreen-btn" class="position-absolute r-6 t-4 lead-1 text-warning">
                          <span class="fas fa-expand"></span>
                        </a>
                      </div>
                      <div class="px-4">
                        <h6 class="mb-0">5200 Sales in month</h6>
                        <span class="small"><span class="text-warning">-12.00%</span> price dropped</span>
                      </div>
                    </div>
                  </div>
                  <!-- /.panel -->
                </div>
                <!-- ./panel-col -->
                
              </div>
              <!-- /.panel-status -->

              <!-- panel-status -->
              <div class="panel-row row no-gutters">
                <!-- panel-col -->
                <div class="panel-col col-xl-6 col-lp-6">
                  <div class="panel">
                    <header class="panel-header">
                      <h5 class="fw-200 text-uppercase mb-0">Threats history</h5>
                      <a href="#" class="d-flex align-items-center justify-content-center ml-auto">
                        <span class="lead-3 text-warning icon-warning"></span>
                      </a>
                    </header>
                    <div class="panel-body">
                      <div>
                        <canvas id="chart-line-bar" width="300" height="300"></canvas>
                      </div>
                      <div>
                        <ul class="panel-list-sc list-unstyled mt-3 mb-0" data-scrollbar="scroll">
                          <li class="panel-list-sc-item">
                            <div class="d-flex">
                              <div class="text-warning"><i class="fas fa-align-right"></i></div>
                              <div class="ml-3 pr-4 pr-lg-6">
                                <h5>Today / 2:34 PM</h5>
                                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                  Etiam mi velit, facilisis sed mi vel, venenatis imperdiet risus. 
                                  Cras ac fermentum leo. Vestibulum gravida libero mauris. </p>
                              </div>
                            </div>
                          </li>
                          <li class="panel-list-sc-item">
                            <div class="d-flex">
                              <div class="text-warning"><i class="fas fa-align-right"></i></div>
                              <div class="ml-3 pr-4 pr-lg-6">
                                <h5>Today / 5:19 PM</h5>
                                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                  Etiam mi velit, facilisis sed mi vel, venenatis imperdiet risus. 
                                  Cras ac fermentum leo. Vestibulum gravida libero mauris. </p>
                              </div>
                            </div>
                          </li>

                          <li class="panel-list-sc-item">
                            <div class="d-flex">
                              <div class="text-warning"><i class="fas fa-align-right"></i></div>
                              <div class="ml-3 pr-4 pr-lg-6">
                                <h5>Last Week / 2:34 PM</h5>
                                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                  Etiam mi velit, facilisis sed mi vel, venenatis imperdiet risus. 
                                  Cras ac fermentum leo. Vestibulum gravida libero mauris. </p>
                              </div>
                            </div>
                          </li>

                          <li class="panel-list-sc-item">
                            <div class="d-flex">
                              <div class="text-warning"><i class="fas fa-align-right"></i></div>
                              <div class="ml-3 pr-4 pr-lg-6">
                                <h5>Last Week / 2:34 PM</h5>
                                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                  Etiam mi velit, facilisis sed mi vel, venenatis imperdiet risus. 
                                  Cras ac fermentum leo. Vestibulum gravida libero mauris. </p>
                              </div>
                            </div>
                          </li>
                          
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.panel-col -->
                <!-- panel-col -->
                <div class="panel-col col-xl-6 col-lp-3">
                  <div class="panel panel-lg-bottom-line border-lp-bottom-0">
                    <header class="panel-header">
                      <h5 class="fw-200 text-uppercase mb-0">Tasks</h5>
                      <a href="#" class="d-flex align-items-center justify-content-center ml-auto">
                        <span class="lead-3 text-warning icon-help-button"></span>
                      </a>
                    </header>
                    <div class="panel-body">
                      <div class="mb-6">
                        <p class="lead-1">Backend development</p>
                        <ul class="list-unstyled">
                          <!-- list-item -->
                          <li class="d-flex align-items-center mb-1">
                            <div class="flex-1 pr-4">
                              <form>
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="Check1">
                                  <label class="custom-control-label" for="Check1">
                                    Aliquam ornare semper orci id tincidunt?
                                  </label>
                                </div>
                              </form>
                            </div>
                            <div class="d-flex">
                              <a href="#" class="mr-2 text-warning"><i class="far fa-edit"></i></a>
                              <a href="#" class="text-danger"><i class="fas fa-times"></i></a>
                            </div>
                          </li>
                          <!-- /.list-item -->
                          <!-- list-item -->
                          <li class="d-flex align-items-center mb-1">
                            <div class="flex-1 pr-4">
                              <form>
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="Check2" checked="">
                                  <label class="custom-control-label" for="Check2">
                                    Sed gravida nibh sed velit efficitur?
                                  </label>
                                </div>
                              </form>
                            </div>
                            <div class="d-flex">
                              <a href="#" class="mr-2 text-warning"><i class="far fa-edit"></i></a>
                              <a href="#" class="text-danger"><i class="fas fa-times"></i></a>
                            </div>
                          </li>
                          <!-- /.list-item -->
                          <!-- list-item -->
                          <li class="d-flex align-items-center mb-1">
                            <div class="flex-1 pr-4">
                              <form>
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="Check3">
                                  <label class="custom-control-label" for="Check3">
                                    Maecenas posuere orci nulla.
                                  </label>
                                </div>
                              </form>
                            </div>
                            <div class="d-flex">
                              <a href="#" class="mr-2 text-warning"><i class="far fa-edit"></i></a>
                              <a href="#" class="text-danger"><i class="fas fa-times"></i></a>
                            </div>
                          </li>
                          <!-- /.list-item -->
                          <!-- list-item -->
                          <li class="d-flex align-items-center mb-1">
                            <div class="flex-1 pr-4">
                              <form>
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="Check4" checked="">
                                  <label class="custom-control-label" for="Check4">
                                    Morbi porta sem et pellentesque suscipit?
                                  </label>
                                </div>
                              </form>
                            </div>
                            <div class="d-flex">
                              <a href="#" class="mr-2 text-warning"><i class="far fa-edit"></i></a>
                              <a href="#" class="text-danger"><i class="fas fa-times"></i></a>
                            </div>
                          </li>
                          <!-- /.list-item -->
                          <!-- list-item -->
                          <li class="d-flex align-items-center mb-1">
                            <div class="flex-1 pr-4">
                              <form>
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="Check5">
                                  <label class="custom-control-label" for="Check5">
                                    Ut orci massa, sollicitudin vitae.
                                  </label>
                                </div>
                              </form>
                            </div>
                            <div class="d-flex">
                              <a href="#" class="mr-2 text-warning"><i class="far fa-edit"></i></a>
                              <a href="#" class="text-danger"><i class="fas fa-times"></i></a>
                            </div>
                          </li>
                          <!-- /.list-item -->
                          <!-- list-item -->
                          <li class="d-flex align-items-center mb-1">
                            <div class="flex-1 pr-4">
                              <form>
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="Check6">
                                  <label class="custom-control-label" for="Check6">
                                    Mauris rutrum enim et augue eleifend.
                                  </label>
                                </div>
                              </form>
                            </div>
                            <div class="d-flex">
                              <a href="#" class="mr-2 text-warning"><i class="far fa-edit"></i></a>
                              <a href="#" class="text-danger"><i class="fas fa-times"></i></a>
                            </div>
                          </li>
                          <!-- /.list-item -->
                          <!-- list-item -->
                          <li class="d-flex align-items-center mb-1">
                            <div class="flex-1 pr-4">
                              <form>
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="Check7" checked="">
                                  <label class="custom-control-label" for="Check7">
                                    Etiam feugiat tellus dolor.
                                  </label>
                                </div>
                              </form>
                            </div>
                            <div class="d-flex">
                              <a href="#" class="mr-2 text-warning"><i class="far fa-edit"></i></a>
                              <a href="#" class="text-danger"><i class="fas fa-times"></i></a>
                            </div>
                          </li>
                          <!-- /.list-item -->
                          <!-- list-item -->
                          <li class="d-flex align-items-center">
                            <div class="flex-1 pr-4">
                              <form>
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="Check8">
                                  <label class="custom-control-label" for="Check8">
                                    Nullam massa felis, sodales quis posuere sed.
                                  </label>
                                </div>
                              </form>
                            </div>
                            <div class="d-flex">
                              <a href="#" class="mr-2 text-warning"><i class="far fa-edit"></i></a>
                              <a href="#" class="text-danger"><i class="fas fa-times"></i></a>
                            </div>
                          </li>
                          <!-- /.list-item -->
                          <!-- list-item -->
                          <li class="d-flex align-items-center mb-1">
                            <div class="flex-1 pr-4">
                              <form>
                                <div class="custom-control custom-checkbox">
                                  <input class="custom-control-input" type="checkbox" value="" id="Check5_d">
                                  <label class="custom-control-label" for="Check5_d">
                                    Ut orci massa, sollicitudin vitae.
                                  </label>
                                </div>
                              </form>
                            </div>
                            <div class="d-flex">
                              <a href="#" class="mr-2 text-warning"><i class="far fa-edit"></i></a>
                              <a href="#" class="text-danger"><i class="fas fa-times"></i></a>
                            </div>
                          </li>
                          <!-- /.list-item -->
                        </ul>
                      </div>
                      <div>
                        <h6 class="mb-4">Quick draft</h6>
                        <div>
                          <div class="form-group">
                            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Title">
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" rows="5" placeholder="What do you want to write about?"></textarea>
                          </div>
                          <div>
                            <a href="#" class="btn btn-round btn-warning">Submit</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.panel-col -->
                <!-- panel-col -->
                <div class="panel-col col-xl-6 col-lp-3">
                  <div class="panel-news panel panel-lp-bottom-line">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                          <div style="background: url(assets/img/news/md/news-1.jpg)" class="position-relative ar-3_2 bp-c bs-c"></div>
                          <div class="panel-body">
                            <small class="text-warning">News</small>
                            <h5 class="text-uppercase">Global Sales</h5>
                            <p class="small-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id ultricies lectus. Suspendisse quis tempus urna, vitae dignissim nulla. Quisque ullamcorper vitae magna vel placerat. </p>
                          </div>
                        </div>
                        <div class="carousel-item">
                          <div style="background: url(assets/img/calendar/jan-bg.jpg)" class="position-relative ar-3_2 bp-c bs-c"></div>
                          <div class="panel-body">
                            <small class="text-warning">News</small>
                            <h5 class="text-uppercase">Global Sales</h5>
                            <p class="small-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id ultricies lectus. Suspendisse quis tempus urna, vitae dignissim nulla. Quisque ullamcorper vitae magna vel placerat. </p>
                          </div>
                        </div>
                        <div class="carousel-item">
                          <div style="background: url(assets/img/calendar/may-bg.jpg)" class="position-relative ar-3_2 bp-c bs-c"></div>
                          <div class="panel-body">
                            <small class="text-warning">News</small>
                            <h5 class="text-uppercase">Global Sales</h5>
                            <p class="small-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id ultricies lectus. Suspendisse quis tempus urna, vitae dignissim nulla. Quisque ullamcorper vitae magna vel placerat. </p>
                          </div>
                        </div>
                      </div>
                      <ol class="panel-news-indicators carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                      </ol>
                    </div>
                  </div>
                </div>
                <!-- /.panel-col -->
              </div>
              <!-- /.panel-status -->

            </div>
          
          </div>

        </div>
       
        <!-- footer -->
        <footer id="footer" class="footer">
          <div class="container-fluid">
            <div class="row gutters-y align-items-center">
              <div class="col-md-6 col-lg-5">
                <div class="px-3 fw-400">
                  © 2019 BEID.
                  All rights reserved
                </div>
              </div>
              <div class="col-md-6 col-lg-7 order-lg-last d-none d-md-block">
                <div class="nav nav-bold-style justify-content-end text-uppercase px-2">
                  <a class="nav-link" href="#">Terms of use</a>
                  <a class="nav-link" href="#">Privacy Policy</a>
                </div>
              </div>
            </div>
          </div>
        </footer>
        <!-- /.footer -->
      </div>
    </main>
    <!-- /.main -->

    <!-- offcanvas - search -->
    <div id="offcanvas-search" class="offcanvas h-100 py-8" data-animation="fadeDown" data-scrollbar="offcanvas">
      <div class="row">
        <div class="col-sm-1 order-sm-last">
          <button type="button" data-toggle="offcanvas-close" class="close float-right mr-lg-6 text-light o-1 lead-2 fw-100" data-dismiss="offcanvas" aria-label="Close">
            <span aria-hidden="true" class="icon-close"></span>
          </button>
        </div>
        <form class="col-sm-11 col-lg-10 mx-auto input-rounded form-inline position-relative w-100 mt-0">
          <div class="input-group bg-none border-0 w-100">
            <input class="form-control form-control-lg rounded-0 bg-none pl-0 h-auto fs-6 display-md-4 display-xl-2 fw-600" type="text" aria-label="Search" placeholder="Search for...">
          </div>
          <hr class="w-100 o-25 border-white mt-0">
          <div class="row gutters-y w-100">
            <div class="col-lg-3">
              <h5 class="text-uppercase text-light mb-6"><i class="fas fa-long-arrow-alt-right"></i> Categories</h5>
              <ul class="list-unstyled pl-4">
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>Architecture</strong> (800)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>Art & Illustration</strong> (317)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>Business & Corporate</strong> (419)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>Culture & Education</strong> (672)</a>
                </li>
                <li class="mb-0">
                  <a href="#" class="tag-item"><strong>E-Commerce</strong> (272)</a>
                </li>
              </ul>
            </div>
            <div class="col-lg-3">
              <h5 class="text-uppercase text-light mb-6"><i class="fas fa-long-arrow-alt-right"></i> Tags</h5>
              <ul class="list-unstyled pl-4">
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>360</strong> (128)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>3D</strong> (42)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>Animation</strong> (4105)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>Apps</strong> (319)</a>
                </li>
                <li class="mb-0">
                  <a href="#" class="tag-item"><strong>Apps</strong> (319)</a>
                </li>
              </ul>
            </div>
            <div class="col-lg-3">
              <h5 class="text-uppercase text-light mb-6"><i class="fas fa-long-arrow-alt-right"></i> Technologies</h5>
              <ul class="list-unstyled pl-4">
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>AngularJS</strong> (629)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>Apache</strong> (241)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>Bootstrap</strong> (751)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>CloudFire</strong> (209)</a>
                </li>
                <li class="mb-0">
                  <a href="#" class="tag-item"><strong>CloudFire</strong> (107)</a>
                </li>
              </ul>
            </div>
            <div class="col-lg-3">
              <h5 class="text-uppercase text-light mb-6"><i class="fas fa-long-arrow-alt-right"></i> Countries</h5>
              <ul class="list-unstyled pl-4">
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>United States</strong> (1605)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>France</strong> (569)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>Business & Corporate</strong> (419)</a>
                </li>
                <li class="mb-4">
                  <a href="#" class="tag-item"><strong>United Kingdom</strong> (672)</a>
                </li>
                <li class="mb-0">
                  <a href="#" class="tag-item"><strong>Italy</strong> (484)</a>
                </li>
              </ul>
            </div>
          </div>
        </form>
      </div>
    </div>
    <!-- /.offcanvas - search -->

    <!-- preloader -->
    <div class="preloaderWrapper"></div>

    <!-- jQuery -->
    <script src="assets/js/jquery.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Chart.js -->
    <script src="assets/plugins/chart/Chart.min.js" id="_chartJS_min"></script>
    <script src="assets/plugins/chart/Chart.bundle.min.js"></script>
    <script src="assets/plugins/chart/chartjs-plugin-annotation.js"></script>
    <script src="assets/plugins/chart/chartjs-plugin-labels.js"></script>

    <!-- apexcharts -->
    <script src="assets/plugins/apexcharts/apexcharts.min.js"></script>

    <!-- RangeSlider -->
    <script src="assets/plugins/rangeslider/rangeslider.min.js" id="_rangeJS_min"></script>

    <!-- Moment -->
    <script src="assets/plugins/lib/moment/moment.min.js"></script>

    <!-- JQVMAP -->
    <script src="assets/plugins/jqvmap/jquery.vmap.min.js" id="_JQVMAP"></script>
    <script src="assets/plugins/jqvmap/maps/jquery.vmap.world.js"></script>

    <!-- dateRangePicker -->
    <script src="assets/plugins/daterangepicker/daterangepicker.js" id="_DateRangeJS_min"></script>
    
    <!-- User JS -->
    <script src="assets/js/scripts.js"></script>

    <!-- Main JS -->
    <script src="assets/js/main.js" id="_mainJS" data-plugins="load"></script>

    <!-- Modules -->
    <script src="assets/js/modules.js"></script>
    
  </body>
</html>