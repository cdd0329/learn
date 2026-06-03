# 实验2 IP协议分析

**班级：软件23-17    姓名：彭湃**

## 1. 实验目的

- 了解IP报文格式，熟悉IP报文各个字段含义、长度

- 掌握基于tcpdump和wireshark软件进行数据包抓取和分析技术

## 2. 实验环境 

- Linux/ Windows 操作系统
- 本地主机或者云主机

## 3. 实验内容

### 3.1 tcpdump 基本用法

tcpdump是一个用于截取网络分组，并输出分组内容的工具。凭借强大的功能和灵活的截取策略，使其成为类UNIX系统下用于网络分析和问题排查的首选工具

tcpdump 支持针对网络层、协议、主机、网络或端口的过滤，并提供and、or、not等逻辑语句来帮助你去掉无用的信息

**参考资料：**

https://www.cnblogs.com/ggjucheng/archive/2012/01/14/2322659.html

https://www.jianshu.com/p/d9162722f189

### 3.2 wireshark基本用法

Wireshark（前称Ethereal）是一个网络封包分析软件。网络封包分析软件的功能是撷取网络封包，并尽可能显示出最为详细的网络封包资料。Wireshark使用WinPCAP作为接口，直接与网卡进行数据报文交换。

网络管理员使用Wireshark来检测网络问题，网络安全工程师使用Wireshark来检查资讯安全相关问题，开发者使用Wireshark来为新的通讯协定除错，普通使用者使用Wireshark来学习网络协定的相关知识。

**参考资料：**

https://www.wireshark.org/#download

https://pc.qq.com/search.html#!keyword=wireshark

https://www.cnblogs.com/csnd/p/11807736.html

https://pc.qq.com/search.html#!keyword=xshell

### 3.3 利用tcpdump抓包，wireshark分析包 

在阿里云主机运行命令traceroute www.baidu.com ，并利用tcpdump抓包。下载文件到本地机器利用wireshark软件进行分析。

**提示：**

- 必须首先执行抓包命令，然后再执行路径追踪命令。抓包命令 tcpdump -i eth0 -w test.cap
- 可使用scp命令或者利用xshell和xftp下载数据包到本地机器。

 1）利用tcpdump抓包，通过wireshark分析捕获的数据包，分析IP的报文结构，将IP协议树中各个名字字段，字段长度，字段信息填入下表。



| 字段名                         | 字段长度 | 字段值 | 字段表达信息 |
| ------------------------------ | -------- | ------ | ------------ |
| Version                        |          |        |              |
| Header length IP               |          |        |              |
| Differentiated  services Filed |          |        |              |
| Total length                   |          |        |              |
| Indentification                |          |        |              |
| flag                           |          |        |              |
| Fragment offset                |          |        |              |
| Time to live                   |          |        |              |
| protocol                       |          |        |              |
| Header checksum                |          |        |              |
| source                         |          |        |              |
| destination                    |          |        |              |



2) 利用wireshark分析并解读相关traceroute命令执行结果。

​    提示：在wireshark 过滤器工具栏设置仅显示ICMP

## 4、实验步骤及结果

### 4.1 在阿里云主机上抓包和执行 traceroute 

**1.进入终端并执行抓包命令**
 首先，确保你以 root 用户或具有相应权限的用户登录到阿里云主机，然后在终端中执行以下命令开始抓包：

```
tcpdump -i eth0 -w test.cap
```

此时，`tcpdump` 会在网卡 `eth0` 上捕获数据包，并将数据保存到 `test.cap` 文件中。

**2.执行 traceroute 命令**
 在抓包命令运行期间，再开一个终端会话（或在当前会话中另开一个终端标签页），执行：

```
traceroute www.baidu.com
```

这会发起路径追踪，发送的数据包将被抓包工具捕获。

**3.停止抓包**
 待 traceroute 命令执行结束后，回到执行 `tcpdump` 的终端，按 **Ctrl+C** 停止抓包。终端会显示捕获的数据包数量等信息。

![image-20250406214451342](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250406214451342.png)

### 4.2 下载抓包文件到本地 

**1.确认抓包文件位置**
 抓包文件 `test.cap` 默认保存在当前目录下。你可以使用 `ls` 命令确认：

