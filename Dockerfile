# 使用官方 Python 映像
FROM langflowai/langflow:latest

# 開放必要的端口（假設 LangFlow 預設使用 7860）
EXPOSE 7860

# 啟動 LangFlow
CMD ["langflow","run"]
