---
layout: post
title:  "获取API访问Key/Secret"
date:   2014-09-29 12:00:08
category: api
tags: edited
---

除了[数据推送API](http-push.html)，表单API、数据API以及未来的所有的API都需要恰验证才能访问。
###### 金数据目前仅支持HTTP Basic的验证方式。

您可以在 **个人中心——API** 中，找到自己的API Key和Secret。

![API Key](/images/api-auth.png)

您每次进行API调用时，都需要将API Key&Secret放到HTTP请求的Header中。

例如，使用curl来获得某个表单的定义：

`curl -u bb0e1736d66744495b814b942fd04a80:0e11dda88048ed52cc8758caf06dc6b4 https://jinshuju.net/api/v1/forms/ex27t2`

或通过Ruby来获得某个表单的定义: 

{% highlight ruby %}
require 'rest_client'

response = RestClient::Request.new(
    :method => :get,
    :url => 'https://jinshuju.net/api/v1/forms/ex27t2',
    :user => 'bb0e1736d66744495b814b942fd04a80',
    :password => '0e11dda88048ed52cc8758caf06dc6b4',
    :headers => { :accept => :json,
    :content_type => :json }
  ).execute
results = JSON.parse(response.to_str)

{% endhighlight %}

其他语言，请参照对应的语言及语法实现。
