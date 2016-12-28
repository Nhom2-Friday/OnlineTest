<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thông tin học viên</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
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
			</div>
		</nav>
	</div>
	<div class="Thongtincanhan">
		<div class="row">
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<div class="list-group">
					<a href="#" class="list-group-item active"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Học viên</a>
					<a href="HV_Xemdsbaithi.jsp" class="list-group-item">Làm bài thi</a>
					<a href="HV_Xemlaibaithi.jsp" class="list-group-item">Xem lại bài thi</a>
					<a href="HV_Xemketqua.jsp" class="list-group-item">Xem kết quả thi</a>
					<a href="index.jsp" class="list-group-item"><span class="glyphicon glyphicon-off"></span> Đăng xuất</a> 
				</div>
			</div>
		<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
			<div class="panel panel-default">
			  <div class="panel=heading">
			  	<h4 class="panel-title">Thông tin học viên</h4>
			  </div>
			  	<div class="panel-body">
				  	<form method="post" id="contactform" action="" role="form">
					  	<div class="form-group has-feedback">
						    <label for="contactEmail">Email</label>
						    <input type="email" class="form-control" id="contactEmail" placeholder="Email">
						    
					    </div>
					  	<div class="form-group has-feedback">
						    <label for="contactUsername">User Name</label>
						    <input type="text" class="form-control" id="contactUsername" placeholder="User Name">
			
					    </div>
				    	<div class="form-group has-feedback">
				  		<div class="form-group">
						    <label for="contactId">Id</label>
						    <input type="text" class="form-control" id="contactId" placeholder="Id">						    
				    	</div>
				    	<div class="form-group has-feedback">
					  	<div class="form-group">
						    <label for="contactAddress">Address</label>
						    <input type="text" class="form-control" id="contactAddress" placeholder="Address">						    
					    </div>
						<div class="form-group has-feedback">
						<div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
				      		<button id="contactbtn" type="button" class="btn btn-default" onclick="return alert('Cập nhật thành công!')">Lưu</button>
					    </div>
					  	</div>
					  	</div>
					  	</div>
					  	</div>
					</form>			
				</div>
			</div>
		</div>
	</div>
</div></div></div>
</div>
</br></br></br></br>
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

	function validateText(id)
	{
		if($("#"+id).val()==null || $("#"+id).val()=="")
		{
			var div = $("#"+id).closest("div");
			div.removeClass("has-success");
			$('#glypcn'+id).remove();
			div.addClass("has-error has-feedback");
			div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-remove form-control-feedback"></span>');
			return false;
		}
		else
		{
			var div = $("#"+id).closest("div");
			div.removeClass("has-error");
			div.addClass("has-success has-feedback");
			$('#glypcn'+id).remove();
			div.append('<span id="glypcn'+id+'"class="glyphicon glyphicon-ok form-control-feedback"></span>');
			return true;
		}
	}
	$(document).ready(
		function()
		{
			$("#contactbtn").click(function()
			{
				if(!validateText("contactEmail"))
					return false;
				else(validateText("contactUsername"))
				if(!validateText("contactUsername"))
					return false;
				if(!validateText("contactId"))
					return false;
				if(!validateText("contactAddress"))
					return false;
			});
			$( "#contactForm" ).validateText( {
					rules: {
						contactUsername: {
							required: true,
							minlength: 2
						},
						contactId: {
							required: true,
							minlength: 5
						},
						contactAddress: {
							required: true,
							minlength: 5,
						},
						contactEmail: {
							required: true,
							email: true
						},
					},
					messages: {
						contactUsername: {
							required: "Please enter a username",
							minlength: "Your username must consist of at least 2 characters"
						},
						contactId: {
							required: "Please provide a password",
							minlength: "Your password must be at least 5 characters long"
						},
						contactAddress: {
							required: "Please provide a password",
							minlength: "Your password must be at least 5 characters long",
						},
						contactEmail: "Please enter a valid email address",
					},
				});

			});

			
</script>
</body>
</html>