# 使用官方 Python 镜像
FROM python:3.12.6-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件
COPY . .

# 安装依赖
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# 暴露端口
EXPOSE 8000

# 设置环境变量
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 启动命令
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
