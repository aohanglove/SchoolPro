<#include "common/_layout.ftl">
<@layoutHead title="网站" >
<link rel="stylesheet" href="/demo/resources/css/bootstrap-select.min.css">
</@layoutHead>
<@layoutBody sidebarv="1" breadcrumbf="学籍管理" breadcrumbs="学籍查询">
<!-- 这是nested的内容-->

<form class="form-inline">
	<div class="form-group">
        <label>学生ID：</label>
    </div>
	<div class="form-group">
                <input class="form-control"/>
        </div>
        <div class="form-group marginl60">
	        <label>学生姓名：</label>
	    </div>
        <div class="form-group">
                <input class="form-control"/>
        </div>
        
        <div class="form-group marginl60">
	        <label>学期：</label>
	    </div>
        
		   <select class="selectpicker">
			    <option>2015年第一学期</option>
			    <option>2015年第二学期</option>
			    <option>2014年第一学期</option>
			  </select>
</from>

</@layoutBody>
<@layoutFooter>

<script src="/demo/resources/js/bootstrap-select.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.selectpicker').selectpicker(); 
  	alert($('.selectpicker').val());
});
</script>
  </@layoutFooter>