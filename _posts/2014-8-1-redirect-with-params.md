---
layout: post
title: "填表后跳转时附带字段参数"
date:   2014-08-01 09:30:00
category: api
---

### 设置跳转的附带参数

您可以设置当填表者填表后，附带当前填表的部分内容跳转到指定网址。可供选择的附带参数包括表单中的单/多行文本、单选、多选、数字、邮箱、电话、日期、网址等字段，以及序号和总价（如果表单包含商品字段），您最多可以选择3个。

1. 在表单的设置页面，选择“数据提交”

2. 选择填表者填完表单后“自动打开其他网页”。在填写了网页地址后，勾选需要附加的参数，并保存。
	![select_fields](/images/redirect-with-params.png)

当有用户填写了该表单并提交后，将会附带勾选的参数跳转到网页。例如：
`http://success.test.com/?field_1=%E5%B0%8F%E9%87%91&field_2=18688888888&jamr_h=LS0tCi0gbGlkcGhMCi0gajdaT3d0Ci0gMjAxNC0wOC0wMSAwMzowNTo1MS4yNDIxMDkwMDAgWgo%3D--85cfef90a8c206eb6d80c4b0a158bc97&serial_number=1381`

您可以看到，跳转的网址多了4个参数：serial\_number、field\_1、field\_2和jamr\_h。前3个是您勾选的字段，字段的API\_CODE可以点击上图所示的“字段对照表”查看得到。最后一个jamr\_h是系统自动生成的验证码。您可以通过发送一个GET请求至 https://jinshuju.net/api/v1/jamr\_v 来验证跳转参数的有效性。

### 验证跳转参数的有效性

您可以对跳转附带的参数进行验证，以保证该参数有效或者没有被恶意篡改。请在提交成功转向**10分钟内**发送GET请求至 https://jinshuju.net/api/v1/jamr\_v 进行验证。例如：
`https://jinshuju.net/api/v1/jamr_v?field_1=%E5%B0%8F%E9%87%91&field_2=18688888888&jamr_h=LS0tCi0gbGlkcGhMCi0gajdaT3d0Ci0gMjAxNC0wOC0wMSAwMzowNTo1MS4yNDIxMDkwMDAgWgo%3D--85cfef90a8c206eb6d80c4b0a158bc97&serial_number=1381`

如果返回200则表示验证通过，如果返回400则表示验证失败，失败信息可以查看response JSON中的message。