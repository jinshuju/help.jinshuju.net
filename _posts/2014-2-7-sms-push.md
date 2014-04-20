---
layout: post
title:  "自定义短信推送提醒"
date:   2014-03-20 12:12:12
category: notification
---

当有新增数据时，您可以设置通过短信将自定义的数据发送到指定的手机号码。

### 进入设置

依次点击：设置 -> 推送提醒 -> 添加短信提醒
![](/images/sms-push-add-btn.png)

### 详细设置
弹出的窗口中可以进行详细的设置
![](/images/sms-push-setting.png)

1. 设置什么条件下来推送数据
  *  推送所有数据
  *  根据表单中某个字段的数值
    ![](/images/sms-push-condition.png)

2. 设置发送时间，
  * 立即发送
  * 在某个时间发送，这个功能需要拓展版或者企业版才能使用，可参看[这里](scheduler.html)
    ![](/images/sms-push-when.png)

3. 设置接受者
  * 指定某个手机号码
  * 使用表单中的手机字段，这个字段必须是来自编辑页面中添加新字段中的手机，而不是字段名称为手机的字段
    ![](/images/sms-push-who.png)

4. 设置短信末尾的签名
  您可以填写所在机构的名称等，建议3-5个汉字
    ![](/images/sms-push-signature.png)

5. 设置短信内容
  您可以使用数据代码来自定义短信内容，代码会在发送时自动替换为数据内容
    ![](/images/sms-push-what.png)
