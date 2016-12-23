<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Danh sách đề thi</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript" src="Jquery/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/JavarScript/DieuHuongTrang.js"></script>
<script type="text/javascript" src="Jquery/jquery.validate.js"></script>
<script src="js/bootstrap.min.js"></script>
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
							<h1 style="margin:auto; float:center; margin-left:250px; margin-bottom:2px;margin-top:30px; color:red">UTE ONLINE TEST</h1>
							<h3 style="margin:auto; float:center; margin-left:0px; margin-bottom:2px;margin-top:50px; color:blue">Thi Trắc Nghiệm Online Trường đại học Sư Phạm Kỹ Thuật TP.Hồ Chí
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
	<div class="Lambaithi">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
					<div class="list-group">
					<!-- List group -->
					<p class="list-group-item active"><span class="glyphicon glyphicon-user" aria-hidden="true" style="font-size: 22px; color:white"></span> Học viên</p>
					<a href="HV_Thongtincanhan.jsp" class="list-group-item"><span class="glyphicon glyphicon-arrow-left"></span> Quay lại</a>
					<a href="index.jsp" class="list-group-item"><span class="glyphicon glyphicon-off"></span> Đăng xuất</a>	
					</div>
				</div>	
				<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<div class="panel panel-default">
			  		<div class="panel=heading">
			  			<h2 class="panel-title" style="color:red">---Đề thi số 1---</h2>
			  		</div>
			  	<div class="dsbaithi">
				  	<form method="post" id="Dsbaithi" action="" role="form">
				  		<div class="form-group">
						    <label>Mã đề thi:001</label>   
					    </div>
					    <div class="form-group">
						    <label>Môn thi: Toán cao cấp</label>
					    </div>
				  		<div class="form-group">
						    <label>Thời gian làm bài:60p</label>				    
				    	</div>
					  	<div class="form-group">
						    <label>Thời gian thi:7h15-8h15</label>			
					    </div>
						<div class="form-group">
						    <div class="col-sm-offset-2 col-sm-10">
					      		<button id="contactbtn" type="button" class="btn btn-default"><a href="HV_Lambaithi.jsp">Làm bài thi</a></button>
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
	</div>
	</div>
	</div>
	</div></div>
	</br></br></br></br></br></br></br></br></br></br>
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
</body>
</html>