---
layout: post
title:  "绑定域名"
date:   2014-03-12 12:12:12
category: account
---

### 优势

很对的企业或者团队都有自己的独立域名，通过绑定自定义域名的功能，您可以把类似于 xxx.您的域名.com 这样的二级域名绑定到金数据。这样，您所创建的表单的地址，用户通过您绑定的二级域名就可以直接来访问，类似于 [http://xxx.您的域名.com/f/A1B2C3]()，同时，原来在金数据中的地址依然有效，类似于 [https://jinshuju.net/f/A1B2C3]()。

目前的功能：

* 自定义域名仅支持通过http来访问
* 绑定独立域名后，填写者在提交成功后，不会再看到“注册/登录金数据”的入口。
* “xxx.您的域名.com”中的“xxx”可以任意定制，例如，diaocha，baoming等等更契合您企业业务的域名。
  
### 操作

1. 获取独立域名

首先去购买域名。请务必确认，您拥有自己的域名并能够进行“添加CNAME记录”的操作。接下来的操作请到域名服务商网站后台完成，金数据不提供这部分的技术支持。

2. 备案域名并设置域名指向

根据我国相关法律规定，域名必须完成备案才能进行接入绑定。我们无法帮助您进行域名备案，请自行完成，请谅解。（[域名备案查询地址](http://tool.chinaz.com/beian.aspx)）备案成功后，请在域名服务商后台将域名的CNAME记录设置为”cname.jinshuju.net”。

![create_cname](/images/customize-domain-create_cname.png)

3. 如果您已经成功设置域名指向，请耐心等待域名指向生效。不同的域名服务商，生效时长不相同，一般最长不超过24小时。检查生效方法：点Windows桌面左下角的“开始”，在搜索框中输入“cmd”点击运行，然后输入命令“ping xxx.您的域名.com”，若能成功获得IP地址，即为生效。

![check](/images/customize-domain-check.png)

4. 进入个人中心，进行域名绑定，输入您之前设置的域名以及备案号

![bind_1](/images/customize-domain-bind_1.png)

如果成功的话会显示：

![bind_2](/images/customize-domain-bind_2.png)

5. 我们来看看效果，通过我们刚才绑定的域名来访问表单

![result](/images/customize-domain-result.png)







 

 