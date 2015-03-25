---
layout: post
title:  "数据API"
date:   2014-09-29 12:00:05
category: api
---

数据API用于对表单数据进行维护。

目前，数据API仅支持增加数据，不支持修改、删除以及获取数据。想要获取数据，可以使用[数据推送API](http-push.html)。

### 使用方法

首先确保您有[访问API](api-auth.html)的能力。获得API Key&Secret后，即可通过API提交数据。

{% highlight bash %}
POST https://jinshuju.net/api/v1/forms/1F34Qv
Accept: application/json
Content-Type: application/json
{% endhighlight %}

数据提交请求应该是一个满足表单定义的JSON格式。
###### 需要注意的是，从2015年3月25日起，金数据的单、多选，图片单、多选，下拉框，两级下拉框以及矩阵单选，其选项有`name`与`value`两个部分组成，我们建议您在构建JSON数据时，以`value`提交，一个例子如下：

{% highlight json %}
{
  "field_9": "hPWR",
  "field_10": "CIoI"
}
{% endhighlight%}

如果不满足校验条件（必填/重复等），金数据会返回400，并给出提示如下：

{% highlight json %}
{
    "error": "bad_request",
    "error_description": "{\"field_9\":[\"您对我们的服务满意么？ 必须填\"],\"field_10\":[\"您最喜欢的部分是 必须填\"]}"
}
{% endhighlight%}

如果信息正确，系统会返回201作为响应，并返回整个创建成功的JSON数据给调用者。
