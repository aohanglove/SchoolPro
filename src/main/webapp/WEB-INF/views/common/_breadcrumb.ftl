<#macro breadcrumb breadcrumbf="" breadcrumbs="">
<ol class="breadcrumb">
  <li <#if breadcrumbs == ""> class="active" </#if>>${breadcrumbf!""}</li>
  <li <#if breadcrumbs != ""> class="active" </#if>>${breadcrumbs!""}</li>
</ol>
</#macro>