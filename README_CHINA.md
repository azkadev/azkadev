# Telegram 客户端

**Telegram Client** 是一个用于与 Telegram 客户端实时交互的库，因此您可以创建非官方的 Telegram 应用程序/机器人/用户机器人

- 🇮🇩 [Indonesia](https://github.com/azkadev/telegram_client/blob/main/README.md)
- 🇨🇿 [Afrika](https://github.com/azkadev/telegram_client/blob/main/README_AFRIKA.md)
- 🇨🇳 [China](https://github.com/azkadev/telegram_client/blob/main/README_CHINA.md)
- 🏴󠁧󠁢󠁥󠁮󠁧󠁿 [English](https://github.com/azkadev/telegram_client/blob/main/README_ENGLISH.md)
- 🇮🇳 [India](https://github.com/azkadev/telegram_client/blob/main/README_INDIA.md)
- 🇮🇩 [Jawa](https://github.com/azkadev/telegram_client/blob/main/README_JAWA.md)
- 🇯🇵 [Jepang](https://github.com/azkadev/telegram_client/blob/main/README_JEPANG.md)
- 🇰🇷 [Korea](https://github.com/azkadev/telegram_client/blob/main/README_KOREA.md)
- 🇷🇺 [Russia](https://github.com/azkadev/telegram_client/blob/main/README_RUSSIA.md)
- 🇮🇩 [Sunda](https://github.com/azkadev/telegram_client/blob/main/README_SUNDA.md)
- 🇹🇭 [Thailand](https://github.com/azkadev/telegram_client/blob/main/README_THAILAND.md)

## 创建 Telegram Fire

要使用这个库，你需要**api_id**和**api_hash**

请创建您自己的 https://my.telegram.org/auth

＃＃ 事实

- 重建了这个库，因为可能大多数其他人都对以前的库感到困惑，因为它受我自己的依赖关系的约束，没有文档。

- 始终使用最新的 tdlib 进行更新，因此您不必等待我更新。

＃＃ 特征

- [x] **非常快**异步库（**非阻塞线程**）
- [x] **易于使用**

＃＃ 例子

-[Tdlib Gram]（https://github.com/azkadev/tdlib_gram）
- [简单示例]（https://github.com/azkadev/telegram_client/tree/main/quickstart）

＃＃ 安装

在安装之前，请确保您了解 dart/flutter 的基础知识，至少您已经在计算机/设备上安装了 flutter/dart。 Flutter 网站


-**仅限 Dart / Cli，无 gui**
如果您想在没有 GUI 的情况下使用它，您需要编译并安装 [Tdlib](https://github.com/tdlib/td) 如果您无法编译，您可以在这里下载编译好的库 [Tdlib](https://github.com/azkadev/telegram_client/releases/tag/tdlib) 根据您的操作系统搜索并手动安装/将其放入您的项目中

```bash
dart pub 添加 telegram_universe
```

-**Flutter 图形用户界面**
基本与 dart 相同，不同之处在于您不需要手动安装 tdlib
只需添加命令

```bash
Flutter Pub 添加 tdlib_library
```

## 文档

### 确保初始化

强制方法可以在**on**之后/**on**方法之前自由调用，但我建议在**on**之前调用

**例子：**

```飞镖
电报客户端.确保初始化（）；
```


### 已初始化

此方法必须在**on**方法之后调用，因为它用于处理更新。

**例子：**

```飞镖
等待telegramClient.initialized（）；
```

＃＃＃ 在

此 on 方法对于从调用/更新 tdlib 获取数据更新很有用

**例子：**

```飞镖
telegramClient.on("update", (地图更新) async {
打印（更新）；
});
```


### 创建客户端

要创建新客户端，请确保调用该方法。

**例子：**

```飞镖
最终 new_tdlib_client_id = telegramClient.createClient();
打印（“新的 Tdlib 客户端 ID：${new_tdlib_client_id}”）；
```


### 调用

要调用电报 tdlib api，您需要直接阅读文档

- [Tdlib 文档](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_function.html) 易于公众阅读
- [Tdlib Tl](https://github.com/tdlib/td/blob/master/td/generate/scheme/td_api.tl) 是最新且最有用的，如果你使用最新的 tdlib，它可以直接自行编译

这里我只提供数据地图参数，这个map/json包含几个重要的key


|键 |描述 |价值 |必填 |
|----------------|----------------------------------------------------------------------------------------------------------------|------------|--------------------------------------------------------------------------------|
| **@type** |这充满了来自 tdlib 的方法 | **字符串** | **是** |
| **@客户端ID** |这包含来自 **createClient** 方法的客户端 ID | **整数** | **如果对于同步方法有一些是强制性的，有些则不是** |
| **@额外** |填写唯一ID，因为异步方法不直接返回数据，所以需要一个extra作为key来返回数据| **字符串** | **不** |


如果您已经填写了必需的参数，我们将继续介绍如何调用 API。莱格拉姆

-**设置日志详细程度**
因为这是一个日志方法，所以使用同步方法
并且密钥 **@client_id** 不是必填项

例子：


```飞镖
telegramClient.invokeSync（
tdlib_scheme.SetLogVerbosityLevel.创建（
新的详细程度：0，
).toJson()，
（此处似有缺失，请提供更正后的文本）。
```

-**发送消息**
要使用此库发送消息，请确保客户端已登录。
SendMessage 文档参考：https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_message.html

```飞镖

/// 从 createClient 获取或更新
int客户端ID=1；
final getMe = await telegramClient.invoke({
"@type": "获取我",
"@client_id": 客户端 ID，
});
打印（获取我）；
等待 telegramClient.invoke({
"@type": "sendMessage",
"@client_id": 客户端 ID，
"chat_id": getMe["id"],
“选项”： {
"@type": "messageSendOptions",
"disable_notification": true,
}，
"输入消息内容": {
"@type": "inputMessageText",
“文本”： {
"@type": "formattedText",
“文本”：“Hello World”，
}
}
});
```

以上只是一个例子，要使用另一种方法，只需填写参数数据，确保参数键是按照表格要求填写的，我的意思是有几个键是必须填写的，如果没有填写，则会发送错误数据。

＃＃ 帮助

**难的**？我尽可能地**完善**了这个**库**，并**努力让它**易于阅读和**尽可能地**使用**。

如果**你**仍然**感到**困难**和**困惑**，请尝试**免费**加入**我们的**小组**

- [电报]（https://t.me/DEVELOPER_GLOBAL_PUBLIC）
- [Discord](https://discord.gg/h4qanyN7)

**加入之前**请确保您使用清晰的个人资料**，我们不介意您是谁，以及您的等级，但**请确保**您有用户名和个人资料照片**，并尝试在群组中聊天**，而不是私人聊天**，因为它是一个公共群组，其他人可能会感到困惑**。如果您**不遵守**此规定，您可能无法访问群组聊天，并且会被禁止**。解决方案是使用第二个帐户，因为被禁止后我们将无法快速做出反应。


## 还有其他问题吗？

您有以下问题吗？

- **令人困惑 / 不易使用**
对使用该程序感到困惑，甚至感到头晕或恶心？因为 tdlib 数据复杂？

- **滞后/无法扩展业务**
您是否觉得这很滞后并且无法扩展到业务？

是的，我们已经尽力了，我们只遵循默认标准，它不会滞后，实际上可以用于业务规模，但是 **tdlib** 非常重，浪费 **I/O** / **内存**

是的，我已经将它用于我的个人事务。是的，尽管我的代码很高效并且不会阻塞线程，但它确实会浪费资源。这也是由很多因素造成的，比如你的代码风格和代码语言。

如果您想要更多功能并且可以轻松实现业务规模，您可能会对我的这个项目感兴趣。

[通用公共语言]（https://github.com/generalpubliclanguage）

**什么是语言**代码？这是一种**代码语言**，**专门**为您轻松创建**任何项目**而设计，并且具有易于理解的代码风格**和比 tdlib **更简单**的**数据结构**

代码语言具有内置功能，因此您不必费心将这或那添加到您的项目中。

我们调查了很久，其实这个问题在 **tdlib** 和 **dart** 项目中都存在

tdlib 比较耗资源，dart 为了隔离死循环线程比较重，而且释放内存也要好几分钟，所以如果更新比较多的话，会比较浪费，特别是业务规模需要很多客户端的时候。

因此，**通用公共语言**代码语言应运而生，可以满足您的需求。

如果您觉得我需要立即更新，请按照以下步骤帮助我。

## 支持我

如果您发现这个程序有用，您可以通过 [GITHUB AZKADEV](https://github.com/azkadev) 支持我，该链接包含我的社交媒体和赞助商信息。我不介意你关注/捐一点钱

- https://www.patreon.com/c/azkadev
- https://opencollective.com/azkadev
- https://paypal.me/azkaaxeliongibran
- https://paypal.me/azkadev

谢谢


阿兹卡德夫 - 2025年7月18日


## 标签

-tdlib dart
-tdlib颤振
- 电报飞镖
- 电报颤振
- 电报客户端 dart
- Telegram 客户端 Flutter