<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>健身房管理系统-登录</title>
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
    
    <style type="text/css">
    	.user-type-group label{
    		display: inline;
    		margin-right: 9px;
    	}
    	.message-wrap{
    		width:100%;
    		color:red;
    		text-align:center;
    	}
    </style>
  </head>
  <body>
    <div id="wrap">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          	<div class="row-fluid">
				<div class="widget container-narrow">
					<div class="widget-header">
						<i class="icon-user"></i>
						<h5>健身房管理系统-登录账户</h5>
					</div>  
					<div class="widget-body clearfix" style="padding:25px;">
						<form action="">
							<div class="control-group">
								<div class="controls">
									<input class="btn-block" type="text" id="inputUsername" placeholder="用户名">
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input class="btn-block" type="password" id="inputPassword" placeholder="密码">
								</div>
							</div>
							<div class="control-group">
								<div class="controls">									
									<div id="message-wrap" class="message-wrap">
										<span id="message-print"></span>
									</div>		
								</div>
							</div>
							<!-- <div class="control-group">
								<div class="controls">									
									<div id="user-type-group" class="user-type-group">
										<input name="user-type" type="radio" value="前台客服" checked style="vertical-align:text-bottom; margin-bottom:2px; margin-bottom:-2px\9;"/>前台客服 
										<input name="user-type" type="radio" value="经理" style="vertical-align:text-bottom; margin-bottom:2px; margin-bottom:-2px\9;"/>经理 
										<input name="user-type" type="radio" value="健身教练" style="vertical-align:text-bottom; margin-bottom:2px; margin-bottom:-2px\9;"/>健身教练							
									</div>		
								</div>
							</div> -->
							
							<!-- <div class="control-group">
								<div class="controls clearfix">
									<label style="width:auto" class="checkbox pull-left">
										<input id="user-storage" type="checkbox" value="1"> 记住我
									</label>
									<a style="padding: 5px 0px 0px 5px;" href="#" class="pull-right">忘记密码?</a>
								</div>
							</div> -->					
							<button id="login_submit" type="button" class="btn pull-right" onclick="login_basic_validation()">登录</button>	      			
						</form>		      				
					</div>  
				</div>  
        	</div><!--/row-fluid-->
        </div><!--/span10-->
      </div><!--/row-fluid-->
    </div><!--/.fluid-container-->
    </div><!-- wrap ends-->
    <script type="text/javascript">
    	window.onload = function() { 
    		<%session.setAttribute("status","0");%>
    	};  
    	
		function login_basic_validation(){
			var username = $("#inputUsername").val();			
			var password = $("#inputPassword").val();
			
			
			if (username == ""){
				$("#message-print").html("用户名不能为空！");
				return false;
			}
			if (password == ""){
				$("#message-print").html("密码不能为空！");
				return false;
			}
			$("#message-print").html("");
			
			$.ajax({
				type:"post",//请求方式
				url:"<%=request.getContextPath()%>/servlet/LoginServlet",//发送请求地址
				data:{//发送给数据库的数据
					username:username,
					password:password,
					
				},
			   //请求成功后的回调函数有两个参数
				success:function(data, status){
			    	if (data=="success"){
			    		window.location.href = "index_service.jsp";
			    	}else{
			    		$("#message-print").html("用户名或密码错误！");
			    	} 
			   	}
			}); 
			
		}
	</script>
    <script type="text/javascript" src="assets/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="assets/js/raphael-min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src='assets/js/sparkline.js'></script>
    <script type="text/javascript" src='assets/js/morris.min.js'></script>
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.masonry.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.imagesloaded.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.facybox.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.elfinder.min.html"></script> 
    <script type="text/javascript" src="assets/js/jquery.alertify.min.js"></script> 
    <script type="text/javascript" src="assets/js/realm.js"></script>
	
  </body>
</html>
