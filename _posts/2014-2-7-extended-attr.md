---
layout: post
title:  "使用扩展属性追踪表单来源"
date:   2014-01-29 12:00:00
category: publish
---

扩展属性是指在数据中附加的除了表单原有字段对应值以外的用于扩展/标记的值。

###### 金数据最多支持1个扩展属性，该功能仅限标准版及以上版本用户使用。

### 使用场景示例

在一次促销活动中，您可能拥有多个促销员，您这时可以将含有不同扩展属性的链接推送给多个促销员，这样每次数据提交都拥有自己的标记（因为数据来自各个促销员的独立活动）。活动结束后，您可以导出数据并按照扩展属性筛选数据，这样您就可以轻松完成结佣流程。

### 详细设置

在您表单的 **发布** —— **表单地址** 页面的上部，直接访问地址内即有扩展属性设置，您可以参考含有扩展属性的表单地址批量生成链接（例如您有100个代理人，您便可以批量生成100个链接）。
	![](/images/extended-attr-index.png)

### 注意事项

1. 通过包含扩展属性链接提交的数据将保存该属性，并会在数据列表页面、单条数据的详情页面以及导出的Excel中展示出来，[数据推送](http-push.html)时也会包含该属性。

2. 扩展属性只用于透明传输，不会作为普通字段显示在表单中，金数据不对其值进行任何处理和转换，亦不参与过滤和报表运算。
