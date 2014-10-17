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

您获得的JSON表单定义类似如下：

{% highlight json %}
{
    "name": "客户拜访记录",
    "description": "<p>在这里记录客户的访问情况</p>",
    "fields": [
        {
            "field_7": {
                "label": "客户名称",
                "type": "single_line_text",
                "notes": "",
                "private": false,
                "validation": {
                    "required": true
                }
            }
        },
        {
            "field_6": {
                "label": "拜访日期",
                "type": "date",
                "notes": "",
                "private": false,
                "validation": {}
            }
        },
        {
            "field_5": {
                "label": "被拜访人",
                "type": "single_line_text",
                "notes": "",
                "private": false,
                "validation": {
                    "required": true
                }
            }
        },
        {
            "field_2": {
                "label": "被拜访人职位",
                "type": "single_line_text",
                "notes": "",
                "private": false,
                "validation": {}
            }
        },
        {
            "field_4": {
                "label": "联系渠道",
                "type": "drop_down",
                "notes": "",
                "private": false,
                "validation": {},
                "choices": [
                    "见面",
                    "邮件",
                    "电话",
                    "网络"
                ],
                "allow_other": false
            }
        },
        {
            "field_1": {
                "label": "联系方式",
                "type": "single_line_text",
                "notes": "<p>填 电话、邮件地址等</p>",
                "private": false,
                "validation": {}
            }
        },
        {
            "field_8": {
                "label": "成单可能性",
                "type": "drop_down",
                "notes": "",
                "private": false,
                "validation": {},
                "choices": [
                    "N/A",
                    "30%",
                    "50%",
                    "80%"
                ],
                "allow_other": false
            }
        },
        {
            "field_3": {
                "label": "备注",
                "type": "paragraph_text",
                "notes": "",
                "private": false,
                "validation": {}
            }
        },
        {
            "field_10": {
                "label": "企业类别",
                "type": "drop_down",
                "notes": "",
                "private": false,
                "validation": {},
                "choices": [
                    "大型欧美外企",
                    "中小欧美外企",
                    "大型国企",
                    "中小国企",
                    "大型民企",
                    "中小民企",
                    "大型日台企业",
                    "中小日台企业",
                    "政府机构"
                ],
                "allow_other": false
            }
        },
        {
            "field_9": {
                "label": "行业类型",
                "type": "drop_down",
                "notes": "",
                "private": false,
                "validation": {},
                "choices": [
                    "制造业",
                    "软件业",
                    "会展业",
                    "金融业",
                    "旅游业",
                    "文化传媒",
                    "政府机构",
                    "其他"
                ],
                "allow_other": false
            }
        }
    ]
}
{% endhighlight %}
