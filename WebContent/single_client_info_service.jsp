<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>单个会员详细信息</title>
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
    	.gym-user-info{
    		padding-top:5px;
    		text-align:left;
    		width:200px;
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
          <a href="#"><!-- <i class="icon-cog"></i> --> ID：<%=session.getAttribute("userid") %></a>  s        
        </div>
        <div class="accordion" id="accordion2">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F79999" href="index_service.jsp"><i class="icon-dashboard"></i> <span> 主页</span></a>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_C3F7A7 collapsed active" data-toggle="collapse" data-parent="#accordion2" href="#collapse1"><i class="icon-magic"></i> <span> 会员信息</span></a>
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
      <div class="main_container" id="forms_page">
       	<div class="row-fluid">
            <ul class="breadcrumb">
              <li><a href="index_service.jsp">主页</a> <span class="divider">/</span></li>
              <li><a href="#">会员信息</a> <span class="divider">/</span></li>
              <li class="active">单个会员详细信息</li>
            </ul>
            <h2 class="heading">
               单个会员详细信息
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
                <h5>单个会员详细信息</h5>
                <div class="widget-buttons">
                	<!-- <div class="btn btn-primary" style="display:inline;">搜索</div>
                	<input id="gym-searchBar" class="span8" placeholder="会员ID/会员姓名" style="display:inline;"> -->
                  <!-- <a href="http://twitter.github.com/bootstrap/base-css.html#buttons" data-title="Documentation" class="tip" target="_blank"><i class="icon-external-link"></i></a> -->
                  <a href="javascript:void(0);" onclick="modify()" data-title="修改会员信息" data-collapsed="false" class="tip"><i class="icon-edit"></i></a>
                </div>
            </div> 
            <div class="widget-body">
              <div class="widget-forms clearfix">
                <form class="form-horizontal">
                  <div class="control-group">
                    <label class="control-label">照片</label>
                    <div class="controls">
                      <img class="gym-client-photo" alt="" src="assets/img/gallery/2.jpg">                      
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">ID</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-id"></label>
                    </div>
                  </div>
                                    
                  <div class="control-group">
                    <label class="control-label">姓名</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-name"></label>
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">性别</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-sex"></label>
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">年龄</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-age"></label>
                    </div>
                  </div>                  
                  
                  <div class="control-group">
                    <label class="control-label">身份证号</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-ic"></label>
                    </div>
                  </div> 
                  
                  <div class="control-group">
                    <label class="control-label">联系电话</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-phone"></label>
                    </div>
                  </div>    
                  
                  <div class="control-group">
                    <label class="control-label">身高</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-height"></label>
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">体重</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-weight"></label>
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">体脂率</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-fatbate"></label>
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">入会日期</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-joindate"></label>
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">会员截止日期</label>
                    <div class="controls">                                          
                      <label class="gym-user-info" id="user-info-expiredate"></label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <!-- <div class="widget-footer">
               <button class="btn btn-primary" type="submit">保存</button>
               <button class="btn" type="button">取消</button>
            </div> -->
          </div>
        </div>  
       
      </div>
      <!-- /Main window -->
      
    </div><!--/.fluid-container-->
    </div><!-- wrap ends-->
	<script type="text/javascript">
		window.onload = function() { 
			var login_status = <%=session.getAttribute("status")%>;
		 	if (login_status != "1"){
		 		alert("请您先登录！");
		 		window.location.href = "login.jsp";
		 		return false;
		 	}
		 	
			/* 取用户id */
			var curt_url = window.location.href;			
			var id_loca = curt_url.indexOf("=", 0);			
			var search_msg = curt_url.substring(id_loca+1, curt_url.length);
			
			$.ajax({
				type:"post",//请求方式
				url:"<%=request.getContextPath()%>/servlet/GetMember",//发送请求地址
				data:{//发送给数据库的数据
					id:"*"					
				},
			   //请求成功后的回调函数有两个参数
				success:function(data, status){
					var htmlStr = "";
					var rd = $.parseJSON(data);
			    	if (rd.length > 0){
			    		$("#user-info-id").html(rd[0].id);	
			    		$("#user-info-name").html(rd[0].name);
			    		$("#user-info-sex").html(rd[0].sex);
			    		$("#user-info-age").html(rd[0].age);
			    		$("#user-info-ic").html(rd[0].ic);
			    		$("#user-info-phone").html(rd[0].M_Phone);
			    		if (rd[0].height != 0){		    			
				    		$("#user-info-height").html(rd[0].height + " cm");
			    		}else{
			    			$("#user-info-height").html("未填写");
			    		}
			    		if (rd[0].weight != 0){			    			
				    		$("#user-info-weight").html(rd[0].weight + " kg");
			    		}
			    		else{
			    			$("#user-info-weight").html("未填写");
			    		}
			    		if (rd[0].fatbate != 0){
				    		$("#user-info-fatbate").html(rd[0].fatbate);
			    		}
			    		else{
			    			$("#user-info-fatbate").html("未填写");
			    		}
			    		$("#user-info-joindate").html(rd[0].joindate);
			    		$("#user-info-expiredate").html(rd[0].expiredate);
			    	}
			    	
			   	}
			});
		}; 
		
		function modify(){
			var curt_url = window.location.href;			
			var id_loca = curt_url.indexOf("=", 0);			
			var search_msg = curt_url.substring(id_loca+1, curt_url.length);
			
			window.location.href = "single_client_edit_service.jsp?searchid=" + search_msg;
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