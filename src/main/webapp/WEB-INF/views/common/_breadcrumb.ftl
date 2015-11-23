<#macro breadcrumb title="" subtitle="" >
<ol class="breadcrumb">
  <li <#if subtitle == ""> class="active" </#if>>${title!""}</li>
  <li <#if subtitle != ""> class="active" </#if>>${subtitle}</li>
</ol>
</#macro>