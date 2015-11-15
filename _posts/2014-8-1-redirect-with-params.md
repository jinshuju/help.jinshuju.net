---
layout: post
title: "填表后跳转时附带字段参数"
date:   2014-09-29 12:00:00
category: api
---

### 设置跳转的附带参数

您可以设置填表者点击提交后，附带当前表单的部分内容跳转到指定网址。

目前可供选择的附带参数包括表单中的单/多行文本、单选、多选、数字、邮箱、电话、日期以及网址等字段。如果表单中包含商品字段，则还可以附带序号和总价。您最多可以选择3个附带参数。

在表单的 **设置** —— **数据提交** 页面的 **填写者填写完表单后** 选择“自动打开其他网页”，填写您要跳转的网址，并勾选需要附加的参数。
	![select_fields](/images/redirect-with-params.png)

当用户填写了该表单并提交后，将会附带勾选的参数跳转到网页。
例如：
`http://success.test.com/?field_1=xxx&field_2=xxx&jamr_h=xxx&serial_number=xxx`

跳转的网址包含4个参数：`serial_number`、`field_1`、`field_2`和`jamr_h`。
前3个是您勾选的字段，字段的API Code可以点击上图所示的“字段对照表”查看得到。`jamr_h`是系统自动生成的验证码。您可以通过发送一个GET请求至 `https://jinshuju.net/api/v1/jamr_v` 来验证跳转参数的有效性。

### 验证跳转参数的有效性

您可以对跳转附带的参数进行验证，以保证该参数有效或者没有被恶意篡改。

您需要在提交成功转向后的 **10分钟内** 发送GET请求至 `https://jinshuju.net/api/v1/jamr_v`进行验证。

例如：
`https://jinshuju.net/api/v1/jamr_v?field_1=xxx&field_2=xxx&jamr_h=xxx&serial_number=xxx`

如果返回200则表示验证通过，如果返回400则表示验证失败，失败信息可以查看response JSON中的message。
