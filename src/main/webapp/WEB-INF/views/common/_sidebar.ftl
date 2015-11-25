<#macro sidebar sidebar>
<a href="#stuConfig" class="nav-header menu-first" data-toggle="collapse">
	学籍管理
</a>
<ul id="stuConfig" class="nav  nav-pills nav-stacked">
	<li <#if sidebar?? && sidebar == "1">class="menu-second active"<#else>class="menu-second"</#if>><a href="#">学籍查询</a></li>
	<li class="menu-second"><a href="#">学籍录入</a></li>
	<li class="menu-second"><a href="#">学籍修改</a></li>
</ul>
<a href="#scoreConfig" class="nav-header menu-first" data-toggle="collapse">
	成绩管理
</a>
<ul id="scoreConfig" class="nav  nav-pills nav-stacked">
	<li class="menu-second"><a href="">成绩录入</a></li>
	<li class="menu-second"><a href="">学生成绩</a></li>
	<li class="menu-second"><a href="">班级成绩</a></li>
	<li class="menu-second"><a href="">年组成绩</a></li>
	<li class="menu-second"><a href="">学科成绩</a></li>
</ul>
</#macro>