---
layout: post
title:  "微信集成常见错误代码及解决方案"
date:   2014-09-29 12:00:06
category: payment
---

当您已经在金数据表单中集成了微信支付后，用户提交表单时就可以跳转到微信支付页面。

如果信息有误，会出现错误提示，下面介绍常见的错误代码及处理要点。

### 1.签名错误
![](http://jinshuju-help-pics.b0.upaiyun.com/images/wxpay-faq-1.png)
这通常是由于您的商户支付密钥填写错误引起的。
这种情况需要您在微信支付商户重新设置并填写商户支付密钥。

### 2.支付权限检查失败
![](http://jinshuju-help-pics.b0.upaiyun.com/images/wxpay-faq-2.png)
这通常是由于您的支付配置错误引起的。
这种情况需要您额外在微信公众账号的支付配置页面勾选Native原生支付并填写可以接受微信推送相关告警信息的URL，如下图。
![](http://jinshuju-help-pics.b0.upaiyun.com/images/wxpay-faq-2-1.png)


### 3.商户号mch\_id或sub\_mch\_id不存在
![](http://jinshuju-help-pics.b0.upaiyun.com/images/wxpay-faq-3.png)
这通常是由于您的微信支付商户号填写错误引起的。
这种情况需要您登录微信商户平台，进入“账户设置”->“账户信息”->“微信支付商户号” ，查看填写的是否正确。

### 4.支付域名未获授权
![](http://jinshuju-help-pics.b0.upaiyun.com/images/wxpay-faq-4.png)
这通常是由于您的设置支付授权目录设置错误引起的。
这种情况一般是您的支付授权目录添加成了“http://”,应该改成“https://”。

### 5.支付失败
![](http://jinshuju-help-pics.b0.upaiyun.com/images/wxpay-faq-5.png)
这通常是由于您的绑定域名后设置支付授权目录设置错误引起的。
这种情况一般是您的支付授权目录添加成了“https://您的域名/f/”,应该改成“http://您的域名/f/”。