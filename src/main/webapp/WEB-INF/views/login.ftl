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
	<div class="backstretch" style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 100%; width: 100%; z-index: -999999; position: fixed;">
		<img src="http://www.gbtags.com/gb/networks/uploads/76bd0870-eff6-4bfd-91c9-f1aa2d2d3122/bootstrap-login-forms/form-2/assets/img/backgrounds/2.jpg" style="position: absolute; width: 100%; height: 100%; z-index: -999999;">
	</div>
	<div class="container">
		<div class="inner-bg">
			<div class="row">
                <div class="col-sm-8 col-sm-offset-2 text-white">
                    <h1><strong>铁力一中</strong> 登录</h1>
                    <div class="description">
                    	<p>
                        	这只是一个测试页面，主要用来显示图表 
                    	</p>
                    </div>
                </div>
            </div>
			<div class="row">
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
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">Password</label>
								<div class=" col-sm-10">
									<input id="passWord" name="passWord" type="password"
										class="form-control" placeholder="PassWord...">
								</div>
							</div>
							<#if returnCode?? && returnCode != 11>
								<div class="col-sm-10 col-sm-offset-2">
									<span style="color:red;">${returnMessage!""}</span>
								</div>
							</#if>
							<div class="form-group">
								<div class="col-sm-12 col-sm-offset-2">
									<button id="submit" class="btn btn-default">Sign in</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="row"></div>
		</div>
	</div>
</body>
</html>