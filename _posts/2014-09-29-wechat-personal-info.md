---
layout: post
title: "获取用户的微信资料"
date:   2014-09-29 12:00:07
category: wechat
---

通过微信增强包，您可以收集用户的微信昵称（以及头像）、性别、国家、省市以及OpenID。

首先您要[开启微信增强包](enable-wechat-pack.html)，然后进入您要限制的表单的 **设置** —— **微信增强** 页面，在页面的上部选择“通过金数据公众号收集”或“使用自己的公众号收集”。
	![](http://jinshuju-help-pics.b0.upaiyun.com/images/wechat-personal-info-1.png)

###### 如果您想要更好的收集效果，建议您配合[限制表单只能用微信打开](wechat-only.html)。

### 通过金数据公众号收集

你不需要任何微信公众号。这种情况下，用户将会看见“金数据”的微信公众号信息。  
用户填表之前会提示是否授权金数据获取他的个人信息。同意之后，用户填写并提交表单的动作会将其微信信息记录。
	![](http://jinshuju-help-pics.b0.upaiyun.com/images/wechat-personal-info-2.png)

<h3 id="collect-by-yours">通过你自己的公众号收集</h3>

你需要[配置自己的微信公众号](wechat-config.html)。如果你有公众号，建议勾选这一项，用户会看见你自己的微信公众号信息，能够增强表单的权威感。  
用户填表之前会提示是否授权你的微信公众号获取他的个人信息。同意之后，用户填写并提交表单的动作会将其微信信息记录。

### 数据页面的呈现

当您的表单已经收集到数据后，您可以在 **数据** 页面，通过调整[显示/隐藏列](data.html#show_hide_col)来显示微信资料。你可以交叉过滤这些数据，以获取想要的数据。例如显示微信性别为男的数据条目。
	![](http://jinshuju-help-pics.b0.upaiyun.com/images/wechat-personal-info-3.png)

##### 设置获取信息后，用户只有在确认了授权后才能填写表单，否则无法正常填写表单。
