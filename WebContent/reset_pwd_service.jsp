<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>修改密码</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Bluth Company">
    <link rel="shortcut icon" href="assets/ico/favicon.html">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/theme.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/alertify.css" rel="stylesheet">
    <link rel="Favicon Icon" href="favicon.ico">
    <link href="http://fonts.useso.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="assets/css/colorpicker.css" rel="stylesheet">
    <link href="assets/css/datepicker.css" rel="stylesheet">
    <link href="assets/css/timepicker.css" rel="stylesheet">
    <link href="assets/css/select2.css" rel="stylesheet">
    <style type="text/css">
    	.logo-wrap{
    		color:#fff;
    		font-size:20px;
    		font-weight:bold;
    	}
    	.gym-client-photo{
    		max-width:120px;
    		max-height:160px;
    		display:block;
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
              <a class="accordion-toggle b_C3F7A7 collapsed active" data-toggle="collapse" data-parent="#accordion2" href="#collapse2"><i class="icon-user"></i> <span> 个人信息</span></a>
            </div>
            <div id="collapse2" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="user_service.jsp"><i class="icon-star"></i> 个人信息概览</a>
                <!-- <a class="accordion-toggle" href="user_edit_service.jsp"><i class="icon-list-alt"></i> 个人信息编辑</a> -->
                <a class="accordion-toggle active" href="reset_pwd_service.jsp"><i class="icon-edit"></i> 修改密码</a>
                <!-- <a class="accordion-toggle" href="tables.html"><i class="icon-table"></i> Tables</a>
                <a class="accordion-toggle" href="buttons.html"><i class="icon-circle"></i> Buttons</a> -->
              </div>
            </div>
          </div>         
               
        </div>
      </div>
      <!-- /Side menu -->

      <!-- Main window -->
      <div class="main_container" id="forms_page">
       	<div class="row-fluid">
            <ul class="breadcrumb">
              <li><a href="index_service.jsp">主页</a> <span class="divider">/</span></li>
              <li><a href="#">个人信息</a> <span class="divider">/</span></li>
              <li class="active">修改密码</li>
            </ul>
            <h2 class="heading">
               修改密码
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
                <h5>修改密码</h5>
                <div class="widget-buttons">
                	<!-- <div class="btn btn-primary" style="display:inline;">搜索</div>
                	<input id="gym-searchBar" class="span8" placeholder="会员ID/会员姓名" style="display:inline;"> -->
                  <!-- <a href="http://twitter.github.com/bootstrap/base-css.html#buttons" data-title="Documentation" class="tip" target="_blank"><i class="icon-external-link"></i></a> -->
                  <!-- <a href="#" data-title="收缩/展开" data-collapsed="false" class="tip collapse"><i class="icon-chevron-up"></i></a> -->
                </div>
            </div> 
            <div class="widget-body">
              <div class="widget-forms clearfix">
                <form class="form-horizontal">
                                  
                  <div class="control-group">
                    <label class="control-label">旧密码</label>
                    <div class="controls">
                      <input id="pwd-old" class="span2" type="password" placeholder="">
                      <span class="help-inline" style="color:red;"></span>                      
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">新密码</label>
                    <div class="controls">
                      <input id="pwd-new" class="span2" type="password" placeholder="">
                      <span class="help-inline" style="color:red;"></span>                      
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">确认密码</label>
                    <div class="controls">
                      <input id="pwd-new-2" class="span2" type="password" placeholder="">
                      <span class="help-inline" style="color:red;"></span>                      
                    </div>
                  </div>
                  
                </form>
              </div>
            </div>
            <div class="widget-footer">
               <button onclick="save()" class="btn btn-primary" type="submit">保存</button>
               <button onclick="cancel()" class="btn" type="button">取消</button>
            </div>
          </div>
        </div>  
       
      </div>
      <!-- /Main window -->
      
    </div><!--/.fluid-container-->
    </div><!-- wrap ends-->
	<script type="text/javascript">
		function save(){
			var tar_id = <%=session.getAttribute("userid")%>;
			var old = $("#pwd-old").val();
			var new1 = $("#pwd-new").val();
			var new2 = $("#pwd-new-2").val();
			
			if (old == ""){
				alert("请填写旧密码！");
				$("#pwd-old").focus();
				return false;
			}
			if (new1 == ""){
				alert("请填写新密码！");
				$("#pwd-new").focus();
				return false;
			}
			if (new2 == ""){
				alert("请填写确认密码！");
				$("#pwd-new2").focus();
				return false;
			}
			if (new1 != new2){
				alert("两次密码输入不符！");
				$("#pwd-new").focus();
				return false;
			}
			
			$.ajax({
				type:"post",//请求方式
				url:"<%=request.getContextPath()%>/servlet/ModifyPassword",//发送请求地址
				data:{//发送给数据库的数据
					id:tar_id,
					oldpwd:old,
					newpwd:new1
				},
			   //请求成功后的回调函数有两个参数
				success:function(data, status){
					if (data == "success"){
						alert("修改密码成功！");
						window.location.href = "index_service.jsp";
					}else{
						alert("旧密码错误！");
						$("#pwd-old").focus();
					}
			   	}
			});
		}
		
		function cancel(){
			window.location.href = "index_service.jsp";
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

    <script type="text/javascript" src="assets/js/select2.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-colorpicker.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-timepicker.js"></script>
  </body>
</html>