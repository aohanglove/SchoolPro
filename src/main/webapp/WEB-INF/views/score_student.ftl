<#include "common/_layout.ftl">
<@layoutHead title="网站" >
<link rel="stylesheet" href="/demo/resources/css/bootstrap-select.min.css">
</@layoutHead>
<@layoutBody sidebarv="1" breadcrumbf="学籍管理" breadcrumbs="学籍查询">
<!-- 这是nested的内容-->

<form class="form-inline">
	    <div class="form-group">
            <label>学生ID：</label>
            <input class="form-control"/>
        </div>
        <div class="form-group ">
	        <label>学生姓名：</label>
            <input class="form-control"/>
        </div>
	    
	    <div class="form-group ">
	        <label>学生姓名：</label>
            <input class="form-control"/>
        </div>
	    
	    <div class="form-group ">
	        <label>学生姓名：</label>
            <input class="form-control"/>
        </div>
        
        <div class="form-group ">
	        <label>学生姓名：</label>
            <input class="form-control"/>
        </div>
        
        <div class="form-group ">
	        <label>学生姓名：</label>
            <select class="selectpicker">
			    <option>2015年第一学期</option>
			    <option>2015年第二学期</option>
			    <option>2014年第一学期</option>
		    </select>
        </div>
</from>
</script>
</@layoutBody>
<@layoutFooter>

<script src="/demo/resources/js/bootstrap-select.js"></script>
<script type="text/javascript">
  window.onload=function(){
  $('.selectpicker').selectpicker(); 
  };
  </@layoutFooter>