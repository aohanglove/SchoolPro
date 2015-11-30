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
require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });
        
        // 使用
        require(
            [
                'echarts',
                'echarts/chart/line' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main')); 
                
                option = {
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['邮件营销','联盟广告','视频广告','直接访问','搜索引擎']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data : ['周一','周二','周三','周四','周五','周六','周日']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'邮件营销',
            type:'line',
            stack: '总量',
            data:[120, 132, 101, 134, 90, 230, 210]
        },
        {
            name:'联盟广告',
            type:'line',
            stack: '总量',
            data:[220, 182, 191, 234, 290, 330, 310]
        },
        {
            name:'视频广告',
            type:'line',
            stack: '总量',
            data:[150, 232, 201, 154, 190, 330, 410]
        },
        {
            name:'直接访问',
            type:'line',
            stack: '总量',
            data:[320, 332, 301, 334, 390, 330, 320]
        },
        {
            name:'搜索引擎',
            type:'line',
            stack: '总量',
            data:[820, 932, 901, 934, 1290, 1330, 1320]
        }
    ]
};
                    
        
                // 为echarts对象加载数据 
                myChart.setOption(option); 
            }
        );
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