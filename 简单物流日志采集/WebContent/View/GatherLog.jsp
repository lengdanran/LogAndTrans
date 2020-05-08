<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="Test.Entity.LogRec"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Be System | GatherLog</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="assets/images/favicon.png" type="image/x-icon">
<!-- VENDOR CSS -->
<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/vendor/animate-css/vivify.min.css">

<link rel="stylesheet" href="assets/vendor/jquery-datatable/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="assets/vendor/jquery-datatable/fixedeader/dataTables.fixedcolumns.bootstrap4.min.css">
<link rel="stylesheet" href="assets/vendor/jquery-datatable/fixedeader/dataTables.fixedheader.bootstrap4.min.css">
<link rel="stylesheet" href="assets/vendor/sweetalert/sweetalert.css"/>

<!-- MAIN CSS -->
<link rel="stylesheet" href="assets/css/site.css">

<style>
    td.details-control {
    background: url('../assets/images/details_open.png') no-repeat center center;
    cursor: pointer;
}
    tr.shown td.details-control {
        background: url('../assets/images/details_close.png') no-repeat center center;
    }
</style>
</head>
<body class="theme-blush">

<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img src="assets/images/favicon.png" width="40" height="40" alt="Brego"></div>
        <p>Loading....</p>        
    </div>
</div>

<!-- Theme Setting -->
<div class="themesetting">
    <a href="#" class="theme_btn"><i class="icon-magic-wand"></i></a>
    <ul class="choose-skin list-unstyled mb-0">
        <li data-theme="green"><div class="green"></div></li>
        <li data-theme="orange"><div class="orange"></div></li>
        <li data-theme="blush" class="active"><div class="blush"></div></li>
        <li data-theme="cyan"><div class="cyan"></div></li>
    </ul>
</div>

