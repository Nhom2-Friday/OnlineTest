<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Làm bài thi</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript" src="Jquery/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/JavarScript/DieuHuongTrang.js"></script>
<script type="text/javascript" src="Jquery/jquery.validate.js"></script>
<script>
			var m=60;
			var s=1;
		function startTime(){

							    if(s==0){
											s=59;
											m=m-1;
										}
								else
								s=s-1;
							    m = checkTime(m);
							    s = checkTime(s);
							    document.getElementById('txt').innerHTML =
							 	m + ":" + s;
							    var t = setTimeout(startTime, 1000);							    
							}
		function checkTime(i) {
    		if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    		return i;
    	
		};
</script>
<script>
			var pos = 0, test, test_status, question, choice, choices, chA, chB, chC, correct = 0;
			var questions = [
			    [ "What is 10 + 4?", "12", "14", "16", "B" ],
				[ "What is 20 - 9?", "7", "13", "11", "C" ],
				[ "What is 7 x 3?", "21", "24", "25", "A" ],
				[ "What is 8 / 2?", "10", "2", "4", "C" ]
			];
			function _(x){
				return document.getElementById(x);
			}
			function renderQuestion(){
				test = _("test");
				if(pos >= questions.length){
					test.innerHTML = "Test Completed";
					//_("test_status").innerHTML = "Test Completed";
					pos = 0;
					correct = 0;
					return false;
				}
				_("test_status").innerHTML = "Question "+(pos+1)+" of "+questions.length;
				question = questions[pos][0];
				chA = questions[pos][1];
				chB = questions[pos][2];
				chC = questions[pos][3];
				test.innerHTML = "<h3>"+question+"</h3>";
				test.innerHTML += "<input type='radio' name='choices' value='A'> "+chA+"<br>";
				test.innerHTML += "<input type='radio' name='choices' value='B'> "+chB+"<br>";
				test.innerHTML += "<input type='radio' name='choices' value='C'> "+chC+"<br><br>";
				test.innerHTML += "<button onclick='returnQuestion()'>Previous</button>";
				test.innerHTML += "<button onclick='checkAnswer()'>Next</button>";
			}
			function checkAnswer(){
				choices = document.getElementsByName("choices");
				for(var i=0; i<choices.length; i++){
					if(choices[i].checked){
						choice = choices[i].value;
					}
				}
				if(choice == questions[pos][4]){
					correct++;
				}
				pos++;
				renderQuestion();
			}
			window.addEventListener("load", renderQuestion, false);
</script>
</head>
<body onload="startTime()">
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
				<div class="Cauhoi">
					<div class="container">
						<div class="row" style="margin:0">
							<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
								<form action="" method="" role="form">
									<div class="row">
										<div class="col-md-8">								
											<h2 id="test_status"></h2>
										<div id="test"></div>													
									</div>
										<div class="col-md-4">
											<h2><div id="txt" style="color:red"></div></h2>
										</div>
									</div>																	
								</form>
								</br>
								<button type="submit" class="btn btn-primary" value="login" name="command"><a href="HV_Xemketqua.jsp" style="color:white">Nộp bài</a></button>
				    		</div>
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