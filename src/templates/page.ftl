<#ftl strip_text=true />

<#--
  Shared, page-related macros, functions, and variables

  @namespace page
-->

<#import "layout/header.ftl" as header />
<#import "layout/footer.ftl" as footer />
<#import "layout/content.ftl" as content />

<#assign title = "Ohio River Valley Soil Seminar" />

<#---
  Default meta tags
-->
<#macro defaultMetaTags>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="format-detection" content="telephone=no">
</#macro>

<#macro seoMetaTags>
    <meta property="og:title" content="${title}">
    <meta property="og:locale" content="en_US">
    <meta property="og:url" content="http://orvss.com">
    <meta property="og:image" content="http://orvss.com/img/orvss-og.png">
    <link rel="canonical" href="http://orvss.com">
</#macro>


<#macro appIcons>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</#macro>


<#macro analytics>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-53908769-1', 'auto');
      ga('send', 'pageview');
    </script>
</#macro>

<#---
  Default page macro
-->
<#macro layout subtitle="">
    <#compress>
        <!doctype html>
        <html lang="${c.lang}">
        <head prefix="og: http://ogp.me/ns#">
            <meta charset="utf-8">
            <title>${title}</title>
            <@defaultMetaTags />
            <@seoMetaTags />
            <@appIcons />
            <link rel="stylesheet" type="text/css" href="${pp.pathTo("/css/styles.css")}">
            <@analytics />
        </head>
        <body>
            </#compress>
            <@header.header subtitle=subtitle />
            <@content.content>
                <#nested />
            </@content.content>
            <@footer.footer />
            <#compress>
        </body>
        </html>
    </#compress>
</#macro>
