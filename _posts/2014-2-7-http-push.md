---
layout: post
title:  "数据推送API"
date:   2014-03-03 12:12:12
category: api
---

指定推送之后，金数据会在收到数据之后向指定的地址POST新数据的JSON格式。
例如指定URL, 如 `http://url.com/jinshuju/callback`
金数据发送该数据的entry信息，以HTTP POST的方式发送JSON格式的数据。

发送的JSON数据以字段的key来展示。key与label的对照关系，在数据推送页面能够展示出来。

{% highlight bash %}
POST http://url.com/jinshuju/callback
Content-Type: application/json
X-Requested-By: jinshuju
{% endhighlight %}

{% highlight json %}
{
    "form": "xJfeTv",
    "entry": {
        "field1": 123,
        "field2": "Hello, World",
        "field3": "It's very good."
    }
}
{% endhighlight %}

### 字段类型的对应格式

<table>
  <tr>
    <th>金数据字段</th>
    <th>JSON</th>
    <th>样例</th>
  </tr>
  <tr>
    <td>单行文字，多行文字，邮箱，电话</td>
    <td>string</td>
    <td>"你好，世界"</td>
  </tr>  
  <tr>
    <td>数字</td>
    <td>number</td>
    <td>123.4</td>
  </tr>
  <tr>
    <td>单选，下拉框，图片单选</td>
    <td>string</td>
    <td>"男"</td>
  </tr>
  <tr>
    <td>多选，图片多选</td>
    <td>Array</td>
    <td>["篮球","足球"]</td>
  </tr>
  <tr>
    <td>地址</td>
    <td>Object</td>
    <td>{"province":"陕西", "city":"西安", "address":"锦业一路软件园"}</td>
  </tr>
  <tr>
    <td>日期</td>
    <td>string</td>
    <td>"2012-04-16"</td>
  </tr>
  <tr>
    <td>评分</td>
    <td>integer</td>
    <td>14</td>
  </tr>

</table>

### 注意：

* 对方服务器需在2秒内返回200作为应答。2秒后金数据将中断连接。 
* 如果出错，金数据会重试最多三次。
* 如果连续出错超过10次，金数据将停止该表单的数据推送。开发者将获得邮件通知。开发者需要在对应的界面中手工启动，只有成功，数据推送才会继续。