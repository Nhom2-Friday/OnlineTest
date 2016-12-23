<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Xem lại bài thi</title>
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
	<div class="Xemlaibaithi">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
				<div class="list-group">
				<!-- List group -->
					<p class="list-group-item active"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Học viên</p>
					<a href="HV_Thongtincanhan.jsp" class="list-group-item"><span class="glyphicon glyphicon-arrow-left"></span> Quay lại</a>
					<a href="index.jsp" class="list-group-item"><span class="glyphicon glyphicon-off"></span> Đăng xuất</a>  </div>
				</div>
	<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<div class="table-responsive">
					<h4>Chi tiết bài thi</h4>
					<table class="table table-bordred">
						<thead>
							<tr>
								<th>Câu hỏi</th>
								<th>Nội dung</th>
								<th>Trả lời</th>
								<th>Đáp án</th>							
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>1+1=?</td>
								<td>A</td>
								<td>B</td>					
								<td style="padding-left: 25px;"></td>														
							</tr>
							<tr>
								<td>2</td>
								<td>3-1=?</td>
								<td>A</td>
								<td>A</td>
								<td style="padding-left: 25px;"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>5+5+6+3=?</td>
								<td>C</td>
								<td>C</td>				
								<td style="padding-left: 25px;"></td>	
							</tr>
						</tbody>
					</table>		
				</div>
				<button type="submit" class="btn btn-primary" value="login" name="command"><a href="HV_Xemketqua.jsp" style="color:white">Xem kết quả thi</a></button>
	</div>
</div></div></div></div></div>
</body>
</html>