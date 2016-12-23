<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Đăng Nhập</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript" src="Jquery/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/JavarScript/DieuHuongTrang.js"></script>
<script type="text/javascript" src="Jquery/jquery.validate.js"></script>
</head>
<body>
	<!--header_top-->
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<img src="ute.png"
							class="img-responsive" alt="Image">
					</div>

					<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10" >
						<div class="info">
							<h1 style="margin:auto; float:center; margin-left:300px; margin-bottom:2px;margin-top:30px; color:red">UTE ONLINE TEST</h1>
							<h3 style="margin:auto; float:center; margin-left:70px; margin-bottom:2px;margin-top:50px; color:blue">Thi Trắc Nghiệm Online Trường đại học Sư Phạm Kỹ Thuật TP.Hồ Chí
								Minh</h3>
						</div>
					</div>
				</div>
	<div class="header">
	<!--header-->
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
				<a class="navbar-brand" href="#"><h4>UTE Online Test</h4></a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><h4>Trang chủ</h4></a></li>
					<li><a href="#"><h4>Làm bài thi</h4></a></li>
					<li><a href="#"><h4>Kết quả thi</h4></a></li>
					<li><a href="#"><h4>Thống kê</h4></a></li> 
					<li><a href="#"><h4>Ngân hàng đề thi</h4></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="DangNhap.jsp"><span class="glyphicon glyphicon-user"></span> Đăng nhập</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Đăng kí</a></li>
				</ul>
			</div>
		</nav>
	</div>
	
<style>
.form-container {
	margin-top: 30px;
}
</style>


<!-- Main Content -->
<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title">Đăng Nhập</h2>
					</div>
					<div class="panel-body">
						<form id="formLogin" method="post" class="form-horizontal" action="Login">
							<div class="form-group">
								<label class="col-sm-4 control-label" for="username">Tên đăng nhập</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="username" name="username" placeholder="Username" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label" for="password">Mật khẩu</label>
								<div class="col-sm-5">
									<input type="password" class="form-control" id="password" name="password" placeholder="Password" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9 col-sm-offset-4">
									<button type="submit" class="btn btn-primary" name="signup" value="Sign up">OK</button>
									<button type="submit" class="btn btn-primary" name="signup" value="Sign up">Cancel</button>
								</div>
								
							</div>
						</form>
					</div>
	</div>
	
	</div></div></div>
<footer class="site-footer">
	<div class="container">
		<div class="row">
		<h4>Contact Address</h4>
		<div class="col-md-5">
		<address>
			#Số 1, Võ Văn Ngân, Q.Thủ Đức, TP.HCM.
		</address>
		</div>
		</div>
		<div class="bottom-footer">
			<div class="col-md-5">@Copyright WebDev 2016.</div> 
			<div class="col-md-7"></div>
		</div>
	</div>
</footer>
<script>
  $(document).ready(function () {
    $("#formLogin").validate({
      rules: {
        username: { required: true, minlength: 5},
        password: { required: true, minlength: 5}
      },
      messages: {
        username: { required: "Vui lòng nhập tên đăng nhập !",	minlength: "Ít nhất 5 ký tự!" },
        password: { required: "Vui lòng nhập mật khẩu !", minlength: "Ít nhất 5 ký tự!" }
      }
    });
    
 		// ajaxify form
    function processJson(data) { 
  	    if (data.result == 'fail'){
  	    	$('#failMessage').removeClass('hidden');
  	    	$('#failMessage span').text(data.message);
  	    }
  	    else {
  	    	window.location.href = data.redirect;
  	    }
  	};
    
    $('#formLogin').submit(function(event) {
    	if ($('#formLogin').valid()){
	  		$(this).ajaxSubmit({
	            success: processJson,
	            url: 'login',
	            type: 'post',
	            dataType:  'json'
	      });
    	}
  		event.preventDefault();
  	});
  	
    $('.form-control').change(function (){
    	$('#failMessage').addClass('hidden');
    });
  }); 
</script>

</body>
</html>