<html>
<head lang="en">
<meta charset="UTF-8">
<title>自测登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="/demo/resources/images/favicon.ico">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="/demo/resources/css/main.css">
</head>
<body>
	<div class="container">
		<div class="inner-bg">
			<div style="position: absolute; z-index: 9999;" class="col-sm-8 ">
				<h1>
					<strong>瞎扯瞎扯</strong>
				</h1>
				<!--<div class="description">
					<p>这就是一个测试页面，练习练习写css <a href="">行不行</a>
					, 这就是一个测试页面，练习练习写css</p>
				</div>-->
			</div>
			<div class="row bg-blue">
				<div class="col-sm-8 col-sm-offset-1">
					<img
						src="http://pic.bankofchina.com/bocappd/ad/cnad1/201312/W020140119551914866558.jpg">
				</div>
			</div>
			<div class="row bg-blue">
				<div class="col-sm-6 col-sm-offset-3 form-box">
					<div class="form-top">
						<div class="form-top-left">
							<h3>Login to our site</h3>
							<p>Enter your username and password to log on:</p>
						</div>
						<div class="form-top-right">
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
						</div>
					</div>
					<div class="form-bottom">
						<form class="form-horizontal" action="/demo/login/verify">
							<div class="form-group">
								<label class="col-sm-2 control-label">UserName</label>
								<div class=" col-sm-10">
									<input id="userName" name="userName" type="text"
										class="form-control" placeholder="UserName..">
								</div>
								<div id="nameerror" class="col-sm-10 col-sm-offset-2"><span style="color:red;display:none">userName must be not null</span></div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">Password</label>
								<div class=" col-sm-10">
									<input id="passWord" name="passWord" type="password"
										class="form-control" placeholder="PassWord...">
								</div>
								<div id="passerror" class="col-sm-10 col-sm-offset-2"><span style="color:red;display:none">password must be not null</span></div>
							</div>
							<div class="form-group">
								<div class="col-sm-12 col-sm-offset-2">
									<button id="submit" class="btn btn-default">Sign in</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="row bg-blue"></div>
		</div>
	</div>
</body>
</html>