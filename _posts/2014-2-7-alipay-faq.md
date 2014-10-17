---
layout: post
title:  "支付宝集成常见错误代码及解决方案"
date:   2014-09-29 12:00:06
category: payment
---

当您已经在金数据中绑定了支付宝后（[查看如何绑定](alipay.html)），用户提交表单时就可以跳转到支付页面。

如果信息有误，会出现错误提示，下面介绍常见的错误代码及处理要点。

### SELLER\_NOT_EXIST
![](/images/alipay-faq-seller-not-exist.png)
这通常是由您的支付宝邮箱填写错误引起的。  
请确认支付方式中填写的支付宝邮箱为您支付宝商家服务的邮箱，不要填写成您的金数据登录邮箱。

### ILLEGAL_PARTNER
![](/images/alipay-faq-illegal-partner.png)
这通常是由您的API或KEY填写错误引起的。  
请确认支付方式中填写的API和KEY与您在支付宝后台获得的完全一致。

### ILLEGAL\_PARTNER_EXTERFACE
![](/images/alipay-faq-illegal-partner-exterface.png)
这通常是由您接口类型设置错误引起的。  
请确认支付方式中选择的接口类型与您在支付宝申请的类型完全一致。例如您在支付宝申请的是担保交易，在金数据内也要选择担保交易，而不能选择即时到帐或者双功能收款。
