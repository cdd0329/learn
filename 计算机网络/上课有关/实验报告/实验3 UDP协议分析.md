# 实验3 UDP协议分析

**班级：软件23-17   姓名：彭湃**

## 1. 实验目的

- 掌握运输层UDP协议内容
- 理解UDP协议的工作原理
- 了解应用层和运输层协议的关系

## 2. 实验环境 

- 硬件要求：阿里云云主机ECS 一台。
- 软件要求：Linux/ Windows 操作系统

## 3. 实验内容

UDP（User Datagram Protocol）用户数据报协议是一种无连接的运输层协议，提供面向事物的简单不可靠信息传送服务，服务于很多应用层协议包括网络文件系统（NFS）,简单的网络管理协议（SNMP）,域名系统（DNS）以及简单的文件传输系统（TFTP）。与TCP不同UDP并不提供对IP协议的可靠机制，控制以及错误恢复等。由于UDP比较简单，UDP头包含很少的字节，比TCP负载消耗少。

完成下面实验并填写表格，回答问题。

### 3.1 DNS查询UDP数据分析

  使用tcpdump抓取DNS查询网络通信数据包,利用wireshark分析UDP数据。 

  例如：

dig [www.xju.edu.cn](https://www.yuketang.cn/v2/web/papersummary/2216680/www.xju.edu.cn)

### 3.2 QQ通信UDP数据分析

 利用wireshark抓取QQ网络通信数据包，分析UDP数据。

QQ客户端之间消息传送采用了UDP。国内网络环境非常复杂而且很多用户采用的方式是通过代理服务器共享一条线路上网方式，UDP包能够穿透大部分的代理服务器，因此QQ选择了UDP作为客户之间的通信协议。因此我们打开QQ聊天窗口开启捕获，与好友进行对话，停止捕获就得到了UDP数据包。

## 4. 实验结果与分析

在CMD窗口中输入`WinDump.exe -D`，可以查看系统内的网卡列表。每行的编号及对应的网卡标识，可用于指定特定的网卡。

![image-20250418121514247](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250418121514247.png)

使用命令**WinDump.exe -w filename.cap -i 1**对网卡1进行抓包

![image-20250418121654886](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250418121654886.png)

测试dig环境目录是否配置成功以及是否能够运行

![image-20250418122317770](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250418122317770.png)

通过`dig`命令查询`www.xju.edu.cn`的DNS记录

![image-20250418131218645](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250418131218645.png)

使用Wireshark对抓取的包进行分析

![image-20250418131407450](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250418131407450.png)

![image-20250418131443151](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250418131443151.png)

以下为分析后的结果

#### 字段信息表

| 字段名                      | 字段值 | 字段信息                                         |
| --------------------------- | ------ | ------------------------------------------------ |
| 源端口 (Source Port)        | 55485  | 发送方的端口号                                   |
| 目的端口 (Destination Port) | 653    | 接收方的端口号                                   |
| 长度 (Length)               | 62字节 | UDP头部和数据的总长度（54字节数据 + 8字节UDP头） |
| 校验和 (Checksum)           | 0x0000 | 校验和值为0，校验被禁用，状态为"Unverified"      |

#### UDP报文结构及功能

UDP（用户数据报协议）报文结构由以下四个部分组成，总共占8字节的头部：

1. **源端口 (Source Port)** - 2字节
   - **功能**：标识发送数据的应用程序端口，用于接收方回复时确定目标端口。
   - **示例值**：55485
2. **目的端口 (Destination Port)** - 2字节
   - **功能**：标识接收数据的应用程序端口，用于接收方将数据传递给正确的应用程序。
   - **示例值**：653
3. **长度 (Length)** - 2字节
   - **功能**：表示UDP头部和数据部分的总长度（以字节为单位），包括8字节UDP头部和数据长度。
   - **示例值**：62字节（54字节数据 + 8字节UDP头）
4. **校验和 (Checksum)** - 2字节
   - **功能**：用于检测数据传输过程中的错误，确保数据完整性。
   - **示例值**：0x0000，校验被禁用，状态为"Unverified"

使用wireshark的捕获选项对qq进行抓包

![image-20250420144133695](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250420144133695.png)

![image-20250418124112363](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250418124112363.png)

 利用wireshark抓取QQ网络通信数据包，分析UDP数据。

![image-20250420141619904](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250420141619904.png)

![image-20250420141557099](C:\Users\peng pai\AppData\Roaming\Typora\typora-user-images\image-20250420141557099.png)

### 4.1根据捕获的数据包，分析UDP的报文结构，将UDP协议中个字段名，字段值，字段信息填入下表：

| 字段名                       | 字段值        | 字段信息                                                     |
| :--------------------------- | :------------ | :----------------------------------------------------------- |
| 源端口（Source Port）        | 49995         | 标识发送方应用程序的端口号                                   |
| 目的端口（Destination Port） | 53            | 标识接收方应用程序的端口号（DNS服务默认端口）                |
| 长度（Length）               | 44            | UDP数据报总长度（头部+数据），单位字节（通过IP总长度64 - IP头部20计算得出） |
| 校验和（Checksum）           | 未提供/未验证 | 用于错误检测，数据包中未明确显示校验和值或状态               |

### 4.2通过分析实验结果，UDP报文结构由哪几部分组成，其功能是什么？

1. **源端口（Source Port）**：16位，标识发送方应用程序的端口号。
2. **目的端口（Destination Port）**：16位，标识接收方应用程序的端口号。
3. **长度（Length）**：16位，表示UDP数据报的总长度（包括头部和数据部分），单位为字节。
4. **校验和（Checksum）**：16位，用于检测数据在传输过程中是否发生错误（可选字段，可为0x0000表示未启用）。 

## 5、实验小结

### 5.1 遇到的问题及解决办法

- **问题 1：UDP 报文字段识别不清晰**
  
  - **原因分析：** 未完全展开 UDP 协议树，导致字段未显示完整。
  - **解决办法：** 在 Wireshark 中右键展开“User Datagram Protocol”节点，逐个查看字段名称与数值。
  
  **问题 2：未配置环境目录**
  
  - **原因分析：** 系统中未设置抓包工具或命令所需的环境变量路径。
  - **解决办法：** 手动配置环境变量，或在终端中通过绝对路径调用相关命令。

### 5.2 心得体会

1. 必须以管理员权限运行抓包软件，才能完整捕获系统级别的网络报文；
2. 分析自定义协议时，除了利用 Wireshark 的内置解析，还要结合端口号、IP 地址和报文长度等特征进行排查；
3. 实验报告中应详尽记录抓包命令、过滤表达式和关键字段截图，以保证实验可复现性和可验证性。