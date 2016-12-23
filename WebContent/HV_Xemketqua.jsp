<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Xem kết quả thi</title>
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
			</div>
		</nav>
	</div>
	<div class="Xemketquathi">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
				<div class="list-group">
				<!-- List group -->
					<p class="list-group-item active"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Học viên</p>
					<a href="HV_Thongtincanhan.jsp" class="list-group-item"><span class="glyphicon glyphicon-arrow-left"></span> Quay lại</a>
					<a href="index.jsp" class="list-group-item"><span class="glyphicon glyphicon-off"></span> Đăng xuất</a> 	
					</div>
				</div>
			<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<div class="table-responsive">
					<h4>Chi tiết kết quả thi</h4>
					<table class="table table-bordred">
						<thead>
							<tr>
								<th>Lần thi</th>
								<th>Tên tài khoản</th>
								<th>Thời gian thi</th>
								<th>Thời gian nộp bài</th>
								<th>Điểm thi</th>								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>abccsdsd</td>
								<td>8h30</td>
								<td>9h15</td>
								<td>8/10</td>					
								<td style="padding-left: 25px;"></td>														
							</tr>
							<tr>
								<td>2</td>
								<td>abccsdsd</td>
								<td>9h30</td>
								<td>10h</td>
								<td>7/10</td>					
								<td style="padding-left: 25px;"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>abccsdsd</td>
								<td>14h20</td>
								<td>15h</td>
								<td>10/10</td>					
								<td style="padding-left: 25px;"></td>	
							</tr>
						</tbody>
					</table>
					
					
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</br></br></br></br></br></br></br></br></br></br></br></br></br>
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