```
ls -l test.cap
```

**2.使用 scp 命令下载文件**

在我当前的window电脑的终端输入下面命令即可下载阿里云服务器中的test.cap文件到对应的位置

```
scp root@8.149.242.193:/root/test.cap D:\
```

![image-20250406214623854](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250406214623854.png)

### 4.3. 利用 Wireshark 分析捕获的数据包

**1.下载 Wireshark**:

访问 Wireshark 官方网站：https://www.wireshark.org/download.html。

安装 Wireshark，安装过程中会自动安装 **TShark**（Wireshark 的命令行工具）。

安装完成后，记下 Wireshark 和 TShark 的安装路径

![image-20250406214645091](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250406214645091.png)

##### **2. 配置环境变量**

打开 系统环境变量设置：按下 `Windows` 键，搜索并选择 "环境变量"。在“系统属性”窗口中，点击 "环境变量(N)" 按钮。在系统变量中，找到并选择 "Path"，然后点击 "编辑"。在编辑窗口中，点击 "新建"，并添加 TShark 的安装路径,点击 "确定" 保存修改。

![image-20250406214704604](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250406214704604.png)

**3.使用 `TShark` 分析 `.cap` 文件**

安装wireshark软件，并用其打开filename.cap文件

![image-20250411161800145](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250411161800145.png)

4.分析 IP 报文结构

![image-20250411161822363](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250411161822363.png)

| 字段名                        | 字段长度 | 字段值         | 字段表达信息                                                 |
| ----------------------------- | -------- | -------------- | ------------------------------------------------------------ |
| Version                       | 4 位     | 4              | 表示使用的是 IPv4 协议                                       |
| Header length IP              | 4 位     | 5              | 表示 IP 头部长度为 5 × 4 = 20 字节                           |
| Differentiated services Filed | 8 位     | 0xd4           | DSCP: Unknown (53), ECN: Not-ECT                             |
| Total length                  | 16 位    | 72             | 表示整个 IP 数据报（包括头部和数据）的总长度为 72 字节       |
| Indentification               | 16 位    | 0xf0a2         | 数据包标识符，用于标识该数据包（和分片）                     |
| flag                          | 3 位     | 0              | 标志字段：未设置 DF（Don't Fragment）和 MF（More Fragments） |
| Fragment offset               | 13 位    | 0              | 数据包未分片，偏移量为 0                                     |
| Time to live                  | 8 位     | 64             | TTL 为 64，数据包最多可经过 64 个路由器                      |
| protocol                      | 8 位     | 1              | 协议字段为 ICMP（1）                                         |
| Header checksum               | 16 位    | 0xecc2         | IP 头部校验和                                                |
| source                        | 32 位    | 172.16.240.173 | 源 IP 地址                                                   |
| destination                   | 32 位    | 89.248.165.197 | 目标 IP 地址                                                 |

## 5、实验小结

### 5.1 问题与解决办法：

**问题一:**在 Linux 和 Windows 环境下运行同一软件（如网络抓包工具或性能监测工具）时，发现部分参数选项和输出格式存在差异。

![image-20250406214930010](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250406214930010.png)

**解决办法：**
 查阅该软件在当前系统下的官方文档或使用 `--help` 选项获取支持的参数列表，确保在对应环境中使用正确的命令语法

**问题二：**命令拼写错误导致工具无法运行

![image-20250406220134966](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250406220134966.png)

**解决办法：**
 仔细检查命令拼写，确认工具是否已正确安装。可以通过 `which` 命令确认命令路径，例如：`which tcpdump`。同时使用 `--help` 或 `man` 查看参数格式，避免误用。

### 5.2 心得体会：

1、在 Linux 和 Windows 环境下，同样功能软件的参数可能存在差异，在实际测量中应仔细查看帮助文档，正确设置参数选项。

2、对复杂系统或网络数据的分析，应合理运用过滤与自动化处理工具，否则容易陷入大量无效数据中，降低工作效率。

3、实践过程中遇到权限问题时，不应盲目以 root 身份操作，应该理解背后的安全机制，并采用合适的解决方案保障实验顺利又不损系统安全。