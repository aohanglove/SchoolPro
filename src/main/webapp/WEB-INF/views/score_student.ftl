<#include "common/_layout.ftl">
<@layoutHead title="网站" >
<link rel="stylesheet" href="/demo/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="/demo/resources/css/bootstrap-switch.min.css">
<link href="/demo/resources/css/square/blue.css" rel="stylesheet">

</@layoutHead>
<@layoutBody sidebarv="1" breadcrumbf="学籍管理" breadcrumbs="学籍查询">
<!-- 这是nested的内容-->

<form class="form-inline LH50">
	    <div class="form-group col-md-3">
            <label>学生ID：</label>
            <input class="form-control"/>
        </div>
        <div class="form-group col-md-3">
	        <label>学生姓名：</label>
            <input class="form-control"/>
        </div>
        <div class="form-group col-md-3">
        	<label class="FL">性别：</label>
	        <div class="switch FL">
			    <input name="my-checkbox" type="checkbox" checked />
			</div>
		</div>
		<div class="form-group col-md-3">
        	<label class="FL">性别：</label>
	        <div class="FL">
	        	<label>男</label>
			    <input type="radio" name="iCheck">
			    <label>女</label>
				<input type="radio" name="iCheck" checked>	
			</div>
		</div>
		<div class="form-group col-md-3">
        	<label class="FL">性别：</label>
	        <div class="FL ML20">
	        	<input type="checkbox" name="iCheck-box">
	        	<label class="F10">男</label>
			</div>
			<div class="FL ML20">
				<input type="checkbox" name="iCheck-box">
			    <label class="F10">女</label>
			</div>
			<div class="FL ML20">
				<input type="checkbox" name="iCheck-box">	
				<label class="F10">男女都行</label>
			</div>
		</div>
        <div class="form-group col-md-3">
	        <label>学年：</label>
            <select class="selectpicker">
			    <option>2015年第一学期</option>
			    <option>2015年第二学期</option>
			    <option>2014年第一学期</option>
		    </select>
        </div>
        <div class="t_r">
    		<button type="button" class="btn btn-primary F18">查询</button>
    	</div>
</form>
<HR class="MT30" style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="100%" color=#987cb9 SIZE=1>
 <div id="main" style="height:400px;width:100%" class="MT30"></div>

</@layoutBody>
<@layoutFooter>

<script src="/demo/resources/js/bootstrap-select.js"></script>
<script src="/demo/resources/js/bootstrap-switch.min.js"></script>
<script src="/demo/resources/js/icheck.min.js"></script>
<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.selectpicker').selectpicker(); 
	$("[name='my-checkbox']").bootstrapSwitch('onText', '男');
	$("[name='my-checkbox']").bootstrapSwitch('offText', '女');
	
	 $("[name='iCheck']").iCheck({
	    checkboxClass: 'icheckbox_square-blue',
	    radioClass: 'iradio_square-blue',
	    increaseArea: '20%' // optional
	  });
	  
	  $("[name='iCheck-box']").iCheck({
	    checkboxClass: 'icheckbox_square-blue',
	    radioClass: 'iradio_square-blue',
	    increaseArea: '20%' // optional
	  });
});
</script>
  </@layoutFooter>