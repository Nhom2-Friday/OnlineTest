<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Register</title>
</head>
<body>
	<script>
	$(document).ready(function () {
		$("#formRegister").validate({                 
			rules: {
				username: { required: true, minlength: 6},
				email: { required: true, email: true},
				name: { required: true},
				password: { required: true, minlength: 6},
				confirm: {	required: true, equalTo: "#password-register" },
				term: {required: true}
			},
			messages: {        
				username: { required: "Không để trống !",	minlength: "Ít nhất 6 ký tự!" },
				email: { required: "Không để trống !", email: "Địa chỉ email không hợp lệ !"},
				name: { required: "Không để trống !"},
				password: { required: "Không để trống !",	minlength: "Ít nhất 6 ký tự!" },    
				confirm:{required: "Không để trống !", equalTo:"Không trùng với password"},
				term: { required: "Vui lòng chấp nhận các điều khoản và điều kiện !"}
			}                 
		}); 
		
		// ajaxify form
		function processJson(data) { 
	    if (data.result == 'fail') {
	    	$('#rfMessage span').text(data.message);
	    	$('#sfMessage').addClass('hidden');
	    	$('#rfMessage').removeClass('hidden');
	    }
	    else {
	    	$('#rsMessage span').text(data.message);
	    	$('#rfMessage').addClass('hidden');
	    	$('#sfMessage').removeClass('hidden');
	    	setTimeout(function() {
	    		window.location.href = '${pageContext.request.contextPath}/user-home';
	    	},500);
	    }
  	}
	    
    $('#formRegister').submit(function(event) {
    	if ($('#formRegister').valid()){
	  		$(this).ajaxSubmit({
	        success: processJson,
	        url: '${pageContext.request.contextPath}/register',
	        type: 'post',
	        dataType:  'json'
	      });
    	}
  		event.preventDefault();
  	});
  	
    $('#formRegister .form-control').change(function (){
    	$('#rfMessage').addClass('hidden');
    	$('#rsMessage').addClass('hidden');
    });
	}); 
</script>



<div class="contentContainer container-fluid">

	<div class="form-container row">

		<div class="main-col col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4">
			<h2>Đăng kí</h2>
			<div id="rfMessage" class="hidden"
				style="color: white; background-color: #F44336; margin: 10px 0px; padding: 5px;">
				<span class="h5"></span>
			</div>
			<div id="rsMessage" class="hidden"
				style="color: white; background-color: #F44336; margin: 10px 0px; padding: 5px;">
				<span class="h5"></span>
			</div>
			<form id="formRegister" action="register" method="" role="form">
				<div class="form-group">
					<label for="username">Tên đăng nhập</label> <input name="username"
						type="text" class="form-control" id="username" placeholder="">
				</div>
				<div class="form-group">
					<label for="name">Tên đầy đủ</label> <input name="name" type="text"
						class="form-control" id="name" placeholder="">
				</div>
				<div class="form-group">
					<label for="email">Địa chỉ email</label> <input name="email"
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
				<div class="checkbox">
					<label><input type="checkbox" name="term"> Tôi chấp
						nhận các điều khoản và điều kiện.</label>
				</div>
				<button type="submit" class="btn btn-primary" value="register"
					name="command">Submit</button>
			</form>
			<br>

			<div>
				Đã có tài khoản ?<a href="${pageContext.request.contextPath}/login">
					Đăng nhập.</a>
			</div>
		</div>
	</div>

</div>
	
</body>
</html>