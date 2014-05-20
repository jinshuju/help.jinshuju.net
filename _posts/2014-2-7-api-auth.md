---
layout: post
title:  "获取API访问Key/Secret"
date:   2014-03-01 12:12:12
category: api
---

除了[数据推送](http-push.html)API之外，表单和数据以及未来的所有的API都需要恰当的验证才能访问。目前，金数据仅支持HTTP Basic的验证方式。

获得权限的用户，可以在个人设置页面的API中，找到自己的API Key和Secret。

![API Key](/images/api_02_new.png)

每次进行API调用时，都需要将API Key&Secret放到HTTP请求的Header中。例如，使用curl来获得某个表单的定义：

`curl -u bb0e1736d66744495b814b942fd04a80:0e11dda88048ed52cc8758caf06dc6b4 https://jinshuju.net/api/v1/forms/ex27t2`

通过Ruby: 
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

其他语言，请参考对应的语言实现。