<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<div id="wrapper">

    <nav class="navbar navbar-fixed-top">
        <div class="container-fluid">

            <div class="navbar-left">
                <div class="navbar-btn">
                    <a href="index.html"><img src="assets/images/favicon.png" alt="Brego Logo" class="img-fluid logo"></a>
                    <button type="button" class="btn-toggle-offcanvas"><i class="lnr lnr-menu fa fa-bars"></i></button>
                </div>
                <form id="navbar-search" class="navbar-form search-form">
                    <input value="" class="form-control" placeholder="搜索" type="text">
                    <button type="button" class="btn btn-default"><i class="icon-magnifier"></i></button>
                </form>
            </div>
            
            <div class="navbar-right">
                <div id="navbar-menu">
                    <ul class="nav navbar-nav">
                        <li><a href="page-social.html" class="social icon-menu" title="News">社交78</a></li>
                        <li><a href="page-news.html" class="news icon-menu" title="News">新闻79</a></li>
                        <li><a href="javascript:void(0);" class="megamenu_toggle icon-menu" title="Mega Menu">菜单80</a></li>
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                                <i class="icon-envelope"></i>
                                <span class="notification-dot bg-green">4</span>
                            </a>
                            <ul class="dropdown-menu right_chat email vivify fadeIn">
                                <li class="header">你有4封邮件87行</li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="https://via.placeholder.com/140x140" alt="">
                                            <div class="media-body">
                                                <span class="name">James Wert <small class="float-right">Just now</small></span>
                                                <span class="message">Update GitHub</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="https://via.placeholder.com/140x140" alt="">
                                            <div class="media-body">
                                                <span class="name">Folisise Chosielie <small class="float-right">12min ago</small></span>
                                                <span class="message">New Messages</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="https://via.placeholder.com/140x140" alt="">
                                            <div class="media-body">
                                                <span class="name">Louis Henry <small class="float-right">38min ago</small></span>
                                                <span class="message">Design bug fix</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media mb-0">
                                            <img class="media-object " src="https://via.placeholder.com/140x140" alt="">
                                            <div class="media-body">
                                                <span class="name">Debra Stewart <small class="float-right">2hr ago</small></span>
                                                <span class="message">Fix Bug</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                                <i class="icon-bell"></i>
                                <span class="notification-dot bg-azura">4</span>
                            </a>
                            <ul class="dropdown-menu feeds_widget vivify fadeIn">
                                <li class="header">You have 4 New Notifications---140行</li>
                                <li>
                                    <a href="#">
                                        <div class="feeds-left bg-red"><i class="fa fa-check"></i></div>
                                        <div class="feeds-body">
                                            <h4 class="title text-danger">Issue Fixed <small class="float-right text-muted">9:10 AM</small></h4>
                                            <small>WE have fix all Design bug with Responsive</small>
                                        </div>
                                    </a>
                                </li>                               
                                <li>
                                    <a href="#">
                                        <div class="feeds-left bg-info"><i class="fa fa-user"></i></div>
                                        <div class="feeds-body">
                                            <h4 class="title text-info">New User <small class="float-right text-muted">9:15 AM</small></h4>
                                            <small>I feel great! Thanks team</small>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="feeds-left bg-orange"><i class="fa fa-question-circle"></i></div>
                                        <div class="feeds-body">
                                            <h4 class="title text-warning">Server Warning <small class="float-right text-muted">9:17 AM</small></h4>
                                            <small>Your connection is not private</small>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="feeds-left bg-green"><i class="fa fa-thumbs-o-up"></i></div>
                                        <div class="feeds-body">
                                            <h4 class="title text-success">2 New Feedback <small class="float-right text-muted">9:22 AM</small></h4>
                                            <small>It will give a smart finishing to your site</small>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="javascript:void(0);" class="right_toggle icon-menu" title="Right Menu"><i class="icon-bubbles"></i></a></li>
                        <li><a href="LogInPageTest.jsp" class="icon-menu"><i class="icon-power"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <div id="megamenu" class="megamenu particles_js">
        <a href="javascript:void(0);" class="megamenu_toggle btn btn-danger"><i class="icon-close"></i></a>
        <div class="container">
            <div class="row clearfix">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="mega-card">
                        <h6 class="title">General Settings</h6>
                        <ul class="setting-list list-unstyled mb-0">
                            <li>
                                <label class="switch">
                                    <input type="checkbox">
                                    <span class="slider round"></span>
                                </label>
                                <span>Anyone follow me</span>
                            </li>
                            <li>
                                <label class="switch">
                                    <input type="checkbox" checked>
                                    <span class="slider round"></span>
                                </label>
                                <span>Email Redirect</span>
                            </li>
                            <li>
                                <label class="switch">
                                    <input type="checkbox" checked>
                                    <span class="slider round"></span>
                                </label>
                                <span>Notifications</span>
                            </li>
                            <li>
                                <label class="switch">
                                    <input type="checkbox">
                                    <span class="slider round"></span>
                                </label>
                                <span>Auto Updates</span>
                            </li>
                            <li>
                                <label class="switch">
                                    <input type="checkbox" checked>
                                    <span class="slider round"></span>
                                </label>
                                <span>Offline</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="mega-card">
                        <h6 class="title">Quick Link</h6>
                        <ul class="guick_link">
                            <li><a href="#" title="">Home</a></li>
                            <li><a href="#" title="">About Us</a></li>
                            <li><a href="#" title="">FAQs</a></li>
                            <li><a href="#" title="">Privacy Policy</a></li>
                            <li><a href="#" title="">Sitemap</a></li>
                            <li><a href="#" title="">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="mega-card">
                        <h6 class="title">Contact Us</h6>
                        <form>
                            <div class="input-group mb-2">
                                <input type="text" class="form-control" placeholder="Enter Name">
                            </div>
                            <div class="input-group mb-2">
                                <input type="text" class="form-control" placeholder="Enter Email">
                            </div>
                            <div class="input-group mb-2">
                                <textarea  class="form-control" placeholder="Message" rows="2"></textarea>
                            </div>
                            <button type="button" class="btn btn-primary btn-round">Submit</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="mega-card">
                        <h6 class="title">Image Gallery</h6>
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="assets/images/1024x640.png" alt="First slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="assets/images/1024x640.png" alt="Second slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="assets/images/1024x640.png" alt="Third slide">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="card mt-4">
                    <div class="header">
                        <h2>FAQs</h2>
                        <ul class="header-dropdown dropdown">                                
                            <li><a href="javascript:void(0);" class="full-screen"><i class="icon-frame"></i></a></li>
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                <ul class="dropdown-menu">
                                    <li><a href="javascript:void(0);">Action</a></li>
                                    <li><a href="javascript:void(0);">Another Action</a></li>
                                    <li><a href="javascript:void(0);">Something else</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="body">
                        <div class="accordion" id="accordion-faqs">
                            <div>
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne-faqs" aria-expanded="true" aria-controls="collapseOne">
                                        Q: How to use SCSS variables to build custom color <span class="float-right badge  badge-primary">23</span>
                                        </button>
                                    </h5>
                                </div>                                
                                <div id="collapseOne-faqs" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion-faqs">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo-faqs" aria-expanded="false" aria-controls="collapseTwo">
                                        Q: Four questions to ask about your DevOps strategy <span class="float-right badge  badge-success">8</span>
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseTwo-faqs" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion-faqs">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="card-header" id="headingThree">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree-faqs" aria-expanded="false" aria-controls="collapseThree">
                                    Q: A comparison of microservices and functional programming concepts <span class="float-right badge  badge-danger">13</span>
                                    </button>
                                </h5>
                                </div>
                                <div id="collapseThree-faqs" class="collapse" aria-labelledby="headingThree" data-parent="#accordion-faqs">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="particles-js"></div>
    </div>

    <div id="rightbar" class="rightbar">
        <div class="slim_scroll">
            <div class="chat_detail vivify fadeIn delay-100">
                <a href="#" class="btn btn-sm btn-block btn-primary btn-round mb-4 back_btn" title=""><i class="icon-control-rewind mr-1"></i> Back</a>
                <ul class="chat-widget clearfix">
                    <li class="left float-left">
                        <img src="https://via.placeholder.com/140x140" class="rounded" alt="">
                        <div class="chat-info">       
                            <span class="message">Hello, John<br>What is the update on Project X?</span>
                        </div>
                    </li>
                    <li class="right">
                        <img src="https://via.placeholder.com/140x140" class="rounded" alt="">
                        <div class="chat-info">
                            <span class="message">Hi, Alizee<br> It is almost completed. I will send you an email later today.</span>
                        </div>
                    </li>
                    <li class="left float-left">
                        <img src="https://via.placeholder.com/140x140" class="rounded" alt="">
                        <div class="chat-info">
                            <span class="message">That's great. Will catch you in evening.</span>
                        </div>
                    </li>
                    <li class="right">
                        <img src="https://via.placeholder.com/140x140" class="rounded" alt="">
                        <div class="chat-info">
                            <span class="message">Sure we'will have a blast today.</span>
                        </div>
                    </li>
                </ul>
                <div class="input-group p-t-15">
                    <textarea  rows="3" class="form-control" placeholder="Enter text here..."></textarea>
                </div>
            </div>
            <div class="chat_list">
                <form>
                    <div class="input-group m-b-20">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="icon-magnifier"></i></span>
                        </div>
                        <input type="text" class="form-control" placeholder="Search...">
                    </div>
                </form>
                <ul class="right_chat list-unstyled mb-0">
                    <li class="online">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object" src="https://via.placeholder.com/140x140" alt="">
                                <div class="media-body">
                                    <span class="name">Louis Henry</span>
                                    <span class="message">Just now</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>                            
                    </li>
                    <li class="online">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="https://via.placeholder.com/140x140" alt="">
                                <div class="media-body">
                                    <span class="name">Debra Stewart</span>
                                    <span class="message">38min ago</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>                            
                    </li>
                    <li class="offline">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="https://via.placeholder.com/140x140" alt="">
                                <div class="media-body">
                                    <span class="name">Lisa Garett</span>
                                    <span class="message">2hr ago</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>                            
                    </li>
                    <li class="offline">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="https://via.placeholder.com/140x140" alt="">
                                <div class="media-body">
                                    <span class="name">Folisise Chosielie</span>
                                    <span class="message">2hr ago</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>                            
                    </li>
                    <li class="online">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="https://via.placeholder.com/140x140" alt="">
                                <div class="media-body">
                                    <span class="name">Marshall Nichols</span>
                                    <span class="message">1day ago</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>                            
                    </li>
                    <li class="online">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="https://via.placeholder.com/140x140" alt="">
                                <div class="media-body">
                                    <span class="name">Debra Stewart</span>
                                    <span class="message">38min ago</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>                            
                    </li>
                    <li class="offline">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="https://via.placeholder.com/140x140" alt="">
                                <div class="media-body">
                                    <span class="name">Lisa Garett</span>
                                    <span class="message">2hr ago</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>                            
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div id="left-sidebar" class="sidebar">
        <div class="navbar-brand">
            <a href="index.html"><img src="assets/images/favicon.png" alt="Be Logo" class="img-fluid logo"><span>Be System</span></a>
            <button type="button" class="btn-toggle-offcanvas btn btn-sm float-right"><i class="lnr lnr-menu fa fa-chevron-circle-left"></i></button>
        </div>
        <div class="sidebar-scroll">
            <div class="user-account">
                <div class="user_div">
                    <img src="https://via.placeholder.com/140x140" class="user-photo" alt="用户头像">
                </div>
                <div class="dropdown">
                    <span>欢迎502行,</span>
                    <a href="javascript:void(0);" class="dropdown-toggle user-name" data-toggle="dropdown"><strong>登录的用户503</strong></a>
                    <ul class="dropdown-menu dropdown-menu-right account vivify flipInY">
                        <li><a href="page-profile.html"><i class="icon-user"></i>我的信息505</a></li>
                        <li><a href="app-inbox.html"><i class="icon-envelope-open"></i>消息</a></li>
                        <li><a href="javascript:void(0);"><i class="icon-settings"></i>设置</a></li>
                        <li class="divider"></li>
                        <li><a href="page-login.html"><i class="icon-power"></i>退出登录</a></li>
                    </ul>
                </div>
                <a href="#" class="btn btn-sm btn-block btn-primary btn-round mt-3" title=""><i class="icon-plus mr-1"></i>创建新帐号512</a>
            </div>  
            <nav id="left-sidebar-nav" class="sidebar-nav">
                <ul id="main-menu" class="metismenu">
                <li class="header">主界面</li>
                	<li>
                    	<a href="Home.jsp" class="has-arrow"><i class="icon-home"></i><span>HOME</span></a>
                    </li>
                    <li class="header">菜单</li>
                    <li>
                        <a href="#Dashboard" class="has-arrow"><i class="icon-speedometer"></i><span>采集数据</span></a>
                        <ul>
                            <li><a href="GatherLog.jsp">日志</a></li>
                            <li><a href="GatherTran.jsp">物流</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#Dashboard" class="has-arrow"><i class="icon-speedometer"></i><span>匹配数据</span></a>
                         <ul>
                            <li><a href="matchTheLogServlet">日志</a></li>
                            <li><a href="matchTheTransServlet">物流</a></li>
                        </ul>
                    </li>
                    <li>
                    	<a href="SaveServlet" class="has-arrow"><i class="icon-speedometer"></i><span>提交数据</span></a>
                    </li>
                    <li>
                    	<a href="ShowDataServlet" class="has-arrow"><i class="icon-speedometer"></i><span>显示数据</span></a>
                    </li>
                    
                </ul>
            </nav>     
        </div>
    </div>
