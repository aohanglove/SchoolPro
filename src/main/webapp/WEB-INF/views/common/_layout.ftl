<#macro layoutHead title>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>${title!""} - 日志监控平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/demo/resources/images/favicon.ico">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="/demo/resources/css/main.css">
    <#nested>

</head>
</#macro>

<#macro layoutBody sidebarv breadcrumbf breadcrumbs>
<body>
<!--header-->
    <#include "_header.ftl" >
    <@header></@header>
<div class="container-fluid">
      <div class="row">
      <div class="col-sm-3 col-md-2 sidebar">
      <#include "_sidebar.ftl">
      <@sidebar sidebar=sidebarv></@sidebar>
      </div>
      <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
      <#include "_breadcrumb.ftl">
      <@breadcrumb breadcrumbf=breadcrumbf breadcrumbs=breadcrumbs></@breadcrumb>
      <#nested>
      </div>
</#macro>


<#macro layoutFooter>
<script type="text/javascript" src="/demo/resources/js/jquery-2.1.1.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <#nested>

</body>
</html>
</#macro>
