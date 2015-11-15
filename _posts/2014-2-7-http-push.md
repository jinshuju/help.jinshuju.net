---
layout: post
title:  "数据推送API"
date:   2014-09-29 12:00:09
category: api
---

### 开启数据推送

如果您想将某个表单新提交的数据推送到指定URL，您可以在表单的 **设置** —— **数据提交** 页面的底部找到将 **数据以JSON格式发送给第三方**，勾选开启后您将看到当前表单的字段对照表。
	![](/images/http-push.png)
填写地址并保存后，金数据会在表单收到新数据后向指定的地址以JSON格式POST该数据。

### 数据推送示例

例如指定URL为`http://url.com/jinshuju/callback`，则金数据以JSON格式POST该数据的Entry信息。

发送的JSON数据以字段的key来展示，字段对照表将列出Key与Label的对应关系。

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

### 字段的对应格式

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

### 注意事项

* 对方服务器需在2秒内返回200作为应答，2秒后金数据将中断连接。
* 如果出错，金数据会最多重试三次。
* 如果连续出错超过10次，该表单的数据推送过程将停止，表单创建者将获得邮件通知。开发者需要在数据推送设置中手工启动，只有成功，数据推送才会继续。
