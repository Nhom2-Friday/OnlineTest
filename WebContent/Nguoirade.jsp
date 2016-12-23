<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Người ra đề</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript" src="Jquery/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/JavarScript/DieuHuongTrang.js"></script>
<script src="js/bootstrap.min.js"></script>
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
	<div class="Nguoiradethi">
		<div class="row">
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<div class="list-group">
					<a href="#" class="list-group-item active"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Người ra đề</a>
					<a href="index.jsp" class="list-group-item"><span class="glyphicon glyphicon-off"></span> Đăng xuất</a> 
				</div>
			</div>
			<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<div class="table-responsive">
					<h4>Danh sách đề thi</h4>
					<table class="table table-bordred">
						<thead>
							<tr>
								<th>Mã đề</th>
								<th>Nội dung đề</th>
								<th>Thời gian</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="l" items="${list}" >	 
								<tr>
								<td>${l.maDe}</td>
								<td>${l.NDungDe}</td>			
								<td>${l.thoigian}</td>
								
														
								</tr>
								
							</c:forEach>	
						</tbody>
					</table>
				</div>
				<div class="row">
						<div class="btn-group btn-group-lg-right" role="group" aria-label="...">
							 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Tạo đề thi</button>
							 <td style="padding-left: 25px;">
											<!-- Modal -->
											<div id="myModal" class="modal fade" role="dialog">
											<div class="modal-dialog">

												<!-- Modal content-->
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title">Thông tin đề thi</h4>
													</div>
													<div class="modal-body">
														<form action="NRD_DeThi" method="post" role="form">
															<div class="form-group">
																<label for="">Mã đề thi</label>
																<input type="text" class="form-control" id="" name="madethi" placeholder="Mã đề thi">
																<label for="">Nội dung đề</label>
																<input type="text" class="form-control" id="" name="ndungde" placeholder="Nội dung đề">
																<label for="">Thời gian</label>
																<input type="text" class="form-control" id="" name="thoigian"placeholder="Thời gian làm bài">
															</div>
															<div class="modal-footer">
															<button type="submit" class="btn btn-primary" id="btn-add" onclick="return alert('Tạo đề thi thành công')">Add</button>
															<button class="btn btn-danger" data-dismiss="modal">Close</button>
															</div>
														</form>
													</div>

												</div>

											</div>
										</div>

									</td>							
						</div>
					</div>
					</div></div></div></div></div></div>
					</br></br></br></br></br></br></br></br></br></br></br></br>
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