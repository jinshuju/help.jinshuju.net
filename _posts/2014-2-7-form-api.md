---
layout: post
title:  "表单API"
date:   2014-09-29 12:00:06
category: api
---

表单API用于获取表单定义，目前支持的字段有：

* 单选框 `single_choice`
* 复选框 `multiple_choice`
* 下拉框 `drop_down`
* 日期 `date`
* Email `email`
* 数字 `number`
* 电话 `phone`
* 多行文本 `paragraph_text`
* 单行文本 `single_line_text`

###### 上传文件、商品字段等暂时未支持。

### 使用方法 

首先确保您有[访问API](api-auth.html)的能力。获得API Key&Secret后，即可获取表单的JSON定义。

例如，通过curl来访问：

`curl -u api_key:api_secret https://jinshuju.net/api/v1/forms/ex27t2`

###### 请注意，以下JSON内容中，选项类的部分在数据库中以`name`和`value`两部分组成。   

您获得的JSON表单定义类似如下：

{% highlight json %}
{
    "name": "意见反馈",
    "description": "<p>当您希望从顾客那里获得反馈时，可以使用该表单收集</p>",
    "fields": [
        {
            "field_9": {
                "label": "您对我们的服务满意么？",
                "type": "single_choice",
                "notes": "",
                "private": false,
                "validation": {},
                "choices": [
                    {
                        "name": "非常满意",
                        "value": "zyRl"
                    },
                    {
                        "name": "满意",
                        "value": "8Q6B"
                    },
                    {
                        "name": "一般",
                        "value": "hPWR"
                    },
                    {
                        "name": "不满意",
                        "value": "s8PE"
                    },
                    {
                        "name": "非常不满意",
                        "value": "fLdR"
                    }
                ],
                "allow_other": false
            }
        },
        {
            "field_10": {
                "label": "您最喜欢的部分是",
                "type": "multiple_choice",
                "notes": "",
                "private": false,
                "validation": {},
                "choices": [
                    {
                        "name": "服务1",
                        "value": "CIoI"
                    },
                    {
                        "name": "服务2",
                        "value": "A8li"
                    },
                    {
                        "name": "服务3",
                        "value": "MIWn"
                    }
                ],
                "allow_other": false
            }
        },
        {
            "field_11": {
                "label": "您希望给我们提出的建议是？",
                "type": "paragraph_text",
                "notes": "",
                "private": false,
                "validation": {}
            }
        },
        {
            "field_8": {
                "label": "希望获得联系",
                "type": "single_line_text",
                "notes": "如果您希望我们联系您，可以留下您的微博、邮箱或者QQ号",
                "private": false,
                "validation": {}
            }
        }
    ]
}
{% endhighlight %}
