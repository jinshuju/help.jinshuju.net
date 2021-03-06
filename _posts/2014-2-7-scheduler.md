---
layout: post
title:  "定时短信/邮件提醒"
date:   2014-09-29 12:00:08
category: notification
---

### 概述

获取新数据提醒有多种方式，例如设定短信、邮件或者API。在大多数情况下，我们会设定数据提交的当时就发送提醒，但是在某些场景下您可能需要设定数据提交后的将来某个时间再发送提醒，此时您可以在自定义短信/邮件设置中，找到 **在指定的时间发送**，这项功能就是为您的这个需求量身打造的。

### 典型使用场景

包括但不仅限于以下场景，可以使用定时提醒功能。

* 汽车4S店提醒车主3个月后进行首保
* 公司人力资源部门提醒员工转正申请
* 医院提醒接种者按照0-1-6接种乙肝疫苗

### 详细设置

在[自定义邮件推送提醒](email-push.html)或[自定义短信推送提醒](sms-push.html)的设置页面中，均可以设置定时提醒。
	![](/images/sms-push-when-2.png)

* 日期：可以选择是数据提交当天，或者根据表单中的某个 **日期** 字段作为基础，以此设定之前或之后的几天、几周或几个月。
* 时间：设定具体的小时和分钟数。

