---
layout: post
title:  "金数据API介绍"
date:   2014-09-29 12:00:10
category: api
---

金数据API为具备编程能力的用户提供了极强的扩展功能。  
开发者可以通过表单API获取表单定义、通过数据API追加数据或通过数据推送API将新提交的数据推送到自己的平台。

您可以在 **个人中心** —— **API** 来开启您的API支持及[获取API Key/Secret](api-auth.html)。

###### API模块仅对标准版及以上版本用户开放，3天标准版试用期内无法开启API模块。

### API访问规则

* 所有的数据格式为JSON
* 所有的数据传输编码为UTF-8
* 目前，API访问的地址来源为https://jinshuju.net/api/v1/
* 除了数据推送API外，所有的API都需要恰当的API访问权限。目前我们仅支持HTTP Basic验证的方式。

### 目前提供的API

1. [数据推送API](http-push.html)  
	开启数据推送API的表单收到新数据时，金数据会将该数据通过HTTP POST推送到指定的URL。

2. [表单API](form-api.html)  
	您可以通过该API获取表单定义，然后你可以在任意你熟知的平台上重绘这个表单。通过结合[数据API](entry-api.html)，您可以脱离金数据界面绘制和添加数据。
	
3. [数据API](entry-api.html)  
	您可以通过这个API添加数据。您能够将所有的数据通过JSON格式以HTTP POST的方式发送到对应的表单。
