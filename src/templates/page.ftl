<#ftl strip_text=true />

<#--
  Shared, page-related macros, functions, and variables

  @namespace page
-->


<#---
  Default meta tags
-->
<#macro defaultMetaTags>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta name="format-detection" content="telephone=no">
</#macro>

<#---
  Default page macro
-->
<#macro layout>
  <#compress>
    <!doctype html>
    <html lang="${c.lang}">
    <head>
      <meta charset="utf-8">
      <title>test</title>
      <@defaultMetaTags />
      <#if environment == "dev">
        <link rel="stylesheet" type="text/css" href="${pp.pathTo("/css/styles.css")}">
      <#else>
        <link rel="stylesheet" type="text/css" href="${pp.pathTo("/css/" + styles["styles.css"])}">
      </#if>
    </head>
    <body>
      <meta itemprop="dateModified" content="${pp.now?iso("America/Los_Angeles")}">
      <div class="page">
        </#compress>
        <#nested />
        <#compress>
      </div>
    </body>
    </html>
  </#compress>
</#macro>
