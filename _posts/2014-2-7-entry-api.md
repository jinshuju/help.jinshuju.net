---
layout: post
title:  "数据API"
date:   2014-02-27 12:12:12
category: api
---

数据API用于对表单数据进行维护。目前，数据API仅支持增加数据，不支持修改、删除以及获取数据。想要获取数据，可以组合使用[数据推送API](http-push.html)。

### 使用方法
首先确保您有[API访问](api-auth.html)的能力。获得api_key/api_secret之后，即可开始通过API提交数据。

{% highlight bash %}
POST https://jinshuju.net/api/v1/forms/1F34Qv
Accept: application/json
Content-Type: application/json
{% endhighlight %}

请求应该是一个满足表单定义JSON格式。如下：
{% highlight json %}
{
  "field_7": "大显国际",
  "field_5": "陈经理"
}
{% endhighlight%}

如果不满足校验条件，系统会返回400，并给出提示：
{% highlight json %}
{
    "error": "bad_request",
    "error_description": "{\"field_7\":[\"客户名称 必须填\"],\"field_5\":[\"被拜访人 必须填\"]}"
}
{% endhighlight%}

如果所有信息正确，系统会返回201作为响应，并返回整个创建成功的JSON数据给调用者。



