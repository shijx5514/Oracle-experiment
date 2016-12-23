<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>缴费记录</title>
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
              <a class="accordion-toggle b_F79999" href="index_service.jsp"><i class="icon-dashboard"></i> <span> 主页</span></a>
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
              <a class="accordion-toggle b_C1F8A9 active" href="payment_record_service.jsp"><i class="icon-bar-chart"></i> <span>缴费记录</span></a>
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
              <li><a href="index_service.jsp">主页</a> <span class="divider">/</span></li>
              <!-- <li><a href="#">会员信息</a> <span class="divider">/</span></li> -->
              <li class="active">缴费记录</li>
            </ul>
            <h2 class="heading">
               缴费记录
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
                <h5>缴费记录</h5>
                <div class="widget-buttons">
                	<div onclick="search()" class="btn btn-primary" style="display:inline;">搜索</div>
                	<input id="gym-searchBar" class="span8" placeholder="会员ID/会员姓名" style="display:inline;">
                  <!-- <a href="http://twitter.github.com/bootstrap/base-css.html#buttons" data-title="Documentation" class="tip" target="_blank"><i class="icon-external-link"></i></a> -->
                  <!-- <a href="#" data-title="收缩/展开" data-collapsed="false" class="tip collapse"><i class="icon-chevron-up"></i></a> -->
                </div>
              </div>  
                           
              <div class="widget-body">
                <div class="widget-tickets widget-tickets-large clearfix">
                  <ul id="client-info-table">
                    <!-- <li class="">
                      <img src="assets/img/gallery/2.jpg" class="avatar"/>
                      <h5>许志国  ID：A057301</h5>
                      脉动 x1 ¥5
                      <div class="date">2016-12-12 周一 9:44</div>
                      <div class="username">¥28</div>
                      <div class="settings"><a href="#"><i class="icon-reply"></i></a><a href="#"><i class="icon-trash"></i></a><a href="#"><i class="icon-edit"></i></a></div>
                    </li>
                    <li class="">
                      <img src="assets/img/avatars/11.jpg" class="avatar"/>
                      <h5>吕燕  ID：A057322</h5>
                      泉阳泉 x1 ¥2
                      <div class="date">2016-12-10 周六 8:25</div>
                      <div class="username">¥2</div>
                      <div class="settings"><a href="#"><i class="icon-reply"></i></a><a href="#"><i class="icon-trash"></i></a><a href="#"><i class="icon-edit"></i></a></div>
                    </li> -->                    
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

	<script type="text/javascript">
		window.onload = function(){
			var login_status = <%=session.getAttribute("status")%>;
		 	if (login_status != "1"){
		 		alert("请您先登录！");
		 		window.location.href = "login.jsp";
		 		return false;
		 	}
		 	
		 	$.ajax({
				type:"post",//请求方式
				url:"<%=request.getContextPath()%>/servlet/GetPay",//发送请求地址
				data:{//发送给数据库的数据
					id:"*"					
				},
			   //请求成功后的回调函数有两个参数
				success:function(data, status){
					var htmlStr = "";
					var rd = $.parseJSON(data);
			    	if (rd.length > 0){
			    		for (var i=0; i<rd.length; i++){
			    			htmlStr += "<li>"
						            +         "<img src=\"assets/img/gallery/2.jpg\" class=\"avatar\"/>"
					                +     "<h5>"+rd[i].name+"  ID："+rd[i].member_id+"</h5>"
					                +      		rd[i].message+" x"+ rd[i].num +"  ¥"+rd[i].money
					                +     "<div class=\"date\">"+rd[i].time+"</div>"
					                +     "<div class=\"username\">¥"+rd[i].money+"</div>"
					                +	"</li> ";
			    			
			    		}
			    	}else{			    		 
						htmlStr +=      "<div style=\"color:#999999; text-align:center;\">"
					            +   		"未找到相关用户信息"
					            +    	"</div>";
					            
			    	}
			    	$("#client-info-table").html(htmlStr); 
			   	}
			}); 
		}
		
		function search(){
			var msg = $("#gym-searchBar").val();
			if (msg == ""){
				msg = "*";
			}
			$.ajax({
				type:"post",//请求方式
				url:"<%=request.getContextPath()%>/servlet/GetPay",//发送请求地址
				data:{//发送给数据库的数据
					id:msg					
				},
			   //请求成功后的回调函数有两个参数
				success:function(data, status){
					var htmlStr = "";
					var rd = $.parseJSON(data);
			    	if (rd.length > 0){
			    		for (var i=0; i<rd.length; i++){
			    			htmlStr += "<li>"
						            +         "<img src=\"assets/img/gallery/2.jpg\" class=\"avatar\"/>"
					                +     "<h5>"+rd[i].name+"  ID："+rd[i].member_id+"</h5>"
					                +      		rd[i].message+" x"+ rd[i].num +"  ¥"+rd[i].money
					                +     "<div class=\"date\">"+rd[i].time+"</div>"
					                +     "<div class=\"username\">¥"+rd[i].money+"</div>"
					                +	"</li> ";
			    			
			    		}
			    	}else{			    		 
						htmlStr +=      "<div style=\"color:#999999; text-align:center;\">"
					            +   		"未找到相关用户信息"
					            +    	"</div>";
					            
			    	}
			    	$("#client-info-table").html(htmlStr); 
			   	}
			});
		}
	</script>

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
  </body>
</html>
