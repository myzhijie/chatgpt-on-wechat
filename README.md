# Chatgpt-on-wechat的Docker镜像
基于 https://github.com/zhayujie/chatgpt-on-wechat 制作的Docker镜像，感谢原作者！
```bash
# 填写下配置文件放在本地，config.json文件内容示例：
{ 
  "open_ai_api_key": "YOUR API KEY"                           # 填入上面创建的 OpenAI API KEY
  "single_chat_prefix": ["bot", "@bot"],                      # 私聊时文本需要包含该前缀才能触发机器人回复
  "single_chat_reply_prefix": "[bot] ",                       # 私聊时自动回复的前缀，用于区分真人
  "group_chat_prefix": ["@bot"],                              # 群聊时包含该前缀则会触发机器人回复
  "group_name_white_list": ["ChatGPT测试群", "ChatGPT测试群2"], # 开启自动回复的群名称列表
  "image_create_prefix": ["画", "看", "找"],                   # 开启图片回复的前缀
  "conversation_max_tokens": 1000,                            # 支持上下文记忆的最多字符数
  "character_desc": "你是ChatGPT, 一个由OpenAI训练的大型语言模型, 你乐于回答人们的各种问题。"  # 人格描述
}
```
运行方式：docker run -d -v 你的配置文件路径:/root/chatgpt-on-wechat/config.json myzhijie/chatgpt-on-wechat
随后根据上一步打印的ID，执行docker logs -f ID，会展示出来登录二维码，微信扫码即可。



