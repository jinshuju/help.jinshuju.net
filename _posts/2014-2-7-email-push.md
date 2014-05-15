---
layout: post
title:  "自定义邮件推送提醒"
date:   2014-03-18 12:12:12
category: notification
---

当有新增数据时，您可以设置通过邮件将自定义的数据发送到指定的邮箱。使用此功能需要您是标准版、拓展版或者企业版用户

### 进入设置

依次点击：设置 -> 推送提醒 -> 添加邮件提醒
![](/images/email-push-add-btn-1.png)

### 详细设置
弹出的窗口中可以进行详细的设置
![](/images/email-push-setting.png)

1. 设置什么条件下来推送数据
  *  推送所有数据
  *  根据表单中某个字段的数值
    ![](/images/email-push-condition.png)

2. 设置发送时间，
  * 立即发送
  * 在某个时间发送，这个功能需要拓展版或者企业版才能使用，可参看[这里](scheduler.html)
    ![](/images/email-push-when.png)

3. 设置接受者
  * 指定某个邮箱
  * 使用表单中的邮箱字段，这个字段必须是来自编辑页面中添加新字段中的邮箱，而不是字段名称为邮箱的字段
    ![](/images/email-push-who.png)

4. 设置邮件标题 
5. 设置邮件内容
  您可以使用数据代码来自定义邮件内容，代码会在发送时自动替换为数据内容
    ![](/images/email-push-what.png)