</div>
    <div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h1>数据采集</h1>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <div class="inlineblock vivify swoopInTop delay-900 mr-4">浏览者621 <span id="mini-bar-chart1" class="mini-bar-chart"></span></div>
                    <div class="inlineblock vivify swoopInTop delay-950 mr-4">Visits622 <span id="mini-bar-chart2" class="mini-bar-chart"></span></div>
                    <div class="inlineblock vivify swoopInTop delay-1000">Chats623 <span id="mini-bar-chart3" class="mini-bar-chart"></span></div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>采集日志数据</h2>
                            <ul class="header-dropdown dropdown">
                                
                                <li><a href="javascript:void(0);" class="full-screen"><i class="icon-frame">全屏</i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">相关技术</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">框架技术的Strus Action 641</a></li>
                                        <li><a href="javascript:void(0);">Another Action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                        
                        	<form id="basic-form" method="post" novalidate  action="GatherLogServlet">
                                <div class="form-group">
	                                <div class="row clearfix">
	                                	<div class="col-lg-6 col-md-12">
	                                    	<label>日志ID</label>
	                                    	<input type="text" name="LogID" class="form-control" id="inputEmail3" placeholder="ID" required="" aria-required="true">
	                                 	</div>
	                                	<div class="col-lg-6 col-md-12">
	                                    	<label>用户名</label>
	                                    	<input type="text" name="Logname" class="form-control" id="inputPassword3" placeholder="用户名"  required="" aria-required="true">
	                                 	</div>
	                               </div>
                                </div>
                                
                                <div class="form-group">
	                                <div class="row clearfix">
	                                	<div class="col-lg-6 col-md-12">
	                                    	<label>地点</label>
	                                    	<input type="text" name="LogInAddress" class="form-control"  id="Address"  placeholder="地点"  required="" aria-required="true">
	                                 	</div>
	                                	<div class="col-lg-6 col-md-12">
	                                		<label>登录状态</label>
		                                    <div class="multiselect_div">
		                                        <select id="single-selection" name="type" class="multiselect multiselect-custom">
		                                            <option value="1">登录</option>
		                                            <option value="0">登出</option>
		                                        </select>
		                                    </div>
                                        </div>
	                               </div>
                                </div>
                                
                                <div class="form-group">
	                                <div class="row clearfix">
	                                	<div class="col-lg-6 col-md-12">
	                                		<button type="submit" class="btn btn-primary col-lg-9 col-md-12">确认采集</button>
	                                 	</div>
	                                	<div class="col-lg-6 col-md-12">
	                                		<button type="reset" class="btn btn-outline-primary col-lg-9 col-md-12">重置数据</button>
                                        </div>
	                               </div>
                                </div>
                                
                                
                                
                            </form>
                        	
                        	
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>当前采集的日志数据表<small>截止到<%out.println(new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss").format(new Date()));  %></small></h2>
                            <ul class="header-dropdown dropdown">
                                
                                <li><a href="javascript:void(0);" class="full-screen"><i class="icon-frame">全屏</i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">相关</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">框架技术的Strus Action 641</a></li>
                                        <li><a href="javascript:void(0);">Another Action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                            	<table class="table table-hover js-basic-example dataTable table-custom spacing5" id="Logs">
								<thead>
					                 <tr>
					                   <th>ID</th>
					                   <th>采集时间</th>
					                   <th>地址</th>
					                   <th>是否匹配</th>
					                   <th>用户名</th>
					                   <th>IP地址</th>
					                   <th>日志类型</th>
					                 </tr>
					            </thead>
								<tfoot>
									<tr>
					                   <th>ID</th>
					                   <th>采集时间</th>
					                   <th>地址</th>
					                   <th>是否匹配</th>
					                   <th>用户名</th>
					                   <th>IP地址</th>
					                   <th>日志类型</th>
					                 </tr>
								</tfoot>
									
									<%
										request.setCharacterEncoding("utf-8");
										response.setCharacterEncoding("utf-8");
										if(session.getAttribute("LogRec")!=null){
											@SuppressWarnings("unchecked")
											ArrayList<LogRec> logList = (ArrayList<LogRec>)session.getAttribute("LogRec");
											for(LogRec logRec : logList){
												out.println("<tr>"+"<td>"+logRec.getId()+"</td>"+"<td>"+logRec.getTimeF()+
														"</td>"+"<td>"+logRec.getAddress()+"</td>"+"<td>"+logRec.getTypeF()+"</td>"+"<td>"+
														logRec.getUser()+"</td>"+"<td>"+logRec.getIp()+"</td>"+"<td>"+logRec.getLogType()+"</td>"+"</tr>");
											}
										}else{
											out.println("没有采集的数据");
										}
									%>
								</table>
                            </div>
                          </div>
					</div></div>
        </div>
    </div>
    
</div>

<!-- Javascript -->
<script src="assets/bundles/libscripts.bundle.js"></script>    
<script src="assets/bundles/vendorscripts.bundle.js"></script>

<script src="assets/bundles/datatablescripts.bundle.js"></script><!-- 数据表格分页显示的javascript -->
<script src="assets/vendor/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
<script src="assets/vendor/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
<script src="assets/vendor/jquery-datatable/buttons/buttons.colVis.min.js"></script>
<script src="assets/vendor/jquery-datatable/buttons/buttons.html5.min.js"></script>
<script src="assets/vendor/jquery-datatable/buttons/buttons.print.min.js"></script>
<script src="assets/vendor/sweetalert/sweetalert.min.js"></script><!-- SweetAlert Plugin Js --> 
<script src="assets/bundles/mainscripts.bundle.js"></script>
<script src="assets/js/pages/tables/jquery-datatable.js"></script>


<script src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
<script src="assets/vendor/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script><!-- Bootstrap Colorpicker Js --> 
<script src="assets/vendor/jquery-inputmask/jquery.inputmask.bundle.js"></script><!-- Input Mask Plugin Js --> 
<script src="assets/vendor/jquery.maskedinput/jquery.maskedinput.min.js"></script>
<script src="assets/vendor/multi-select/js/jquery.multi-select.js"></script><!-- Multi Select Plugin Js -->
<script src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="assets/vendor/bootstrap-tagsinput/bootstrap-tagsinput.js"></script><!-- Bootstrap Tags Input Plugin Js --> 
<script src="assets/vendor/nouislider/nouislider.js"></script><!-- noUISlider Plugin Js --> 
<script src="assets/bundles/mainscripts.bundle.js"></script>
<script src="assets/js/pages/forms/advanced-form-elements.js"></script>

<script src="assets/bundles/datatablescripts.bundle.js"></script><!-- 数据表格分页显示的javascript -->
<script src="assets/vendor/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
<script src="assets/vendor/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
<script src="assets/vendor/jquery-datatable/buttons/buttons.colVis.min.js"></script>
<script src="assets/vendor/jquery-datatable/buttons/buttons.html5.min.js"></script>
<script src="assets/vendor/jquery-datatable/buttons/buttons.print.min.js"></script>
<script src="assets/vendor/sweetalert/sweetalert.min.js"></script><!-- SweetAlert Plugin Js --> 
<script src="assets/bundles/mainscripts.bundle.js"></script>
<script src="assets/js/pages/tables/jquery-datatable.js"></script>


<script>
    $(function() {
        // validation needs name of the element
        $('#food').multiselect();

        // initialize after multiselect
        $('#basic-form').parsley();
    });
    </script>
</body>
</html>