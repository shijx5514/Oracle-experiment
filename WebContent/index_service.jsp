<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Bluth Company">
    <link rel="shortcut icon" href="assets/ico/favicon.html">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/theme.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/alertify.css" rel="stylesheet">
    <link href="http://fonts.useso.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
    <link rel="Favicon Icon" href="favicon.ico">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <style type="text/css">
    	.logo-wrap{
    		color:#fff;
    		font-size:20px;
    		font-weight:bold;
    	}
    </style>
  </head>
  <body>
    <div id="wrap">
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <div class="logo"> 
            <!-- <img src="assets/img/logo.png" alt="Realm Admin Template"> -->
            <div class="logo-wrap">            	
			            健身房管理系统
            </div>
          </div>
           <a class="btn btn-navbar visible-phone" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
           <a class="btn btn-navbar slide_menu_left visible-tablet">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>

          <div class="top-menu visible-desktop">
            <!-- <ul class="pull-left">
              <li><a id="messages" data-notification="2" href="#"><i class="icon-envelope"></i> Messages</a></li>
              <li><a id="notifications" data-notification="3" href="#"><i class="icon-globe"></i> Notifications</a></li>
            </ul> -->
            <ul class="pull-right">  
              <li><a href="login.jsp"><i class="icon-off"></i> 登出</a></li>
            </ul>
          </div>

          <div class="top-menu visible-phone visible-tablet">
            <ul class="pull-right">  
              <li><a title="link to View all Messages page, no popover in phone view or tablet" href="#"><i class="icon-envelope"></i></a></li>
              <li><a title="link to View all Notifications page, no popover in phone view or tablet" href="#"><i class="icon-globe"></i></a></li>
              <li><a href="login.jsp"><i class="icon-off"></i></a></li>
            </ul>
          </div>
			
        </div>
      </div>
    </div>

    <div class="container-fluid">
     
      <!-- Side menu -->
      <div class="sidebar-nav nav-collapse collapse">
        <div class="user_side clearfix">
          <img src="assets/img/odinn.jpg" alt="Odinn god of Thunder">
          <h5><%=session.getAttribute("username") %></h5>
          <a href="#"><!-- <i class="icon-cog"></i> --> ID：<%=session.getAttribute("userid") %></a>        
        </div>
        <div class="accordion" id="accordion2">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle active b_F79999" href="index_service.jsp"><i class="icon-dashboard"></i> <span> 主页</span></a>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_C3F7A7 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse1"><i class="icon-magic"></i> <span> 会员信息</span></a>
            </div>
            <div id="collapse1" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="new_client_service.jsp"><i class="icon-star"></i> 添加新会员</a>
                <a class="accordion-toggle" href="client_info_service.jsp"><i class="icon-list-alt"></i> 会员信息概览</a>
                <!-- <a class="accordion-toggle" href="tables.html"><i class="icon-table"></i> Tables</a>
                <a class="accordion-toggle" href="buttons.html"><i class="icon-circle"></i> Buttons</a> -->
              </div>
            </div>
          </div>
          <!-- <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_9FDDF6 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse2"><i class="icon-reorder"></i> <span>Components</span></a>
            </div>
            <div id="collapse2" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="notifications.html"><i class="icon-rss"></i> Notifications</a>
                <a class="accordion-toggle" href="calendar.html"><i class="icon-calendar"></i> Calendar</a>
                <a class="accordion-toggle" href="gallery.html"><i class="icon-picture"></i> Gallery</a>
              </div>
            </div>
          </div> -->
          <!-- <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F6F1A2" href="tasks.html"><i class="icon-tasks"></i> <span>Tasks</span></a>
            </div>
          </div> -->
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_C1F8A9" href="payment_record_service.jsp"><i class="icon-bar-chart"></i> <span>缴费记录</span></a>
            </div>
          </div> 
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_9FDDF6" href="attendance_record_service.jsp"><i class="icon-bullhorn"></i> <span>会员考勤</span></a>
            </div>
          </div>
          
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_C3F7A7 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse2"><i class="icon-user"></i> <span> 个人信息</span></a>
            </div>
            <div id="collapse2" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="user_service.jsp"><i class="icon-star"></i> 个人信息概览</a>
                <!-- <a class="accordion-toggle" href="user_edit_service.jsp"><i class="icon-list-alt"></i> 个人信息编辑</a> -->
                <a class="accordion-toggle" href="reset_pwd_service.jsp"><i class="icon-edit"></i> 修改密码</a>
                <!-- <a class="accordion-toggle" href="tables.html"><i class="icon-table"></i> Tables</a>
                <a class="accordion-toggle" href="buttons.html"><i class="icon-circle"></i> Buttons</a> -->
              </div>
            </div>
          </div>         
               
        </div>
      </div>
      <!-- /Side menu -->

      <!-- Main window -->
      <div class="main_container">
      	<div class="row-fluid">
            <ul class="breadcrumb">
              <!-- li><a href="#">Home</a> <span class="divider">/</span></li>
              <li><a href="#">Pages</a> <span class="divider">/</span></li> -->
              <li class="active">主页</li>
            </ul>
            <h2 class="heading">
               欢迎使用健身房管理系统
              <!-- <div class="btn-group pull-right">
                <button class="btn"><i class="icon-download-alt"></i> Export</button>
                <button class="btn"><i class="icon-cog"></i> Settings</button>
              </div> -->
            </h2>
          </div> <!-- /row-fluid -->
        <div class="row-fluid">
            <div class="widget widget-padding span12">
              <div class="widget-header">
                <i class="icon-circle"></i>
                <h5>最新消息</h5>
                <div class="widget-buttons">
                  <!-- <a href="http://twitter.github.com/bootstrap/base-css.html#buttons" data-title="Documentation" class="tip" target="_blank"><i class="icon-external-link"></i></a> -->
                  <!-- <a href="#" data-title="收缩/展开" data-collapsed="false" class="tip collapse"><i class="icon-chevron-up"></i></a> -->
                </div>
              </div>  
                           
              <div class="widget-body">
                <div class="widget-tickets widget-tickets-large clearfix">
                  <ul>
                    <li class="">
                      <img src="assets/img/avatars/01.jpg" class="avatar"/>
                      <h5>关于近期热水房供水不足的情况说明</h5>
                       近期由于水房维修，热水供应不是很稳定，时常出现热水供应不足的情况。水房预计会在下周三前维修完成，请各工作人员做好对会员的通知工作！
                      <div class="date">2016-12-12 周一</div>
                      <div class="username">总经理 杨永信</div>
                      <!-- <div class="settings"><a href="#"><i class="icon-reply"></i></a><a href="#"><i class="icon-trash"></i></a><a href="#"><i class="icon-edit"></i></a></div> -->
                    </li>
                    <li class="">
                      <img src="assets/img/avatars/11.jpg" class="avatar"/>
                      <h5>关于12月教练培训安排情况</h5>
                      预计于12月7日到8日进行12月教练培训工作，期间于私教室进行业务培训，请各教练及时与学员沟通，安排排课时间。
                      <div class="date">2016-12-10 周六</div>
                      <div class="username">副总经理 张召忠</div>
                      <!-- <div class="settings"><a href="#"><i class="icon-reply"></i></a><a href="#"><i class="icon-trash"></i></a><a href="#"><i class="icon-edit"></i></a></div> -->
                    </li>
                    <li class="">
                      <img src="assets/img/avatars/10.jpg" class="avatar"/>
                      <h5>关于11月月底总结会的通知</h5>
                      预计于11月30日中午13时在经理办公室进行11月月底总结会的召开，请各教练尽早安排好时间，准时集合。
                      <div class="date">2016-12-7 周三</div>
                      <div class="username">副总经理 莱因哈特</div>
                     <!--  <div class="settings"><a href="#"><i class="icon-reply"></i></a><a href="#"><i class="icon-trash"></i></a><a href="#"><i class="icon-edit"></i></a></div> -->
                    </li>
                    <li class="">
                      <img src="assets/img/avatars/08.jpg" class="avatar"/>
                      <h5>关于近期加强私教区的管理问题</h5>
                      近期发现有部分会员未经允许，擅自进入私教区训练。请各位教练注意，没有教练陪同的会员禁止进入私教区训练！
                      <div class="date">2016-12-6 周二</div>
                      <div class="username">副总经理 王尼玛</div>
                      <!-- <div class="settings"><a href="#"><i class="icon-reply"></i></a><a href="#"><i class="icon-trash"></i></a><a href="#"><i class="icon-edit"></i></a></div> -->
                    </li>
                  </ul>
                </div>                
              </div><!--/widget-body-->
              <!-- <div class="widget-footer">
                <span class="label label-info">Footer button</span> Put this code in right after the widget-body div ends
                <code>&lt;div class=&quot;widget-footer&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;btn pull-right&quot;&gt;Button&lt;/a&gt;&lt;/div&gt;</code>
                <a href="javascript:void(0)" class="pull-right btn btn-small btn-primary">Widget Footer button</a>
              </div> -->
            </div><!-- /widget -->
          </div> <!-- /row-fluid -->
      </div>
      <!-- /Main window -->
      
    </div><!--/.fluid-container-->
    </div><!-- wrap ends-->


    <!-- example modal -->
    <div id="example_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Support Ticket</h3>
      </div>
      <div class="modal-body">
        <p>Here you can view and manage this support ticket.</p>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
        <button class="btn btn-primary">Save changes</button>
      </div>
    </div> 

    <!-- example modal -->
    <div id="example_modal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Example Modal</h3>
      </div>
      <div class="modal-body">
        <p>Here you can write more information about the object you clicked</p>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
        <button class="btn btn-primary">Save changes</button>
      </div>
    </div> 



    <!-- task_modal modal -->
    <div id="task_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Task info example</h3>
      </div>
      <div class="modal-body">
        <div class="clearfix">
          <img src="assets/img/avatars/11.jpg" class="img-circle" style="float: left; width: 65px; margin-right: 20px;">
           <h3 style="margin:0">John</h3>
           <p class="muted">Marketing</p>
        </div>
        <hr>
        <h5>Task</h5>
        <p>Create a marketing plan for the new campaign</p>
        <h5>status&nbsp;&nbsp;<small>60%</small></h5>
        <div class="progress">
          <div class="bar" style="width: 60%;"></div>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
      </div>
    </div> 



    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="assets/js/raphael-min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src='assets/js/sparkline.js'></script>
    <script type="text/javascript" src='assets/js/morris.min.js'></script>
    <script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.masonry.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.imagesloaded.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.facybox.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.alertify.min.js"></script> 
    <script type="text/javascript" src="assets/js/jquery.knob.js"></script>
    <script type='text/javascript' src='assets/js/fullcalendar.min.js'></script>
    <script type='text/javascript' src='assets/js/jquery.gritter.min.js'></script>
    <script type="text/javascript" src="assets/js/realm.js"></script>
    <script type="text/javascript" src="assets/js/jquery.slimscroll.min.js"></script>
    <script type="text/javascript">
    	$(document).ready(function(){
    		<%-- alert("<%=session.getAttribute("status")%>"); --%>
    	　　	var login_status = <%=session.getAttribute("status")%>;
    	 	if (login_status != "1"){
    	 		alert("请您先登录！");
    	 		window.location.href = "login.jsp";
    	 	}
    	});  
    </script>
  </body>
</html>
