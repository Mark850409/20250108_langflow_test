# 使用官方 Python 映像
FROM langflowai/langflow:latest

# 開放必要的端口（假設 LangFlow 預設使用 7860）
EXPOSE 8080

# 啟動 LangFlow
CMD ["python", "-m", "langflow", "run", "--host", "0.0.0.0", "--port", "8080"]