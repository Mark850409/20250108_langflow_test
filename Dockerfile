# 使用官方 Python 基礎映像
FROM python:3.9-slim

# 設置工作目錄
WORKDIR /app

# 複製需求檔案並安裝依賴
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 複製應用程式檔案
COPY . .

# 暴露服務埠（默認 8080）
EXPOSE 8080

# 啟動 LangFlow
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "8080"]
