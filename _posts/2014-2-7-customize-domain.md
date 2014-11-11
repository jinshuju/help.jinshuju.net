---
layout: post
title:  "绑定域名"
date:   2014-03-12 12:12:12
category: account
---

### 为什么要绑定域名

很多企业和团队都有自己的独立网站及域名。金数据向企业版用户提供域名绑定功能，您可以把类似于`xxx.您的域名.com`这样的二级域名用在您的表单展示上。例如`https://jinshuju.net/f/A1B2C3`在绑定域名后，用户便可以通过`http://xxx.您的域名.com/f/A1B2C3`来填表，这样可以增强表单的权威性。请注意，原来的地址依然有效。

#### 注意事项：

* 自定义域名仅支持通过http来访问。
* 对于使用自定义域名发布的表单，填写者提交后，将不会看到“注册/登录金数据”的字样。
* `xxx.您的域名.com`中的`xxx`可以任意定制。例如您可以使用`diaocha`、`baoming`等更契合您表单用途的二级域名。
  
### 域名绑定流程

##### 请务必确认，您拥有自己的域名并能够进行“添加CNAME记录”的操作，另根据我国相关法律规定， **域名必须完成备案才能进行接入绑定**。我们无法帮助您进行域名备案，请谅解。（[点此查询域名备案情况](http://tool.chinaz.com/beian.aspx)）

1. 请在域名服务商后台将二级域名的CNAME记录设置为`cname.jinshuju.net`。  
图示仅供参考，不同服务商后台略有不同。
	![](http://jinshuju-help-pics.b0.upaiyun.com/images/customize-domain-create_cname.png)

2. 如果您已经成功设置域名指向，请耐心等待设置生效。  
不同的域名服务商，生效时长不相同，一般最长不超过24小时。  
检查生效方法：点Windows桌面左下角的“开始”，在搜索框中输入`cmd`点击运行，然后输入命令`ping xxx.您的域名.com`，若能成功获得IP地址，即为生效。
	![](http://jinshuju-help-pics.b0.upaiyun.com/images/customize-domain-ping.png)

3. 进入 **个人中心** —— **绑定域名**，在页面的底部输入您之前设置的二级域名以及备案号。
	![](http://jinshuju-help-pics.b0.upaiyun.com/images/customize-domain-1.png)

4. 当您看到以下提示时，表明绑定成功。
	![](http://jinshuju-help-pics.b0.upaiyun.com/images/customize-domain-2.png)
