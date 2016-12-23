<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Thông tin cá nhân admin</title>
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
	<div class="Thongtincanhan">
		<div class="row">
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<div class="list-group">
					<a href="#" class="list-group-item active"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Quản lý tài khoản</a>
					<a href="index.jsp" class="list-group-item"><span class="glyphicon glyphicon-off"></span> Đăng xuất</a> 
				</div>
			</div>
			<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<div id ="dstk" class="table-responsive">
					<h4>Danh sách tài khoản</h4>
					<table class="table table-bordred">
						<thead>
							<tr>
								<th>UserName</th>
								<th>Password</th>
								<th>Email</th>
								<th>Phân quyền</th>
								<th>Thao tác</th>
							</tr>
						</thead>
						<tbody id="dstk">
						
							<c:forEach var="l" items="${list}" >	 
								<tr>
								<td>${l.userName}</td>
								<td>${l.pssword }</td>			
								<td>${l.email}</td>
								<td>
									<select id="${l.userName}" class="form-comtrol mySelect">
										<option value="adm">Admin									
										</option>
										<option value="stu">Học viên									
										</option>
										<option value="nrd">Người ra đề									
										</option>
										<option value="qtkt">Quản trị kì thi								
										</option>
										<option value="qlnhch">Quản lý ngân hàng câu hỏi						
										</option>
									</select>
									<c:choose>
										<c:when test="${l.perUser=='adm'}">
											<script>
												var s = document.getElementById('<c:out value="${l.userName}"></c:out>');
												s.selectedIndex = 0;
											</script>
										</c:when>
										<c:when test="${l.perUser=='stu'}">
										<script>
											var s = document.getElementById('<c:out value="${l.userName}"></c:out>');
												s.selectedIndex = 1;
												</script>
										</c:when>
										<c:when test="${l.perUser=='nrd'}">
										<script>
										var s = document.getElementById('<c:out value="${l.userName}"></c:out>');
												s.selectedIndex = 2;
												</script>
										</c:when>
										<c:when test="${l.perUser=='qtkt'}">
										<script>
										var s = document.getElementById('<c:out value="${l.userName}"></c:out>');
												s.selectedIndex = 3;
												</script>
										</c:when>
										<c:when test="${l.perUser=='qlnhch'}">
										<script>
										var s = document.getElementById('<c:out value="${l.userName}"></c:out>');
												s.selectedIndex = 4;
												</script>
										</c:when>
										<c:otherwise>
										<script>
										var s = document.getElementById('<c:out value="${l.userName}"></c:out>');
												s.selectedIndex = -1;
												</script>
										</c:otherwise>
									</c:choose>
								</td>
								<td><button type="button" class="btn btn-default">Xóa tài khoản</button></td>						
								</tr>
								
							</c:forEach>
						<tbody>	
					</table>					
				</div>
	<div id="editmodal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Thêm tài khoản</h4>
					<div id="rfailMessage" class="hidden"
						style="color: white; background-color: #F44336; margin: 10px 0px; padding: 5px;">
						<span class="h5"> Thêm không thành công, vui lòng thử lại !</span>
					</div>
					<div id="rsuccessMessage" class="hidden"
						style="color: white; background-color: #43A047; margin: 10px 0px; padding: 5px;">
						<span class="h5"> Thêm thành công !</span>
					</div>
				</div>
				<div class="modal-body">
					<form id="registerForm" action="register" method="" role="form">
						<div class="form-group">
							<label for="username">Tên đăng nhập</label> <input name="username"
								type="text" class="form-control" id="username" placeholder="">
						</div>
						<div class="form-group">
							<label for="email">Email</label> <input name="email"
								type="text" class="form-control" id="email" placeholder="">
						</div>
						<div class="form-group">
							<label for="password-register">Mật khẩu</label> <input
								name="password" type="password" class="form-control"
								id="password-register" placeholder="">
						</div>
						<div class="form-group">
							<label for="confirm">Xác nhận mật khẩu</label> <input
								name="confirm" type="password" class="form-control" id="confirm"
								placeholder="">
						</div>
						<button type="submit" class="hidden" id="registerFormSubmit">Submit</button>
					</form>
				</div>
				<div class="modal-footer">
					<label for="registerFormSubmit" class="btn btn-primary">Xác nhận</label>
					<button type="button" class="btn btn-default" data-dismiss="modal">Huỷ</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Success PopUp Modal -->
	<div id="success-pu" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content"
				style="text-align: center; padding: 10px; line-height: 4em; color: darkgreen;">
				<!-- Modal content-->
				<span class="h4"><b>Thay đổi thành công !</b></span>
			</div>
		</div>
	</div>

	<!-- fail PopUp Modal -->
	<div id="fail-pu" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content"
				style="text-align: center; padding: 10px; line-height: 4em; color: red">
				<!-- Modal content-->
				<span class="h4"><b>Error, thay đổi thất bại !</b></span>
			</div>
		</div>
	</div>		
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
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