---
layout: post
title:  "金数据API介绍"
date:   2014-03-02 12:12:12
category: api
---

API为具备编程能力的金数据用户提供了极强的自定义能力。开发者可以通过API获取表单定义，添加数据，或者通过金数据提供的推送能力，将新加的数据推送到自己的软件平台中。

##### 目前，API为内测阶段，为了保证API的质量和使用效率，成为金数据专业版用户，并且收到邀请的才能获得API的使用权限。你可以[点击这里申请API访问](https://jinshuju.net/f/BXyTTR)的权限。

API访问规则：

* 除了数据推送API外，所有的API都需要恰当的API访问权限。目前我们支持HTTP Basic验证的方式。
* 目前，API访问的地址来源为https://jinshuju.net/api/v1/
* 所有的数据传输编码为UTF-8
* 所有的数据格式为JSON

---------

目前支持的API: 

### 数据推送

开启这个API之后，金数据会在收到对应表单数据的时候，将数据通过HTTP POST推送到指定的URL。[查看详情](http-push.html)

### 表单

通过这个API获取表单定义。然后你可以在任意你熟知的平台上重绘这个表单。通过组合[数据API](entry-api.html)，你能够脱离金数据界面绘制和添加数据。[查看详情](form-api.html)

### 数据

通过这个API添加数据。通过表单API获得的表单定义，你能够将所有的数据通过JSON格式以HTTP POST的方式发送到金数据。[查看详情](entry-api.html)
